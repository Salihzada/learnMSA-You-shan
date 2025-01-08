from learnMSA.msa_hmm.Emitter import ProfileHMMEmitter
from learnMSA.msa_hmm.Utility import get_num_states
import learnMSA.msa_hmm.Initializers as initializers
import numpy as np
import sys
import tensorflow as tf
import copy

# tmp include
sys.path.insert(0, "../TensorTree")
import tensortree 

tensortree.set_backend("tensorflow")


r""" A special emitter when the observations are related by a tree.
    The tree contains each input sequence as a leaf and assumes that there are no other leaves.
    The ancestral tree is the remaining tree when pruning all leaves. Its nodes are the ancestral nodes.

    Current assumptions/limitations:
    1 Only full leaf sets are supported (no backbone support).
    2 Sequences are only allowed to connect to the leaves of the ancestral tree ("cluster trees"). 
    3 The topology is fixed during the whole alignment process. 

    E.g.

    Fasta:                  Tree:
    >A                          R
    ..                        /  \
    >B                       U   V
    ..                      / \ / \
    >C                      A B C D
    ..
    >D
    ..

    Then the tree U - R - V is the ancestral tree.
    
    The tree emitter models amino acid distributions at the leaves of the ancestral tree.
    The emission probabilities are computed based on which ancestral leaf each sequence is connected to.

    Auxiliary loss:
    The tree emitter adds an auxiliary loss that maximizes the likelihood of the ancestral tree.
"""
class TreeEmitter(ProfileHMMEmitter): 

    def __init__(self, 
                 tree_handler : tensortree.TreeHandler,
                 emission_init = initializers.make_default_emission_init(),
                 insertion_init = initializers.make_default_insertion_init(),
                 prior = None,
                 tree_loss_weight = 0.1):
        super(TreeEmitter, self).__init__(emission_init, insertion_init, 
                                          prior, frozen_insertions=True)
        self.ancestral_tree_handler = copy.deepcopy(tree_handler)
        self.ancestral_tree_handler.prune()
        self.ancestral_tree_handler.update()
        # the tree handler defines both the mapping of the sequences (leaves) 
        # to the ancestral nodes and the ancestral topology
        
        # relies on assumption 2
        # todo: make this more general; allow connections to internal ancestral nodes
        self.cluster_indices = tree_handler.get_parent_indices_by_height(0)
        self.cluster_indices -= tree_handler.num_leaves # indices are sorted by height
        self.num_clusters = np.unique(self.cluster_indices).size
        self.tree_loss_weight = tree_loss_weight
        self.rate_matrix, self.equilibrium = _make_default_rate_matrix()


    def set_lengths(self, lengths):
        super(TreeEmitter, self).set_lengths(lengths)
        branch_lengths = np.concatenate([self.ancestral_tree_handler.branch_lengths]*self.num_models, axis=1)
        self.ancestral_tree_handler.set_branch_lengths(branch_lengths)

    
    def build(self, input_shape):
        if self.built:
            return
        s = input_shape[-1]-1 # substract one for terminal symbol
        self.emission_kernel = [self.add_weight(
                                        shape=(length, self.num_clusters, s), 
                                        initializer=init, 
                                        name="emission_kernel_"+str(i)) 
                                    for i,(length, init) in enumerate(zip(self.lengths, self.emission_init))]
        self.insertion_kernel = [ self.add_weight(
                                shape=(self.num_clusters, s),
                                initializer=init,
                                name="insertion_kernel_"+str(i),
                                trainable=not self.frozen_insertions) 
                                    for i,init in enumerate(self.insertion_init)]
        if self.prior is not None:
            self.prior.build()
        self.built = True


    def recurrent_init(self):
        self.B = self.make_B()
        self.B_transposed = tf.transpose(self.B, [0,2,3,1])


    def call(self, inputs, indices, end_hints=None, training=False):
        """ 
        Args: 
                inputs: A tensor of shape (num_models, b, L , s) 
                indices: A tensor of shape (num_models, b) that contains the index of each input sequence.
        Returns:
                A tensor with emission probabilities of shape (num_models, b, L, q) where "..." is identical to inputs.
        """
        input_shape = tf.shape(inputs)
        B = self.B_transposed[..., :input_shape[-1], :]
        # we have to select the correct entry from the second dimension of B
        # for each input sequence
        cluster_indices = tf.gather(self.cluster_indices, indices)
        B = tf.gather(B, cluster_indices, batch_dims=1)
        return self._compute_emission_probs(inputs, B, input_shape, B_contains_batch=True)
    

    # computes the likelihood of the ancestral tree
    def get_aux_loss(self):

        # compute the likelihood of the ancestral tree with TensorTree
        leaves = tf.transpose(self.B, [2,0,1,3])
        leaves = leaves[..., :20] # only consider standard amino acids
        leaves /= tf.math.maximum(tf.reduce_sum(leaves, axis=-1, keepdims=True), 1e-16) #re-normalize
        tree_handler = self.ancestral_tree_handler
        branch_lengths = self.ancestral_tree_handler.branch_lengths
        anc_loglik = tensortree.model.loglik(leaves, tree_handler, self.rate_matrix, branch_lengths, tf.math.log(self.equilibrium))
        
        #mask out padding states
        mask = tf.cast(tf.sequence_mask(get_num_states(self.lengths)), anc_loglik.dtype)
        anc_loglik = tf.reduce_sum(anc_loglik * mask, axis=1)

        loss = -self.tree_loss_weight * tf.reduce_mean(anc_loglik)

        return loss
    

def _make_default_rate_matrix(num_models=1):
    R, p = tensortree.substitution_models.LG()
    R = R[tf.newaxis]
    p = p[tf.newaxis]
    Q = tensortree.backend.make_rate_matrix(R, p)
    return Q, p