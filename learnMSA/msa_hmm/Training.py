import tensorflow as tf
from tensorflow.python.client import device_lib
import numpy as np
from learnMSA.msa_hmm.MsaHmmCell import MsaHmmCell
from learnMSA.msa_hmm.MsaHmmLayer import MsaHmmLayer
from learnMSA.msa_hmm.AncProbsLayer import AncProbsLayer
import learnMSA.msa_hmm.Utility as ut

# boilerplate code for model generation 
# in the following we test different models that only vary in the anc_probs_layer
def generic_model_generator(encoder_layers,
                            msa_hmm_layer):
    """A generic model generator function that can be used to construct an actual callback for the pipeline.
    Args:
        encoder_layers: A list of layers with compatible inputs and outputs and the last output is compatible with msa_hmm_layer.
        msa_hmm_layer
    """
    sequences = tf.keras.Input(shape=(None,), name="sequences", dtype=tf.uint8)
    indices = tf.keras.Input(shape=(), name="indices", dtype=tf.int32)
    forward_seq = sequences
    for layer in encoder_layers:
        forward_seq = layer(forward_seq, indices)
    loglik = msa_hmm_layer(forward_seq)
    model = tf.keras.Model(inputs=[sequences, indices], 
                        outputs=[tf.keras.layers.Lambda(lambda x: x, name="loglik")(loglik)])
    return model

def make_msa_hmm_layer(effective_num_seq,
                                model_length, 
                                config,
                                alphabet_size=25):
    """Constructs a cell and a MSA HMM layer given a config.
    """
    msa_hmm_cell = MsaHmmCell(model_length,    
                              kernel_dim = alphabet_size if config["kernel_dim"] == "alphabet_size" else config["kernel_dim"], 
                              emission_init = config["emission_init"],
                              transition_init = config["transition_init"],
                              insertion_init = config["insertion_init"],
                              flank_init = config["flank_init"],
                              alpha_flank = config["alpha_flank"],
                              alpha_single = config["alpha_single"],
                              alpha_frag = config["alpha_frag"],
                              emission_func = config["emission_func"],
                              emission_matrix_generator = config["emission_matrix_generator"],
                              emission_prior = config["emission_prior"], 
                              frozen_insertions = config["frozen_insertions"])
    msa_hmm_layer = MsaHmmLayer(msa_hmm_cell, effective_num_seq)
    return msa_hmm_layer

def make_anc_probs_layer(num_seq, config):
    anc_probs_layer = AncProbsLayer(num_seq,
                                    config["num_rate_matrices"],
                                    frequencies=config["background_distribution"],
                                    rate_init=config["encoder_initializer"][0],
                                    exchangeability_init=config["encoder_initializer"][1],
                                    trainable_exchangeabilities=config["trainable_exchangeabilities"],
                                    per_matrix_rate=config["per_matrix_rate"],
                                     matrix_rate_init=config["encoder_initializer"][2] if len(config["encoder_initializer"]) > 2 else None,
                                     matrix_rate_l2=config["matrix_rate_l2"],
                                     shared_matrix=config["shared_rate_matrix"])
    return anc_probs_layer

def default_model_generator(num_seq,
                            effective_num_seq,
                            model_length, 
                            config,
                            alphabet_size=25):
    """A callback that constructs the default learnMSA model.
    Args:
        num_seq: The total number of sequences to align.
        effective_num_seq: The actual number of sequences currently used for training (model surgery might use only a subset).
        model_length: Length of the pHMM.
        config: Dictionary storing the configuration.
        alphabet_size: Number of symbols without the terminal symbol (i.e. 25 for amino acids).
    """
    msa_hmm_layer = make_msa_hmm_layer(effective_num_seq, model_length, config, alphabet_size)
    anc_probs_layer = make_anc_probs_layer(num_seq, config)
    model = generic_model_generator([anc_probs_layer], msa_hmm_layer)
    return model

                            
    
class DefaultBatchGenerator():
    def __init__(self, fasta_file, alphabet_size=25):
        self.fasta_file = fasta_file
        self.alphabet_size = alphabet_size
        
    def __call__(self, indices):
        max_len = np.max(self.fasta_file.seq_lens[indices])
        batch = np.zeros((indices.shape[0], max_len+1), dtype=np.uint8) + self.alphabet_size
        for i,j in enumerate(indices):
            batch[i, :self.fasta_file.seq_lens[j]] = self.fasta_file.get_raw_seq(j)
        return batch, indices
    
    def get_out_types(self):
        return (tf.uint8, tf.int64)  
    
    
class OnlySequencesBatchGenerator():
    def __init__(self, fasta_file, alphabet_size=25):
        self.fasta_file = fasta_file
        self.alphabet_size = alphabet_size
        
    def __call__(self, indices):
        max_len = np.max(self.fasta_file.seq_lens[indices])
        batch = np.zeros((indices.shape[0], max_len+1)) + self.alphabet_size
        for i,j in enumerate(indices):
            batch[i, :self.fasta_file.seq_lens[j]] = self.fasta_file.get_raw_seq(j)
        batch = tf.one_hot(batch, self.alphabet_size+1)
        return batch
    
    def get_out_types(self):
        return (tf.float32)  
        
          
# batch_generator is a callable object that maps a vector of sequence indices to
# inputs compatible with the model
def make_dataset(indices, batch_generator, batch_size=512, shuffle=True):   
    ds = tf.data.Dataset.from_tensor_slices(indices)
    if shuffle:
        ds = ds.shuffle(indices.size, reshuffle_each_iteration=True)
        ds = ds.repeat()
    ds = ds.batch(batch_size)
    ds = ds.map(lambda i: tf.numpy_function(func=batch_generator,
                inp=[i], Tout=batch_generator.get_out_types()),
                num_parallel_calls=tf.data.AUTOTUNE,
                deterministic=True)
    ds_y = tf.data.Dataset.from_tensor_slices(tf.zeros(1)).batch(batch_size).repeat()
    ds = tf.data.Dataset.zip((ds, ds_y))
    ds = ds.prefetch(tf.data.AUTOTUNE) #preprocessings and training steps in parallel
    return ds
    

def fit_model(model_generator,
              batch_generator,
              fasta_file,
              indices,
              model_length, 
              config,
              batch_size, 
              epochs,
              verbose=True):
    tf.keras.backend.clear_session() #frees occupied memory 
    tf.get_logger().setLevel('ERROR')
    optimizer = tf.optimizers.Adam(config["learning_rate"])
    if verbose:
        print("Fitting a model of length", model_length, "on", indices.shape[0], "sequences.")
        print("Batch size=", batch_size, "Learning rate=", config["learning_rate"])
    def make_and_compile():
        model = model_generator(num_seq=fasta_file.num_seq,
                                effective_num_seq=indices.shape[0],
                                model_length=model_length,
                                config=config)
        model.compile(optimizer=optimizer)
        return model
    num_gpu = len([x.name for x in device_lib.list_local_devices() if x.device_type == 'GPU']) 
    if verbose:
        print("Using", num_gpu, "GPUs.")
    if num_gpu > 1:       
        
        #workaround: https://github.com/tensorflow/tensorflow/issues/50487
        import atexit
        mirrored_strategy = tf.distribute.MirroredStrategy()    
        atexit.register(mirrored_strategy._extended._collective_ops._pool.close) # type: ignore
        
        with mirrored_strategy.scope():
            model = make_and_compile()
    else:
         model = make_and_compile()
    steps = max(10, int(100*np.sqrt(indices.shape[0])/batch_size))
    dataset = make_dataset(indices, 
                           batch_generator, 
                           batch_size,
                           shuffle=True)
    termiante_on_nan = tf.keras.callbacks.TerminateOnNaN()
    early_stopping = tf.keras.callbacks.EarlyStopping("loss", patience=1)
    callbacks = [termiante_on_nan, early_stopping]
    history = model.fit(dataset, 
                        epochs=epochs,
                        steps_per_epoch=steps,
                          callbacks=callbacks,
                        verbose = 2*int(verbose))
    tf.get_logger().setLevel('INFO')
    return model, history




