�
��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
l
BatchMatMulV2
x"T
y"T
output"T"
Ttype:
2		"
adj_xbool( "
adj_ybool( 
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
�
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring �
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718��
�
"transition_kernel_begin_to_match_0VarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"transition_kernel_begin_to_match_0
�
6transition_kernel_begin_to_match_0/Read/ReadVariableOpReadVariableOp"transition_kernel_begin_to_match_0*
_output_shapes
: *
dtype0
�
 transition_kernel_match_to_end_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" transition_kernel_match_to_end_1
�
4transition_kernel_match_to_end_1/Read/ReadVariableOpReadVariableOp transition_kernel_match_to_end_1*
_output_shapes
: *
dtype0
�
"transition_kernel_match_to_match_2VarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"transition_kernel_match_to_match_2
�
6transition_kernel_match_to_match_2/Read/ReadVariableOpReadVariableOp"transition_kernel_match_to_match_2*
_output_shapes
:*
dtype0
�
#transition_kernel_match_to_insert_3VarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#transition_kernel_match_to_insert_3
�
7transition_kernel_match_to_insert_3/Read/ReadVariableOpReadVariableOp#transition_kernel_match_to_insert_3*
_output_shapes
:*
dtype0
�
#transition_kernel_insert_to_match_4VarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#transition_kernel_insert_to_match_4
�
7transition_kernel_insert_to_match_4/Read/ReadVariableOpReadVariableOp#transition_kernel_insert_to_match_4*
_output_shapes
:*
dtype0
�
$transition_kernel_insert_to_insert_5VarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$transition_kernel_insert_to_insert_5
�
8transition_kernel_insert_to_insert_5/Read/ReadVariableOpReadVariableOp$transition_kernel_insert_to_insert_5*
_output_shapes
:*
dtype0
�
#transition_kernel_match_to_delete_6VarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#transition_kernel_match_to_delete_6
�
7transition_kernel_match_to_delete_6/Read/ReadVariableOpReadVariableOp#transition_kernel_match_to_delete_6*
_output_shapes
: *
dtype0
�
#transition_kernel_delete_to_match_7VarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#transition_kernel_delete_to_match_7
�
7transition_kernel_delete_to_match_7/Read/ReadVariableOpReadVariableOp#transition_kernel_delete_to_match_7*
_output_shapes
: *
dtype0
�
$transition_kernel_delete_to_delete_8VarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$transition_kernel_delete_to_delete_8
�
8transition_kernel_delete_to_delete_8/Read/ReadVariableOpReadVariableOp$transition_kernel_delete_to_delete_8*
_output_shapes
:*
dtype0
�
#transition_kernel_left_flank_loop_9VarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#transition_kernel_left_flank_loop_9
�
7transition_kernel_left_flank_loop_9/Read/ReadVariableOpReadVariableOp#transition_kernel_left_flank_loop_9*
_output_shapes
:*
dtype0
�
$transition_kernel_left_flank_exit_10VarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$transition_kernel_left_flank_exit_10
�
8transition_kernel_left_flank_exit_10/Read/ReadVariableOpReadVariableOp$transition_kernel_left_flank_exit_10*
_output_shapes
:*
dtype0
�
-transition_kernel_unannotated_segment_loop_11VarHandleOp*
_output_shapes
: *
dtype0*
shape:*>
shared_name/-transition_kernel_unannotated_segment_loop_11
�
Atransition_kernel_unannotated_segment_loop_11/Read/ReadVariableOpReadVariableOp-transition_kernel_unannotated_segment_loop_11*
_output_shapes
:*
dtype0
�
-transition_kernel_unannotated_segment_exit_12VarHandleOp*
_output_shapes
: *
dtype0*
shape:*>
shared_name/-transition_kernel_unannotated_segment_exit_12
�
Atransition_kernel_unannotated_segment_exit_12/Read/ReadVariableOpReadVariableOp-transition_kernel_unannotated_segment_exit_12*
_output_shapes
:*
dtype0
�
/transition_kernel_end_to_unannotated_segment_15VarHandleOp*
_output_shapes
: *
dtype0*
shape:*@
shared_name1/transition_kernel_end_to_unannotated_segment_15
�
Ctransition_kernel_end_to_unannotated_segment_15/Read/ReadVariableOpReadVariableOp/transition_kernel_end_to_unannotated_segment_15*
_output_shapes
:*
dtype0
�
'transition_kernel_end_to_right_flank_16VarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'transition_kernel_end_to_right_flank_16
�
;transition_kernel_end_to_right_flank_16/Read/ReadVariableOpReadVariableOp'transition_kernel_end_to_right_flank_16*
_output_shapes
:*
dtype0
�
$transition_kernel_end_to_terminal_17VarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$transition_kernel_end_to_terminal_17
�
8transition_kernel_end_to_terminal_17/Read/ReadVariableOpReadVariableOp$transition_kernel_end_to_terminal_17*
_output_shapes
:*
dtype0
p
init_logit_0VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameinit_logit_0
i
 init_logit_0/Read/ReadVariableOpReadVariableOpinit_logit_0*
_output_shapes
:*
dtype0
�
"DirichletMixtureLayer/alpha_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*3
shared_name$"DirichletMixtureLayer/alpha_kernel
�
6DirichletMixtureLayer/alpha_kernel/Read/ReadVariableOpReadVariableOp"DirichletMixtureLayer/alpha_kernel*
_output_shapes

:*
dtype0
�
 DirichletMixtureLayer/mix_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" DirichletMixtureLayer/mix_kernel
�
4DirichletMixtureLayer/mix_kernel/Read/ReadVariableOpReadVariableOp DirichletMixtureLayer/mix_kernel*
_output_shapes
:*
dtype0
�
"DirichletMixtureLayer/gamma_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"DirichletMixtureLayer/gamma_kernel
�
6DirichletMixtureLayer/gamma_kernel/Read/ReadVariableOpReadVariableOp"DirichletMixtureLayer/gamma_kernel*
_output_shapes
:*
dtype0
�
!DirichletMixtureLayer/beta_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!DirichletMixtureLayer/beta_kernel
�
5DirichletMixtureLayer/beta_kernel/Read/ReadVariableOpReadVariableOp!DirichletMixtureLayer/beta_kernel*
_output_shapes
:*
dtype0
�
#DirichletMixtureLayer/lambda_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#DirichletMixtureLayer/lambda_kernel
�
7DirichletMixtureLayer/lambda_kernel/Read/ReadVariableOpReadVariableOp#DirichletMixtureLayer/lambda_kernel*
_output_shapes
:*
dtype0
�
'DirichletMixtureLayer/background_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'DirichletMixtureLayer/background_kernel
�
;DirichletMixtureLayer/background_kernel/Read/ReadVariableOpReadVariableOp'DirichletMixtureLayer/background_kernel*
_output_shapes
:*
dtype0
�
$DirichletMixtureLayer/alpha_kernel_1VarHandleOp*
_output_shapes
: *
dtype0*
shape
:*5
shared_name&$DirichletMixtureLayer/alpha_kernel_1
�
8DirichletMixtureLayer/alpha_kernel_1/Read/ReadVariableOpReadVariableOp$DirichletMixtureLayer/alpha_kernel_1*
_output_shapes

:*
dtype0
�
"DirichletMixtureLayer/mix_kernel_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"DirichletMixtureLayer/mix_kernel_1
�
6DirichletMixtureLayer/mix_kernel_1/Read/ReadVariableOpReadVariableOp"DirichletMixtureLayer/mix_kernel_1*
_output_shapes
:*
dtype0
�
$DirichletMixtureLayer/gamma_kernel_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$DirichletMixtureLayer/gamma_kernel_1
�
8DirichletMixtureLayer/gamma_kernel_1/Read/ReadVariableOpReadVariableOp$DirichletMixtureLayer/gamma_kernel_1*
_output_shapes
:*
dtype0
�
#DirichletMixtureLayer/beta_kernel_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#DirichletMixtureLayer/beta_kernel_1
�
7DirichletMixtureLayer/beta_kernel_1/Read/ReadVariableOpReadVariableOp#DirichletMixtureLayer/beta_kernel_1*
_output_shapes
:*
dtype0
�
%DirichletMixtureLayer/lambda_kernel_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%DirichletMixtureLayer/lambda_kernel_1
�
9DirichletMixtureLayer/lambda_kernel_1/Read/ReadVariableOpReadVariableOp%DirichletMixtureLayer/lambda_kernel_1*
_output_shapes
:*
dtype0
�
)DirichletMixtureLayer/background_kernel_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*:
shared_name+)DirichletMixtureLayer/background_kernel_1
�
=DirichletMixtureLayer/background_kernel_1/Read/ReadVariableOpReadVariableOp)DirichletMixtureLayer/background_kernel_1*
_output_shapes
:*
dtype0
�
$DirichletMixtureLayer/alpha_kernel_2VarHandleOp*
_output_shapes
: *
dtype0*
shape
:*5
shared_name&$DirichletMixtureLayer/alpha_kernel_2
�
8DirichletMixtureLayer/alpha_kernel_2/Read/ReadVariableOpReadVariableOp$DirichletMixtureLayer/alpha_kernel_2*
_output_shapes

:*
dtype0
�
"DirichletMixtureLayer/mix_kernel_2VarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"DirichletMixtureLayer/mix_kernel_2
�
6DirichletMixtureLayer/mix_kernel_2/Read/ReadVariableOpReadVariableOp"DirichletMixtureLayer/mix_kernel_2*
_output_shapes
:*
dtype0
�
$DirichletMixtureLayer/gamma_kernel_2VarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$DirichletMixtureLayer/gamma_kernel_2
�
8DirichletMixtureLayer/gamma_kernel_2/Read/ReadVariableOpReadVariableOp$DirichletMixtureLayer/gamma_kernel_2*
_output_shapes
:*
dtype0
�
#DirichletMixtureLayer/beta_kernel_2VarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#DirichletMixtureLayer/beta_kernel_2
�
7DirichletMixtureLayer/beta_kernel_2/Read/ReadVariableOpReadVariableOp#DirichletMixtureLayer/beta_kernel_2*
_output_shapes
:*
dtype0
�
%DirichletMixtureLayer/lambda_kernel_2VarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%DirichletMixtureLayer/lambda_kernel_2
�
9DirichletMixtureLayer/lambda_kernel_2/Read/ReadVariableOpReadVariableOp%DirichletMixtureLayer/lambda_kernel_2*
_output_shapes
:*
dtype0
�
)DirichletMixtureLayer/background_kernel_2VarHandleOp*
_output_shapes
: *
dtype0*
shape:*:
shared_name+)DirichletMixtureLayer/background_kernel_2
�
=DirichletMixtureLayer/background_kernel_2/Read/ReadVariableOpReadVariableOp)DirichletMixtureLayer/background_kernel_2*
_output_shapes
:*
dtype0
��
ConstConst*"
_output_shapes
:CC*
dtype0*ǌ
value��B��CC"����5?>yFa<�v�;�յ;V�;���;y�;�_�;��;轑;@��;���;H��;���;w��;[��;[��;R��;R��;R��;R��;R��;R��;R��;R��;R��;R��;R��;R��;R��;R��;R��;                                                                                                                            ?���%:��%        �4F?�!�=��<Q�<z@t;Ֆ�:q4�9��9�Rf8Zȡ7���6F�6�GA5Ҁ�4���3Z 3��k2>��1��1D�p0���/�/�9.�k�-���,�E,��+��+-�Z*@�)bh)
��=                                                                                                                        �&�5��<3�<            �4F? �=�~�<��/<��U;I�:���9s�%9��h8lq�7�k�676��\5�,�4q��3ͨ)3C�2��1�]-1"��0B��/%2/�
d.O��-D-��q,H�+a�+նd*���)    
��=                                                                                                                    �&�5��<3�<                �4F?%��=���<�a<�6^;$r�:ϙ�9��9bj48MC�7���6H6N�S5�~�4z��3<.I3M�z2F��1�-11�·0+׮/��/�;i.��-��-�,���+�+���*        
��=                                                                                                                �&�5��<3�<                    �4F?ju�=�¯<�<�6;h8�:�]�9L��8T�:8��d7ܒ�6�q6Ǭ=5dj�4���3%�3Fv�2���1l*1d�Z0�c�/�/x�i.Z��-T�'-jw�,]�+s(+            
��=                                                                                                            �&�5��<3�<                        �4F?%K�=v��<K#<�)P;�7�:G��9�95�.8��7Sd�6��6�U5�t�4��3��Y3�~�2��2�A'1�-�0b�/��2/��.�$ .��E-왏,� ,                
��=                                                                                                        �&�5��<3�<                            �4F?M�=վ�<K�
<h2C;�gf:ɞ�93�8598�7�x�6�46&v�5�4$P4JEb3�o�2�H�1$?1��0T}�/��J/��.�.<�?-ҫ,                    
��=                                                                                                    �&�5��<3�<                                �4F?c�=6��<��<��);K��:<�9ޅ9D*G88��7K��6c=6V�k5;�4��&4�3L��2��2��[1�̯0�}0�3|/��.�O.EO}-                        
��=                                                                                                �&�5��<3�<                                    �4F?�X�=���<pb�;��A;I:m:h�9{m	9�D8���7:�7��"6�ғ5�-�4�n04W$c3Qq�2l�2�r1�M�0.0�V�/��.��..                            
��=                                                                                            �&�5��<3�<                                        �4F?�H�=<}�<��<ő-;aى:��9��9��S8:�78F�6�OX6�i�5y5�0&4�C�3ű�2Á12��1���0e�D0A��/>��.                                
��=                                                                                        �&�5��<3�<                                            �4F?n��=c�<*2<F(U;6{�:��9��#9ٓ89�7>'7z5�6��5�} 5|�[4wg�3�=	3�gi2x��1}�1\�\0��/                                    
��=                                                                                    �&�5��<3�<                                                �4F?ke�=>m�<S<�@K;_��:���9�EA9��p8p��7�6*7x�6���5��5`4h�3�31��2֮�1%61�@�0                                        
��=                                                                                �&�5��<3�<                                                    �4F?v
�=���<�<�[;�	�:?y:�C59���80 8sgD7��|6t�5Ǧ(5U	�4i��3�A3���2a�1�B1                                            
��=                                                                            �&�5��<3�<                                                        �4F?$.�=P��<�A<�Q;j�:�c�9~�U9�_�8��7�-$7��6��5�[/5��4���33B3��2���1                                                
��=                                                                        �&�5��<3�<                                                            �4F?�ʇ=�x�<��<* �;��:z:�pc9*U�8gp�7	!@7沕6��5v�K5��4y�4 �@3u��2                                                    
��=                                                                    �&�5��<7�<                                                                �4F?�E�=Lr�<@�/<��Z;��:q�:V&m9̧�8�8��K7�6��
6��i5���4�4��j3                                                        
��=                                                                �&�5��<C�<                                                                    �4F?^7}=<��<��<�_�;�s�:�i:X�F9-�8�8�TT7���6@N6e%k5z��4��4                                                            
��=                                                            �&�5��<]�<                                                                        �4F?9]�=㦭<^�<�yu;�'�:/<�9�\O9���8�]8N\7q��6�C6n�O5<g�4                                                                
��=                                                        '�5.�<��<                                                                            �4F?�kw=���<��.<�;⑬:�:�4f9HR�8�8�6�7O �6�)6˄5                                                                    
��=                                                    �'�5��<[�<                                                                                �4F?~�=�N�<a"<ƕK;�F�:�:�rY9��8��8�p7sʮ6Z�6                                                                        
��=                                                �)�5w�<�<                                                                                    �4F?��=>{�< �<N�c;N�:�:qq9֩�8	88;d7���6                                                                            
��=                                            ~.�5��<T�<                                                                                        �4F?Y��=�Q�<�<��m;bv�:��!:l��9T��8=88�7                                                                                
��=                                        �;�5��<V�<                                                                                            �4F?�8{=1�<�'<
*�;�,�:�x@:l��9t��8iQA8                                                                                    
��=                                    �a�5��<�<                                                                                                �4F?Ў�=_��<Ц!<v�;���:F3:���9���8                                                                                        
��=                                ���5�A<<                                                                                                    �4F?�~=���<=M-<m/�;f��:��#:�Ӓ9                                                                                            
��=                            j��5_<��<                                                                                                        �4F?�3z=���<Bx3<把;_�:0B4:                                                                                                
��=                        ~��5��<��<                                                                                                            �4F?V�~=W�<7�%<��p;F��:                                                                                                    
��=                    'q�5� 
<\"<                                                                                                                �4F?A�=X0�<65<�Մ;                                                                                                        
��=                ��5y�<� <                                                                                                                    �4F??�=���<]�,<                                                                                                            
��=            IE�5��1<$�5<                                                                                                                        �4F?�G}=��<                                                                                                                
��=        �L6��~<7�<                                                                                                                            �4F?�[�=                                                                                                                    
��=    i�s6�n�<9$�<                                                                                                                                �4F?                                                                                                                        
��=��	7�u=�hz=                                                                                                                                                                                                                                                                �{�8;:�>n^?        r%?                                                                                                                        ��>                                                                                                                                                s�?                                                                                                                        )�>                                                                                                                                                �]!?                                                                                                                        sD�>                                                                                                                                                +� ?                                                                                                                        �e�>                                                                                                                                                ��?                                                                                                                        �B�>                                                                                                                                                6g.?                                                                                                                        �1�>                                                                                                                                                �1?                                                                                                                        ���>                                                                                                                                                tn?                                                                                                                        #�>                                                                                                                                                ��?                                                                                                                        ���>                                                                                                                                                �l?                                                                                                                        �&�>                                                                                                                                                �*?                                                                                                                        ���>                                                                                                                                                @�1?                                                                                                                        ќ>                                                                                                                                                T�?                                                                                                                        X]�>                                                                                                                                                ��%?                                                                                                                        �δ>                                                                                                                                                �q?                                                                                                                        l�>                                                                                                                                                FF(?                                                                                                                        ps�>                                                                                                                                                ->?                                                                                                                        ���>                                                                                                                                                ac?                                                                                                                        ?9�>                                                                                                                                                ��?                                                                                                                        ��>                                                                                                                                                /E+?                                                                                                                        �u�>                                                                                                                                                +!?                                                                                                                        Ω�>                                                                                                                                                �G?                                                                                                                        �p�>                                                                                                                                                �d?                                                                                                                        r6�>                                                                                                                                                =('?                                                                                                                        ���>                                                                                                                                                +?                                                                                                                        ���>                                                                                                                                                �'?                                                                                                                        ��>                                                                                                                                                =?                                                                                                                        ���>                                                                                                                                                �V"?                                                                                                                        S�>                                                                                                                                                ��?                                                                                                                        &P�>                                                                                                                                                � ?                                                                                                                        ���>                                                                                                                                                � ?                                                                                                                        ���>                ��>f<d<*i<�9�;]�;���;Ai�;L�;{Γ;@��;g��;���;V��;���;���;f��;f��;^��;^��;^��;^��;^��;^��;^��;^��;^��;^��;^��;^��;^��;^��;^��;                                                                                                                            ��4?���%�<�%                                                                                                                                                                                                                                                                    ��5?�~�>                                                                                                                                                                                                                                                                          �?

NoOpNoOp
�M
Const_1Const"/device:CPU:0*
_output_shapes
: *
dtype0*�L
value�LB�L B�L
�
layer-0
layer_with_weights-0
layer-1
regularization_losses
trainable_variables
	variables
	keras_api

signatures
 
�	
transition_init
	
flank_init
	
prior
frozen_kernels

length

num_states
num_states_implicit
$ explicit_transition_kernel_parts
implicit_transition_parts
&"sparse_transition_indices_implicit
&"sparse_transition_indices_explicit
transition_kernel
&"transition_kernel_begin_to_match_0
$ transition_kernel_match_to_end_1
&"transition_kernel_match_to_match_2
'#transition_kernel_match_to_insert_3
'#transition_kernel_insert_to_match_4
($transition_kernel_insert_to_insert_5
'#transition_kernel_match_to_delete_6
'#transition_kernel_delete_to_match_7
($transition_kernel_delete_to_delete_8
'#transition_kernel_left_flank_loop_9
($transition_kernel_left_flank_exit_10
1-transition_kernel_unannotated_segment_loop_11
1 -transition_kernel_unannotated_segment_exit_12
3!/transition_kernel_end_to_unannotated_segment_15
+"'transition_kernel_end_to_right_flank_16
(#$transition_kernel_end_to_terminal_17
$init_logit_0
%flank_init_kernel
&implicit_log_probs
'	log_probs
	(probs
)regularization_losses
*trainable_variables
+	variables
,	keras_api
 
~
0
1
2
3
4
5
6
7
8
9
10
11
 12
!13
"14
#15
$16
�
0
1
2
3
4
5
6
7
8
9
10
11
 12
!13
"14
#15
$16
-17
.18
/19
020
121
222
323
424
525
626
727
828
929
:30
;31
<32
=33
>34
�
?metrics
@layer_metrics

Alayers
regularization_losses
Bnon_trainable_variables
trainable_variables
Clayer_regularization_losses
	variables
 

D0
 
P
Ematch_dirichlet
Finsert_dirichlet
Gdelete_dirichlet
H	keras_api
 
 
 
 

I0

J0

K0

L0

M0
��
VARIABLE_VALUE"transition_kernel_begin_to_match_0Rlayer_with_weights-0/transition_kernel_begin_to_match_0/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE transition_kernel_match_to_end_1Player_with_weights-0/transition_kernel_match_to_end_1/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE"transition_kernel_match_to_match_2Rlayer_with_weights-0/transition_kernel_match_to_match_2/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE#transition_kernel_match_to_insert_3Slayer_with_weights-0/transition_kernel_match_to_insert_3/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE#transition_kernel_insert_to_match_4Slayer_with_weights-0/transition_kernel_insert_to_match_4/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE$transition_kernel_insert_to_insert_5Tlayer_with_weights-0/transition_kernel_insert_to_insert_5/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE#transition_kernel_match_to_delete_6Slayer_with_weights-0/transition_kernel_match_to_delete_6/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE#transition_kernel_delete_to_match_7Slayer_with_weights-0/transition_kernel_delete_to_match_7/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE$transition_kernel_delete_to_delete_8Tlayer_with_weights-0/transition_kernel_delete_to_delete_8/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE#transition_kernel_left_flank_loop_9Slayer_with_weights-0/transition_kernel_left_flank_loop_9/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE$transition_kernel_left_flank_exit_10Tlayer_with_weights-0/transition_kernel_left_flank_exit_10/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE-transition_kernel_unannotated_segment_loop_11]layer_with_weights-0/transition_kernel_unannotated_segment_loop_11/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE-transition_kernel_unannotated_segment_exit_12]layer_with_weights-0/transition_kernel_unannotated_segment_exit_12/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE/transition_kernel_end_to_unannotated_segment_15_layer_with_weights-0/transition_kernel_end_to_unannotated_segment_15/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE'transition_kernel_end_to_right_flank_16Wlayer_with_weights-0/transition_kernel_end_to_right_flank_16/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE$transition_kernel_end_to_terminal_17Tlayer_with_weights-0/transition_kernel_end_to_terminal_17/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUEinit_logit_0<layer_with_weights-0/init_logit_0/.ATTRIBUTES/VARIABLE_VALUE

$0

N0

O0

P0
 
~
0
1
2
3
4
5
6
7
8
9
10
11
 12
!13
"14
#15
$16
�
0
1
2
3
4
5
6
7
8
9
10
11
 12
!13
"14
#15
$16
-17
.18
/19
020
121
222
323
424
525
626
727
828
929
:30
;31
<32
=33
>34
�
Qmetrics
Rlayer_metrics

Slayers
)regularization_losses
Tnon_trainable_variables
*trainable_variables
Ulayer_regularization_losses
+	variables
_]
VARIABLE_VALUE"DirichletMixtureLayer/alpha_kernel'variables/17/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUE DirichletMixtureLayer/mix_kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE"DirichletMixtureLayer/gamma_kernel'variables/19/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUE!DirichletMixtureLayer/beta_kernel'variables/20/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUE#DirichletMixtureLayer/lambda_kernel'variables/21/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUE'DirichletMixtureLayer/background_kernel'variables/22/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE$DirichletMixtureLayer/alpha_kernel_1'variables/23/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE"DirichletMixtureLayer/mix_kernel_1'variables/24/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE$DirichletMixtureLayer/gamma_kernel_1'variables/25/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUE#DirichletMixtureLayer/beta_kernel_1'variables/26/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUE%DirichletMixtureLayer/lambda_kernel_1'variables/27/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUE)DirichletMixtureLayer/background_kernel_1'variables/28/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE$DirichletMixtureLayer/alpha_kernel_2'variables/29/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE"DirichletMixtureLayer/mix_kernel_2'variables/30/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE$DirichletMixtureLayer/gamma_kernel_2'variables/31/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUE#DirichletMixtureLayer/beta_kernel_2'variables/32/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUE%DirichletMixtureLayer/lambda_kernel_2'variables/33/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUE)DirichletMixtureLayer/background_kernel_2'variables/34/.ATTRIBUTES/VARIABLE_VALUE
 
 

0
1
�
-0
.1
/2
03
14
25
36
47
58
69
710
811
912
:13
;14
<15
=16
>17
 
 
�
-alpha_kernel
.
mix_kernel
/gamma_kernel
0beta_kernel
1lambda_kernel
2background_kernel
Vregularization_losses
Wtrainable_variables
X	variables
Y	keras_api
�
3alpha_kernel
4
mix_kernel
5gamma_kernel
6beta_kernel
7lambda_kernel
8background_kernel
Zregularization_losses
[trainable_variables
\	variables
]	keras_api
�
9alpha_kernel
:
mix_kernel
;gamma_kernel
<beta_kernel
=lambda_kernel
>background_kernel
^regularization_losses
_trainable_variables
`	variables
a	keras_api
 
 
 
�
bleft_flank_loop
cleft_flank_to_right_flank
%d!left_flank_to_unannotated_segment
eleft_flank_to_terminal
funannotated_segment_loop
&g"unannotated_segment_to_right_flank
#hunannotated_segment_to_terminal
iright_flank_loop
jright_flank_exit
kterminal_self_loop
�
lleft_flank_loop
mleft_flank_exit
nunannotated_segment_loop
ounannotated_segment_exit
pright_flank_loop
qright_flank_exit
rend_to_unannotated_segment
send_to_right_flank
tend_to_terminal
�
begin_to_match
match_to_end
match_to_match
match_to_insert
insert_to_match
insert_to_insert
match_to_delete
delete_to_match
delete_to_delete
left_flank_loop
left_flank_exit
unannotated_segment_loop
 unannotated_segment_exit
right_flank_loop
right_flank_exit
!end_to_unannotated_segment
"end_to_right_flank
#end_to_terminal
 
 
 
 
 


0
�
-0
.1
/2
03
14
25
36
47
58
69
710
811
912
:13
;14
<15
=16
>17
 
 
 
*
-0
.1
/2
03
14
25
�
umetrics
vlayer_metrics

wlayers
Vregularization_losses
xnon_trainable_variables
Wtrainable_variables
ylayer_regularization_losses
X	variables
 
 
*
30
41
52
63
74
85
�
zmetrics
{layer_metrics

|layers
Zregularization_losses
}non_trainable_variables
[trainable_variables
~layer_regularization_losses
\	variables
 
 
*
90
:1
;2
<3
=4
>5
�
metrics
�layer_metrics
�layers
^regularization_losses
�non_trainable_variables
_trainable_variables
 �layer_regularization_losses
`	variables

�0

�0

�0

�0

�0

�0

�0

�0

�0

�0

�0

�0

�0

�0

�0

�0

�0

�0

�0
 
 
 
*
-0
.1
/2
03
14
25
 
 
 
 
*
30
41
52
63
74
85
 
 
 
 
*
90
:1
;2
<3
=4
>5
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
�
serving_default_input_11Placeholder*+
_output_shapes
:��������� C*
dtype0* 
shape:��������� C
�
PartitionedCallPartitionedCallserving_default_input_11Const*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� C* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *,
f'R%
#__inference_signature_wrapper_12511
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCallStatefulPartitionedCallsaver_filename6transition_kernel_begin_to_match_0/Read/ReadVariableOp4transition_kernel_match_to_end_1/Read/ReadVariableOp6transition_kernel_match_to_match_2/Read/ReadVariableOp7transition_kernel_match_to_insert_3/Read/ReadVariableOp7transition_kernel_insert_to_match_4/Read/ReadVariableOp8transition_kernel_insert_to_insert_5/Read/ReadVariableOp7transition_kernel_match_to_delete_6/Read/ReadVariableOp7transition_kernel_delete_to_match_7/Read/ReadVariableOp8transition_kernel_delete_to_delete_8/Read/ReadVariableOp7transition_kernel_left_flank_loop_9/Read/ReadVariableOp8transition_kernel_left_flank_exit_10/Read/ReadVariableOpAtransition_kernel_unannotated_segment_loop_11/Read/ReadVariableOpAtransition_kernel_unannotated_segment_exit_12/Read/ReadVariableOpCtransition_kernel_end_to_unannotated_segment_15/Read/ReadVariableOp;transition_kernel_end_to_right_flank_16/Read/ReadVariableOp8transition_kernel_end_to_terminal_17/Read/ReadVariableOp init_logit_0/Read/ReadVariableOp6DirichletMixtureLayer/alpha_kernel/Read/ReadVariableOp4DirichletMixtureLayer/mix_kernel/Read/ReadVariableOp6DirichletMixtureLayer/gamma_kernel/Read/ReadVariableOp5DirichletMixtureLayer/beta_kernel/Read/ReadVariableOp7DirichletMixtureLayer/lambda_kernel/Read/ReadVariableOp;DirichletMixtureLayer/background_kernel/Read/ReadVariableOp8DirichletMixtureLayer/alpha_kernel_1/Read/ReadVariableOp6DirichletMixtureLayer/mix_kernel_1/Read/ReadVariableOp8DirichletMixtureLayer/gamma_kernel_1/Read/ReadVariableOp7DirichletMixtureLayer/beta_kernel_1/Read/ReadVariableOp9DirichletMixtureLayer/lambda_kernel_1/Read/ReadVariableOp=DirichletMixtureLayer/background_kernel_1/Read/ReadVariableOp8DirichletMixtureLayer/alpha_kernel_2/Read/ReadVariableOp6DirichletMixtureLayer/mix_kernel_2/Read/ReadVariableOp8DirichletMixtureLayer/gamma_kernel_2/Read/ReadVariableOp7DirichletMixtureLayer/beta_kernel_2/Read/ReadVariableOp9DirichletMixtureLayer/lambda_kernel_2/Read/ReadVariableOp=DirichletMixtureLayer/background_kernel_2/Read/ReadVariableOpConst_1*0
Tin)
'2%*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *'
f"R 
__inference__traced_save_12730
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"transition_kernel_begin_to_match_0 transition_kernel_match_to_end_1"transition_kernel_match_to_match_2#transition_kernel_match_to_insert_3#transition_kernel_insert_to_match_4$transition_kernel_insert_to_insert_5#transition_kernel_match_to_delete_6#transition_kernel_delete_to_match_7$transition_kernel_delete_to_delete_8#transition_kernel_left_flank_loop_9$transition_kernel_left_flank_exit_10-transition_kernel_unannotated_segment_loop_11-transition_kernel_unannotated_segment_exit_12/transition_kernel_end_to_unannotated_segment_15'transition_kernel_end_to_right_flank_16$transition_kernel_end_to_terminal_17init_logit_0"DirichletMixtureLayer/alpha_kernel DirichletMixtureLayer/mix_kernel"DirichletMixtureLayer/gamma_kernel!DirichletMixtureLayer/beta_kernel#DirichletMixtureLayer/lambda_kernel'DirichletMixtureLayer/background_kernel$DirichletMixtureLayer/alpha_kernel_1"DirichletMixtureLayer/mix_kernel_1$DirichletMixtureLayer/gamma_kernel_1#DirichletMixtureLayer/beta_kernel_1%DirichletMixtureLayer/lambda_kernel_1)DirichletMixtureLayer/background_kernel_1$DirichletMixtureLayer/alpha_kernel_2"DirichletMixtureLayer/mix_kernel_2$DirichletMixtureLayer/gamma_kernel_2#DirichletMixtureLayer/beta_kernel_2%DirichletMixtureLayer/lambda_kernel_2)DirichletMixtureLayer/background_kernel_2*/
Tin(
&2$*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� **
f%R#
!__inference__traced_restore_12845��
�
_
6__inference_ProfileHMMTransitioner_layer_call_fn_12594

inputs
unknown
identity�
PartitionedCallPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� C* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *Z
fURS
Q__inference_ProfileHMMTransitioner_layer_call_and_return_conditional_losses_123532
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:��������� C2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:��������� C:CC:S O
+
_output_shapes
:��������� C
 
_user_specified_nameinputs:($
"
_output_shapes
:CC
�
�
C__inference_model_36_layer_call_and_return_conditional_losses_12419
input_11 
profilehmmtransitioner_12415
identity�
&ProfileHMMTransitioner/PartitionedCallPartitionedCallinput_11profilehmmtransitioner_12415*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� C* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *Z
fURS
Q__inference_ProfileHMMTransitioner_layer_call_and_return_conditional_losses_123532(
&ProfileHMMTransitioner/PartitionedCall�
IdentityIdentity/ProfileHMMTransitioner/PartitionedCall:output:0*
T0*+
_output_shapes
:��������� C2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:��������� C:CC:U Q
+
_output_shapes
:��������� C
"
_user_specified_name
input_11:($
"
_output_shapes
:CC
�
�
C__inference_model_36_layer_call_and_return_conditional_losses_12400

inputs 
profilehmmtransitioner_12396
identity�
&ProfileHMMTransitioner/PartitionedCallPartitionedCallinputsprofilehmmtransitioner_12396*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� C* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *Z
fURS
Q__inference_ProfileHMMTransitioner_layer_call_and_return_conditional_losses_123792(
&ProfileHMMTransitioner/PartitionedCall�
IdentityIdentity/ProfileHMMTransitioner/PartitionedCall:output:0*
T0*+
_output_shapes
:��������� C2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:��������� C:CC:S O
+
_output_shapes
:��������� C
 
_user_specified_nameinputs:($
"
_output_shapes
:CC
�
{
Q__inference_ProfileHMMTransitioner_layer_call_and_return_conditional_losses_12581

inputs
matmul_b
identityi
MatMulBatchMatMulV2inputsmatmul_b*
T0*+
_output_shapes
:��������� C2
MatMulg
IdentityIdentityMatMul:output:0*
T0*+
_output_shapes
:��������� C2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:��������� C:CC:S O
+
_output_shapes
:��������� C
 
_user_specified_nameinputs:($
"
_output_shapes
:CC
�
{
Q__inference_ProfileHMMTransitioner_layer_call_and_return_conditional_losses_12587

inputs
matmul_b
identityi
MatMulBatchMatMulV2inputsmatmul_b*
T0*+
_output_shapes
:��������� C2
MatMulg
IdentityIdentityMatMul:output:0*
T0*+
_output_shapes
:��������� C2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:��������� C:CC:S O
+
_output_shapes
:��������� C
 
_user_specified_nameinputs:($
"
_output_shapes
:CC
�
N
#__inference_signature_wrapper_12511
input_11
unknown
identity�
PartitionedCallPartitionedCallinput_11unknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� C* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *)
f$R"
 __inference__wrapped_model_123402
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:��������� C2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:��������� C:CC:U Q
+
_output_shapes
:��������� C
"
_user_specified_name
input_11:($
"
_output_shapes
:CC
ҟ
�
!__inference__traced_restore_12845
file_prefixA
3assignvariableop_transition_kernel_begin_to_match_0: A
3assignvariableop_1_transition_kernel_match_to_end_1: C
5assignvariableop_2_transition_kernel_match_to_match_2:D
6assignvariableop_3_transition_kernel_match_to_insert_3:D
6assignvariableop_4_transition_kernel_insert_to_match_4:E
7assignvariableop_5_transition_kernel_insert_to_insert_5:D
6assignvariableop_6_transition_kernel_match_to_delete_6: D
6assignvariableop_7_transition_kernel_delete_to_match_7: E
7assignvariableop_8_transition_kernel_delete_to_delete_8:D
6assignvariableop_9_transition_kernel_left_flank_loop_9:F
8assignvariableop_10_transition_kernel_left_flank_exit_10:O
Aassignvariableop_11_transition_kernel_unannotated_segment_loop_11:O
Aassignvariableop_12_transition_kernel_unannotated_segment_exit_12:Q
Cassignvariableop_13_transition_kernel_end_to_unannotated_segment_15:I
;assignvariableop_14_transition_kernel_end_to_right_flank_16:F
8assignvariableop_15_transition_kernel_end_to_terminal_17:.
 assignvariableop_16_init_logit_0:H
6assignvariableop_17_dirichletmixturelayer_alpha_kernel:B
4assignvariableop_18_dirichletmixturelayer_mix_kernel:D
6assignvariableop_19_dirichletmixturelayer_gamma_kernel:C
5assignvariableop_20_dirichletmixturelayer_beta_kernel:E
7assignvariableop_21_dirichletmixturelayer_lambda_kernel:I
;assignvariableop_22_dirichletmixturelayer_background_kernel:J
8assignvariableop_23_dirichletmixturelayer_alpha_kernel_1:D
6assignvariableop_24_dirichletmixturelayer_mix_kernel_1:F
8assignvariableop_25_dirichletmixturelayer_gamma_kernel_1:E
7assignvariableop_26_dirichletmixturelayer_beta_kernel_1:G
9assignvariableop_27_dirichletmixturelayer_lambda_kernel_1:K
=assignvariableop_28_dirichletmixturelayer_background_kernel_1:J
8assignvariableop_29_dirichletmixturelayer_alpha_kernel_2:D
6assignvariableop_30_dirichletmixturelayer_mix_kernel_2:F
8assignvariableop_31_dirichletmixturelayer_gamma_kernel_2:E
7assignvariableop_32_dirichletmixturelayer_beta_kernel_2:G
9assignvariableop_33_dirichletmixturelayer_lambda_kernel_2:K
=assignvariableop_34_dirichletmixturelayer_background_kernel_2:
identity_36��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*�
value�B�$BRlayer_with_weights-0/transition_kernel_begin_to_match_0/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/transition_kernel_match_to_end_1/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/transition_kernel_match_to_match_2/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-0/transition_kernel_match_to_insert_3/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-0/transition_kernel_insert_to_match_4/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/transition_kernel_insert_to_insert_5/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-0/transition_kernel_match_to_delete_6/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-0/transition_kernel_delete_to_match_7/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/transition_kernel_delete_to_delete_8/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-0/transition_kernel_left_flank_loop_9/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/transition_kernel_left_flank_exit_10/.ATTRIBUTES/VARIABLE_VALUEB]layer_with_weights-0/transition_kernel_unannotated_segment_loop_11/.ATTRIBUTES/VARIABLE_VALUEB]layer_with_weights-0/transition_kernel_unannotated_segment_exit_12/.ATTRIBUTES/VARIABLE_VALUEB_layer_with_weights-0/transition_kernel_end_to_unannotated_segment_15/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-0/transition_kernel_end_to_right_flank_16/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/transition_kernel_end_to_terminal_17/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-0/init_logit_0/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*[
valueRBP$B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::*2
dtypes(
&2$2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOp3assignvariableop_transition_kernel_begin_to_match_0Identity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp3assignvariableop_1_transition_kernel_match_to_end_1Identity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp5assignvariableop_2_transition_kernel_match_to_match_2Identity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp6assignvariableop_3_transition_kernel_match_to_insert_3Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp6assignvariableop_4_transition_kernel_insert_to_match_4Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp7assignvariableop_5_transition_kernel_insert_to_insert_5Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp6assignvariableop_6_transition_kernel_match_to_delete_6Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp6assignvariableop_7_transition_kernel_delete_to_match_7Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOp7assignvariableop_8_transition_kernel_delete_to_delete_8Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOp6assignvariableop_9_transition_kernel_left_flank_loop_9Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOp8assignvariableop_10_transition_kernel_left_flank_exit_10Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOpAassignvariableop_11_transition_kernel_unannotated_segment_loop_11Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOpAassignvariableop_12_transition_kernel_unannotated_segment_exit_12Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOpCassignvariableop_13_transition_kernel_end_to_unannotated_segment_15Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOp;assignvariableop_14_transition_kernel_end_to_right_flank_16Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOp8assignvariableop_15_transition_kernel_end_to_terminal_17Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16�
AssignVariableOp_16AssignVariableOp assignvariableop_16_init_logit_0Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17�
AssignVariableOp_17AssignVariableOp6assignvariableop_17_dirichletmixturelayer_alpha_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18�
AssignVariableOp_18AssignVariableOp4assignvariableop_18_dirichletmixturelayer_mix_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19�
AssignVariableOp_19AssignVariableOp6assignvariableop_19_dirichletmixturelayer_gamma_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20�
AssignVariableOp_20AssignVariableOp5assignvariableop_20_dirichletmixturelayer_beta_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21�
AssignVariableOp_21AssignVariableOp7assignvariableop_21_dirichletmixturelayer_lambda_kernelIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22�
AssignVariableOp_22AssignVariableOp;assignvariableop_22_dirichletmixturelayer_background_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23�
AssignVariableOp_23AssignVariableOp8assignvariableop_23_dirichletmixturelayer_alpha_kernel_1Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24�
AssignVariableOp_24AssignVariableOp6assignvariableop_24_dirichletmixturelayer_mix_kernel_1Identity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25�
AssignVariableOp_25AssignVariableOp8assignvariableop_25_dirichletmixturelayer_gamma_kernel_1Identity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26�
AssignVariableOp_26AssignVariableOp7assignvariableop_26_dirichletmixturelayer_beta_kernel_1Identity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27�
AssignVariableOp_27AssignVariableOp9assignvariableop_27_dirichletmixturelayer_lambda_kernel_1Identity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28�
AssignVariableOp_28AssignVariableOp=assignvariableop_28_dirichletmixturelayer_background_kernel_1Identity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29�
AssignVariableOp_29AssignVariableOp8assignvariableop_29_dirichletmixturelayer_alpha_kernel_2Identity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30�
AssignVariableOp_30AssignVariableOp6assignvariableop_30_dirichletmixturelayer_mix_kernel_2Identity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31�
AssignVariableOp_31AssignVariableOp8assignvariableop_31_dirichletmixturelayer_gamma_kernel_2Identity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32�
AssignVariableOp_32AssignVariableOp7assignvariableop_32_dirichletmixturelayer_beta_kernel_2Identity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33�
AssignVariableOp_33AssignVariableOp9assignvariableop_33_dirichletmixturelayer_lambda_kernel_2Identity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34�
AssignVariableOp_34AssignVariableOp=assignvariableop_34_dirichletmixturelayer_background_kernel_2Identity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_349
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�
Identity_35Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_35�
Identity_36IdentityIdentity_35:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_36"#
identity_36Identity_36:output:0*[
_input_shapesJ
H: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
C__inference_model_36_layer_call_and_return_conditional_losses_12426
input_11 
profilehmmtransitioner_12422
identity�
&ProfileHMMTransitioner/PartitionedCallPartitionedCallinput_11profilehmmtransitioner_12422*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� C* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *Z
fURS
Q__inference_ProfileHMMTransitioner_layer_call_and_return_conditional_losses_123792(
&ProfileHMMTransitioner/PartitionedCall�
IdentityIdentity/ProfileHMMTransitioner/PartitionedCall:output:0*
T0*+
_output_shapes
:��������� C2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:��������� C:CC:U Q
+
_output_shapes
:��������� C
"
_user_specified_name
input_11:($
"
_output_shapes
:CC
�
Q
(__inference_model_36_layer_call_fn_12530

inputs
unknown
identity�
PartitionedCallPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� C* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *L
fGRE
C__inference_model_36_layer_call_and_return_conditional_losses_123582
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:��������� C2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:��������� C:CC:S O
+
_output_shapes
:��������� C
 
_user_specified_nameinputs:($
"
_output_shapes
:CC
�T
�
__inference__traced_save_12730
file_prefixA
=savev2_transition_kernel_begin_to_match_0_read_readvariableop?
;savev2_transition_kernel_match_to_end_1_read_readvariableopA
=savev2_transition_kernel_match_to_match_2_read_readvariableopB
>savev2_transition_kernel_match_to_insert_3_read_readvariableopB
>savev2_transition_kernel_insert_to_match_4_read_readvariableopC
?savev2_transition_kernel_insert_to_insert_5_read_readvariableopB
>savev2_transition_kernel_match_to_delete_6_read_readvariableopB
>savev2_transition_kernel_delete_to_match_7_read_readvariableopC
?savev2_transition_kernel_delete_to_delete_8_read_readvariableopB
>savev2_transition_kernel_left_flank_loop_9_read_readvariableopC
?savev2_transition_kernel_left_flank_exit_10_read_readvariableopL
Hsavev2_transition_kernel_unannotated_segment_loop_11_read_readvariableopL
Hsavev2_transition_kernel_unannotated_segment_exit_12_read_readvariableopN
Jsavev2_transition_kernel_end_to_unannotated_segment_15_read_readvariableopF
Bsavev2_transition_kernel_end_to_right_flank_16_read_readvariableopC
?savev2_transition_kernel_end_to_terminal_17_read_readvariableop+
'savev2_init_logit_0_read_readvariableopA
=savev2_dirichletmixturelayer_alpha_kernel_read_readvariableop?
;savev2_dirichletmixturelayer_mix_kernel_read_readvariableopA
=savev2_dirichletmixturelayer_gamma_kernel_read_readvariableop@
<savev2_dirichletmixturelayer_beta_kernel_read_readvariableopB
>savev2_dirichletmixturelayer_lambda_kernel_read_readvariableopF
Bsavev2_dirichletmixturelayer_background_kernel_read_readvariableopC
?savev2_dirichletmixturelayer_alpha_kernel_1_read_readvariableopA
=savev2_dirichletmixturelayer_mix_kernel_1_read_readvariableopC
?savev2_dirichletmixturelayer_gamma_kernel_1_read_readvariableopB
>savev2_dirichletmixturelayer_beta_kernel_1_read_readvariableopD
@savev2_dirichletmixturelayer_lambda_kernel_1_read_readvariableopH
Dsavev2_dirichletmixturelayer_background_kernel_1_read_readvariableopC
?savev2_dirichletmixturelayer_alpha_kernel_2_read_readvariableopA
=savev2_dirichletmixturelayer_mix_kernel_2_read_readvariableopC
?savev2_dirichletmixturelayer_gamma_kernel_2_read_readvariableopB
>savev2_dirichletmixturelayer_beta_kernel_2_read_readvariableopD
@savev2_dirichletmixturelayer_lambda_kernel_2_read_readvariableopH
Dsavev2_dirichletmixturelayer_background_kernel_2_read_readvariableop
savev2_const_1

identity_1��MergeV2Checkpoints�
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard�
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*�
value�B�$BRlayer_with_weights-0/transition_kernel_begin_to_match_0/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/transition_kernel_match_to_end_1/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/transition_kernel_match_to_match_2/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-0/transition_kernel_match_to_insert_3/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-0/transition_kernel_insert_to_match_4/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/transition_kernel_insert_to_insert_5/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-0/transition_kernel_match_to_delete_6/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-0/transition_kernel_delete_to_match_7/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/transition_kernel_delete_to_delete_8/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-0/transition_kernel_left_flank_loop_9/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/transition_kernel_left_flank_exit_10/.ATTRIBUTES/VARIABLE_VALUEB]layer_with_weights-0/transition_kernel_unannotated_segment_loop_11/.ATTRIBUTES/VARIABLE_VALUEB]layer_with_weights-0/transition_kernel_unannotated_segment_exit_12/.ATTRIBUTES/VARIABLE_VALUEB_layer_with_weights-0/transition_kernel_end_to_unannotated_segment_15/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-0/transition_kernel_end_to_right_flank_16/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/transition_kernel_end_to_terminal_17/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-0/init_logit_0/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*[
valueRBP$B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0=savev2_transition_kernel_begin_to_match_0_read_readvariableop;savev2_transition_kernel_match_to_end_1_read_readvariableop=savev2_transition_kernel_match_to_match_2_read_readvariableop>savev2_transition_kernel_match_to_insert_3_read_readvariableop>savev2_transition_kernel_insert_to_match_4_read_readvariableop?savev2_transition_kernel_insert_to_insert_5_read_readvariableop>savev2_transition_kernel_match_to_delete_6_read_readvariableop>savev2_transition_kernel_delete_to_match_7_read_readvariableop?savev2_transition_kernel_delete_to_delete_8_read_readvariableop>savev2_transition_kernel_left_flank_loop_9_read_readvariableop?savev2_transition_kernel_left_flank_exit_10_read_readvariableopHsavev2_transition_kernel_unannotated_segment_loop_11_read_readvariableopHsavev2_transition_kernel_unannotated_segment_exit_12_read_readvariableopJsavev2_transition_kernel_end_to_unannotated_segment_15_read_readvariableopBsavev2_transition_kernel_end_to_right_flank_16_read_readvariableop?savev2_transition_kernel_end_to_terminal_17_read_readvariableop'savev2_init_logit_0_read_readvariableop=savev2_dirichletmixturelayer_alpha_kernel_read_readvariableop;savev2_dirichletmixturelayer_mix_kernel_read_readvariableop=savev2_dirichletmixturelayer_gamma_kernel_read_readvariableop<savev2_dirichletmixturelayer_beta_kernel_read_readvariableop>savev2_dirichletmixturelayer_lambda_kernel_read_readvariableopBsavev2_dirichletmixturelayer_background_kernel_read_readvariableop?savev2_dirichletmixturelayer_alpha_kernel_1_read_readvariableop=savev2_dirichletmixturelayer_mix_kernel_1_read_readvariableop?savev2_dirichletmixturelayer_gamma_kernel_1_read_readvariableop>savev2_dirichletmixturelayer_beta_kernel_1_read_readvariableop@savev2_dirichletmixturelayer_lambda_kernel_1_read_readvariableopDsavev2_dirichletmixturelayer_background_kernel_1_read_readvariableop?savev2_dirichletmixturelayer_alpha_kernel_2_read_readvariableop=savev2_dirichletmixturelayer_mix_kernel_2_read_readvariableop?savev2_dirichletmixturelayer_gamma_kernel_2_read_readvariableop>savev2_dirichletmixturelayer_beta_kernel_2_read_readvariableop@savev2_dirichletmixturelayer_lambda_kernel_2_read_readvariableopDsavev2_dirichletmixturelayer_background_kernel_2_read_readvariableopsavev2_const_1"/device:CPU:0*
_output_shapes
 *2
dtypes(
&2$2
SaveV2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*�
_input_shapes�
�: : : ::::: : :::::::::::::::::::::::::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix: 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
: : 

_output_shapes
: : 	

_output_shapes
:: 


_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::  

_output_shapes
:: !

_output_shapes
:: "

_output_shapes
:: #

_output_shapes
::$

_output_shapes
: 
�
�
C__inference_model_36_layer_call_and_return_conditional_losses_12358

inputs 
profilehmmtransitioner_12354
identity�
&ProfileHMMTransitioner/PartitionedCallPartitionedCallinputsprofilehmmtransitioner_12354*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� C* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *Z
fURS
Q__inference_ProfileHMMTransitioner_layer_call_and_return_conditional_losses_123532(
&ProfileHMMTransitioner/PartitionedCall�
IdentityIdentity/ProfileHMMTransitioner/PartitionedCall:output:0*
T0*+
_output_shapes
:��������� C2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:��������� C:CC:S O
+
_output_shapes
:��������� C
 
_user_specified_nameinputs:($
"
_output_shapes
:CC
�
�
C__inference_model_36_layer_call_and_return_conditional_losses_12517

inputs#
profilehmmtransitioner_matmul_b
identity�
ProfileHMMTransitioner/MatMulBatchMatMulV2inputsprofilehmmtransitioner_matmul_b*
T0*+
_output_shapes
:��������� C2
ProfileHMMTransitioner/MatMul~
IdentityIdentity&ProfileHMMTransitioner/MatMul:output:0*
T0*+
_output_shapes
:��������� C2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:��������� C:CC:S O
+
_output_shapes
:��������� C
 
_user_specified_nameinputs:($
"
_output_shapes
:CC
�
S
(__inference_model_36_layer_call_fn_12412
input_11
unknown
identity�
PartitionedCallPartitionedCallinput_11unknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� C* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *L
fGRE
C__inference_model_36_layer_call_and_return_conditional_losses_124002
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:��������� C2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:��������� C:CC:U Q
+
_output_shapes
:��������� C
"
_user_specified_name
input_11:($
"
_output_shapes
:CC
�
l
 __inference__wrapped_model_12340
input_11,
(model_36_profilehmmtransitioner_matmul_b
identity�
&model_36/ProfileHMMTransitioner/MatMulBatchMatMulV2input_11(model_36_profilehmmtransitioner_matmul_b*
T0*+
_output_shapes
:��������� C2(
&model_36/ProfileHMMTransitioner/MatMul�
IdentityIdentity/model_36/ProfileHMMTransitioner/MatMul:output:0*
T0*+
_output_shapes
:��������� C2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:��������� C:CC:U Q
+
_output_shapes
:��������� C
"
_user_specified_name
input_11:($
"
_output_shapes
:CC
�
{
Q__inference_ProfileHMMTransitioner_layer_call_and_return_conditional_losses_12353

inputs
matmul_b
identityi
MatMulBatchMatMulV2inputsmatmul_b*
T0*+
_output_shapes
:��������� C2
MatMulg
IdentityIdentityMatMul:output:0*
T0*+
_output_shapes
:��������� C2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:��������� C:CC:S O
+
_output_shapes
:��������� C
 
_user_specified_nameinputs:($
"
_output_shapes
:CC
�
S
(__inference_model_36_layer_call_fn_12363
input_11
unknown
identity�
PartitionedCallPartitionedCallinput_11unknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� C* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *L
fGRE
C__inference_model_36_layer_call_and_return_conditional_losses_123582
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:��������� C2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:��������� C:CC:U Q
+
_output_shapes
:��������� C
"
_user_specified_name
input_11:($
"
_output_shapes
:CC
�
Q
(__inference_model_36_layer_call_fn_12537

inputs
unknown
identity�
PartitionedCallPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� C* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *L
fGRE
C__inference_model_36_layer_call_and_return_conditional_losses_124002
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:��������� C2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:��������� C:CC:S O
+
_output_shapes
:��������� C
 
_user_specified_nameinputs:($
"
_output_shapes
:CC
�
{
Q__inference_ProfileHMMTransitioner_layer_call_and_return_conditional_losses_12379

inputs
matmul_b
identityi
MatMulBatchMatMulV2inputsmatmul_b*
T0*+
_output_shapes
:��������� C2
MatMulg
IdentityIdentityMatMul:output:0*
T0*+
_output_shapes
:��������� C2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:��������� C:CC:S O
+
_output_shapes
:��������� C
 
_user_specified_nameinputs:($
"
_output_shapes
:CC
�
�
C__inference_model_36_layer_call_and_return_conditional_losses_12523

inputs#
profilehmmtransitioner_matmul_b
identity�
ProfileHMMTransitioner/MatMulBatchMatMulV2inputsprofilehmmtransitioner_matmul_b*
T0*+
_output_shapes
:��������� C2
ProfileHMMTransitioner/MatMul~
IdentityIdentity&ProfileHMMTransitioner/MatMul:output:0*
T0*+
_output_shapes
:��������� C2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:��������� C:CC:S O
+
_output_shapes
:��������� C
 
_user_specified_nameinputs:($
"
_output_shapes
:CC
�
_
6__inference_ProfileHMMTransitioner_layer_call_fn_12601

inputs
unknown
identity�
PartitionedCallPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� C* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *Z
fURS
Q__inference_ProfileHMMTransitioner_layer_call_and_return_conditional_losses_123792
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:��������� C2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:��������� C:CC:S O
+
_output_shapes
:��������� C
 
_user_specified_nameinputs:($
"
_output_shapes
:CC"�J
saver_filename:0StatefulPartitionedCall:0StatefulPartitionedCall_18"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
A
input_115
serving_default_input_11:0��������� CF
ProfileHMMTransitioner,
PartitionedCall:0��������� Ctensorflow/serving/predict:��
�}
layer-0
layer_with_weights-0
layer-1
regularization_losses
trainable_variables
	variables
	keras_api

signatures
+�&call_and_return_all_conditional_losses
�__call__
�_default_save_signature"�{
_tf_keras_network�{{"name": "model_36", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "model_36", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 67]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_11"}, "name": "input_11", "inbound_nodes": []}, {"class_name": "ProfileHMMTransitioner", "config": {"name": "ProfileHMMTransitioner", "trainable": true, "dtype": "float32", "transition_init": [{"begin_to_match": [0.0, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176], "match_to_end": [-4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117], "match_to_match": [-0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144], "match_to_insert": [-2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424], "insert_to_match": [-0.1212088093161583, 0.009086391888558865, 0.009002083912491798, 0.04675893113017082, -0.014151470735669136, 0.01024165004491806, 0.02323254384100437, -0.02498454414308071, -0.15538693964481354, -0.14699190855026245, -0.013613778166472912, 0.2512563169002533, -0.0935044214129448, 0.06797156482934952, -0.052830714732408524, 0.10578294098377228, -0.1136663481593132, -0.1790376603603363, 0.065305195748806, 0.1997561752796173, 0.08747947216033936, -0.09250282496213913, -0.11328249424695969, 0.06070070341229439, -0.07749562710523605, -0.10371716320514679, -0.13943003118038177, 0.057498749345541, 0.012180447578430176, -0.02759348787367344, -0.007385184522718191], "insert_to_insert": [-0.5355729460716248, -0.5004016757011414, -0.5246613621711731, -0.47744622826576233, -0.2317204773426056, -0.7493376135826111, -0.4576066732406616, -0.46035003662109375, -0.4804636240005493, -0.5010233521461487, -0.4774862229824066, -0.5662848353385925, -0.4862525165081024, -0.5372911095619202, -0.521283745765686, -0.5456013083457947, -0.41663244366645813, -0.5973480939865112, -0.3950226902961731, -0.5040197968482971, -0.44286686182022095, -0.4442019760608673, -0.5480287671089172, -0.5713651180267334, -0.5413902997970581, -0.4534294605255127, -0.34395092725753784, -0.4924872815608978, -0.4628599286079407, -0.5498301982879639, -0.45211297273635864], "match_to_delete": [-2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544], "delete_to_match": [0.06466271728277206, 0.06741499155759811, 0.03190351650118828, -0.03901180252432823, 0.01899508573114872, -0.023375164717435837, 0.1141061931848526, 0.12726520001888275, 0.09430309385061264, 0.05380401760339737, -0.078799769282341, 0.11192728579044342, -0.09027769416570663, 0.06104927882552147, -0.07609841227531433, 0.10430953651666641, -0.021280553191900253, 0.095639169216156, 0.020231759175658226, -0.0025753253139555454, -0.006408776622265577, 0.06973852962255478, -0.10258717834949493, -0.022476835176348686, -0.04487519711256027, -0.10834678262472153, -0.01795453391969204, -0.048109088093042374, 0.03264540806412697, -0.16121642291545868, 0.07679230719804764, -0.0017652650130912662], "delete_to_delete": [-0.529841423034668, -0.5632942318916321, -0.4537966251373291, -0.4471675455570221, -0.7019004821777344, -0.5361681580543518, -0.5529745221138, -0.4380917549133301, -0.561468780040741, -0.6846115589141846, -0.557816743850708, -0.5865750312805176, -0.558527410030365, -0.4894355535507202, -0.6188047528266907, -0.3684917688369751, -0.3838689625263214, -0.5193451642990112, -0.28684860467910767, -0.479719340801239, -0.5271235704421997, -0.5278086066246033, -0.44600391387939453, -0.4421495199203491, -0.4201374053955078, -0.4419940412044525, -0.3966936469078064, -0.5205600261688232, -0.4529871642589569, -0.5244224667549133, -0.5176950693130493], "left_flank_loop": [-0.10820084810256958], "left_flank_exit": [-1.0034438371658325], "unannotated_segment_loop": [-0.07827433198690414], "unannotated_segment_exit": [-0.9550771713256836], "right_flank_loop": [-0.10820084810256958], "right_flank_exit": [-1.0034438371658325], "end_to_unannotated_segment": [-9.027226448059082], "end_to_right_flank": [-0.13440074026584625], "end_to_terminal": [-0.112873874604702]}], "flank_init": [[0.0]], "prior": {"class_name": "ProfileHMMTransitionPrior", "config": {"name": "profile_hmm_transition_prior", "trainable": true, "dtype": "float32", "match_comp": 1, "insert_comp": 1, "delete_comp": 1, "alpha_flank": 7000, "alpha_single": 1000000000.0, "alpha_frag": 10000.0, "epsilon": 1e-16}, "__passive_serialization__": true}, "frozen_kernels": {}}, "name": "ProfileHMMTransitioner", "inbound_nodes": [[["input_11", 0, 0, {}]]]}], "input_layers": [["input_11", 0, 0]], "output_layers": [["ProfileHMMTransitioner", 0, 0]]}, "shared_object_id": 3, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 32, 67]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 67]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 32, 67]}, "float32", "input_11"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_36", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 67]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_11"}, "name": "input_11", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "ProfileHMMTransitioner", "config": {"name": "ProfileHMMTransitioner", "trainable": true, "dtype": "float32", "transition_init": [{"begin_to_match": [0.0, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176], "match_to_end": [-4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117], "match_to_match": [-0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144], "match_to_insert": [-2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424], "insert_to_match": [-0.1212088093161583, 0.009086391888558865, 0.009002083912491798, 0.04675893113017082, -0.014151470735669136, 0.01024165004491806, 0.02323254384100437, -0.02498454414308071, -0.15538693964481354, -0.14699190855026245, -0.013613778166472912, 0.2512563169002533, -0.0935044214129448, 0.06797156482934952, -0.052830714732408524, 0.10578294098377228, -0.1136663481593132, -0.1790376603603363, 0.065305195748806, 0.1997561752796173, 0.08747947216033936, -0.09250282496213913, -0.11328249424695969, 0.06070070341229439, -0.07749562710523605, -0.10371716320514679, -0.13943003118038177, 0.057498749345541, 0.012180447578430176, -0.02759348787367344, -0.007385184522718191], "insert_to_insert": [-0.5355729460716248, -0.5004016757011414, -0.5246613621711731, -0.47744622826576233, -0.2317204773426056, -0.7493376135826111, -0.4576066732406616, -0.46035003662109375, -0.4804636240005493, -0.5010233521461487, -0.4774862229824066, -0.5662848353385925, -0.4862525165081024, -0.5372911095619202, -0.521283745765686, -0.5456013083457947, -0.41663244366645813, -0.5973480939865112, -0.3950226902961731, -0.5040197968482971, -0.44286686182022095, -0.4442019760608673, -0.5480287671089172, -0.5713651180267334, -0.5413902997970581, -0.4534294605255127, -0.34395092725753784, -0.4924872815608978, -0.4628599286079407, -0.5498301982879639, -0.45211297273635864], "match_to_delete": [-2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544], "delete_to_match": [0.06466271728277206, 0.06741499155759811, 0.03190351650118828, -0.03901180252432823, 0.01899508573114872, -0.023375164717435837, 0.1141061931848526, 0.12726520001888275, 0.09430309385061264, 0.05380401760339737, -0.078799769282341, 0.11192728579044342, -0.09027769416570663, 0.06104927882552147, -0.07609841227531433, 0.10430953651666641, -0.021280553191900253, 0.095639169216156, 0.020231759175658226, -0.0025753253139555454, -0.006408776622265577, 0.06973852962255478, -0.10258717834949493, -0.022476835176348686, -0.04487519711256027, -0.10834678262472153, -0.01795453391969204, -0.048109088093042374, 0.03264540806412697, -0.16121642291545868, 0.07679230719804764, -0.0017652650130912662], "delete_to_delete": [-0.529841423034668, -0.5632942318916321, -0.4537966251373291, -0.4471675455570221, -0.7019004821777344, -0.5361681580543518, -0.5529745221138, -0.4380917549133301, -0.561468780040741, -0.6846115589141846, -0.557816743850708, -0.5865750312805176, -0.558527410030365, -0.4894355535507202, -0.6188047528266907, -0.3684917688369751, -0.3838689625263214, -0.5193451642990112, -0.28684860467910767, -0.479719340801239, -0.5271235704421997, -0.5278086066246033, -0.44600391387939453, -0.4421495199203491, -0.4201374053955078, -0.4419940412044525, -0.3966936469078064, -0.5205600261688232, -0.4529871642589569, -0.5244224667549133, -0.5176950693130493], "left_flank_loop": [-0.10820084810256958], "left_flank_exit": [-1.0034438371658325], "unannotated_segment_loop": [-0.07827433198690414], "unannotated_segment_exit": [-0.9550771713256836], "right_flank_loop": [-0.10820084810256958], "right_flank_exit": [-1.0034438371658325], "end_to_unannotated_segment": [-9.027226448059082], "end_to_right_flank": [-0.13440074026584625], "end_to_terminal": [-0.112873874604702]}], "flank_init": [[0.0]], "prior": {"class_name": "ProfileHMMTransitionPrior", "config": {"name": "profile_hmm_transition_prior", "trainable": true, "dtype": "float32", "match_comp": 1, "insert_comp": 1, "delete_comp": 1, "alpha_flank": 7000, "alpha_single": 1000000000.0, "alpha_frag": 10000.0, "epsilon": 1e-16}, "__passive_serialization__": true, "shared_object_id": 1}, "frozen_kernels": {}}, "name": "ProfileHMMTransitioner", "inbound_nodes": [[["input_11", 0, 0, {}]]], "shared_object_id": 2}], "input_layers": [["input_11", 0, 0]], "output_layers": [["ProfileHMMTransitioner", 0, 0]]}}}
�"�
_tf_keras_input_layer�{"class_name": "InputLayer", "name": "input_11", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 67]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 67]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_11"}}
�B
transition_init
	
flank_init
	
prior
frozen_kernels

length

num_states
num_states_implicit
$ explicit_transition_kernel_parts
implicit_transition_parts
&"sparse_transition_indices_implicit
&"sparse_transition_indices_explicit
transition_kernel
&"transition_kernel_begin_to_match_0
$ transition_kernel_match_to_end_1
&"transition_kernel_match_to_match_2
'#transition_kernel_match_to_insert_3
'#transition_kernel_insert_to_match_4
($transition_kernel_insert_to_insert_5
'#transition_kernel_match_to_delete_6
'#transition_kernel_delete_to_match_7
($transition_kernel_delete_to_delete_8
'#transition_kernel_left_flank_loop_9
($transition_kernel_left_flank_exit_10
1-transition_kernel_unannotated_segment_loop_11
1 -transition_kernel_unannotated_segment_exit_12
3!/transition_kernel_end_to_unannotated_segment_15
+"'transition_kernel_end_to_right_flank_16
(#$transition_kernel_end_to_terminal_17
$init_logit_0
%flank_init_kernel
&implicit_log_probs
'	log_probs
	(probs
)regularization_losses
*trainable_variables
+	variables
,	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�9
_tf_keras_layer�8{"name": "ProfileHMMTransitioner", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ProfileHMMTransitioner", "config": {"name": "ProfileHMMTransitioner", "trainable": true, "dtype": "float32", "transition_init": [{"begin_to_match": [0.0, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176, -3.4339871406555176], "match_to_end": [-4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117, -4.127134323120117], "match_to_match": [-0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144, -0.25635191798210144], "match_to_insert": [-2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424, -2.256351947784424], "insert_to_match": [-0.1212088093161583, 0.009086391888558865, 0.009002083912491798, 0.04675893113017082, -0.014151470735669136, 0.01024165004491806, 0.02323254384100437, -0.02498454414308071, -0.15538693964481354, -0.14699190855026245, -0.013613778166472912, 0.2512563169002533, -0.0935044214129448, 0.06797156482934952, -0.052830714732408524, 0.10578294098377228, -0.1136663481593132, -0.1790376603603363, 0.065305195748806, 0.1997561752796173, 0.08747947216033936, -0.09250282496213913, -0.11328249424695969, 0.06070070341229439, -0.07749562710523605, -0.10371716320514679, -0.13943003118038177, 0.057498749345541, 0.012180447578430176, -0.02759348787367344, -0.007385184522718191], "insert_to_insert": [-0.5355729460716248, -0.5004016757011414, -0.5246613621711731, -0.47744622826576233, -0.2317204773426056, -0.7493376135826111, -0.4576066732406616, -0.46035003662109375, -0.4804636240005493, -0.5010233521461487, -0.4774862229824066, -0.5662848353385925, -0.4862525165081024, -0.5372911095619202, -0.521283745765686, -0.5456013083457947, -0.41663244366645813, -0.5973480939865112, -0.3950226902961731, -0.5040197968482971, -0.44286686182022095, -0.4442019760608673, -0.5480287671089172, -0.5713651180267334, -0.5413902997970581, -0.4534294605255127, -0.34395092725753784, -0.4924872815608978, -0.4628599286079407, -0.5498301982879639, -0.45211297273635864], "match_to_delete": [-2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544, -2.255805253982544], "delete_to_match": [0.06466271728277206, 0.06741499155759811, 0.03190351650118828, -0.03901180252432823, 0.01899508573114872, -0.023375164717435837, 0.1141061931848526, 0.12726520001888275, 0.09430309385061264, 0.05380401760339737, -0.078799769282341, 0.11192728579044342, -0.09027769416570663, 0.06104927882552147, -0.07609841227531433, 0.10430953651666641, -0.021280553191900253, 0.095639169216156, 0.020231759175658226, -0.0025753253139555454, -0.006408776622265577, 0.06973852962255478, -0.10258717834949493, -0.022476835176348686, -0.04487519711256027, -0.10834678262472153, -0.01795453391969204, -0.048109088093042374, 0.03264540806412697, -0.16121642291545868, 0.07679230719804764, -0.0017652650130912662], "delete_to_delete": [-0.529841423034668, -0.5632942318916321, -0.4537966251373291, -0.4471675455570221, -0.7019004821777344, -0.5361681580543518, -0.5529745221138, -0.4380917549133301, -0.561468780040741, -0.6846115589141846, -0.557816743850708, -0.5865750312805176, -0.558527410030365, -0.4894355535507202, -0.6188047528266907, -0.3684917688369751, -0.3838689625263214, -0.5193451642990112, -0.28684860467910767, -0.479719340801239, -0.5271235704421997, -0.5278086066246033, -0.44600391387939453, -0.4421495199203491, -0.4201374053955078, -0.4419940412044525, -0.3966936469078064, -0.5205600261688232, -0.4529871642589569, -0.5244224667549133, -0.5176950693130493], "left_flank_loop": [-0.10820084810256958], "left_flank_exit": [-1.0034438371658325], "unannotated_segment_loop": [-0.07827433198690414], "unannotated_segment_exit": [-0.9550771713256836], "right_flank_loop": [-0.10820084810256958], "right_flank_exit": [-1.0034438371658325], "end_to_unannotated_segment": [-9.027226448059082], "end_to_right_flank": [-0.13440074026584625], "end_to_terminal": [-0.112873874604702]}], "flank_init": [[0.0]], "prior": {"class_name": "ProfileHMMTransitionPrior", "config": {"name": "profile_hmm_transition_prior", "trainable": true, "dtype": "float32", "match_comp": 1, "insert_comp": 1, "delete_comp": 1, "alpha_flank": 7000, "alpha_single": 1000000000.0, "alpha_frag": 10000.0, "epsilon": 1e-16}, "__passive_serialization__": true, "shared_object_id": 1}, "frozen_kernels": {}}, "inbound_nodes": [[["input_11", 0, 0, {}]]], "shared_object_id": 2}
 "
trackable_list_wrapper
�
0
1
2
3
4
5
6
7
8
9
10
11
 12
!13
"14
#15
$16"
trackable_list_wrapper
�
0
1
2
3
4
5
6
7
8
9
10
11
 12
!13
"14
#15
$16
-17
.18
/19
020
121
222
323
424
525
626
727
828
929
:30
;31
<32
=33
>34"
trackable_list_wrapper
�
?metrics
@layer_metrics

Alayers
regularization_losses
Bnon_trainable_variables
trainable_variables
Clayer_regularization_losses
	variables
�__call__
�_default_save_signature
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
-
�serving_default"
signature_map
'
D0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Ematch_dirichlet
Finsert_dirichlet
Gdelete_dirichlet
H	keras_api"�
_tf_keras_layer�{"name": "profile_hmm_transition_prior", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ProfileHMMTransitionPrior", "config": {"name": "profile_hmm_transition_prior", "trainable": true, "dtype": "float32", "match_comp": 1, "insert_comp": 1, "delete_comp": 1, "alpha_flank": 7000, "alpha_single": 1000000000.0, "alpha_frag": 10000.0, "epsilon": 1e-16}, "__passive_serialization__": true, "shared_object_id": 1}
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
I0"
trackable_list_wrapper
'
J0"
trackable_list_wrapper
'
K0"
trackable_list_wrapper
'
L0"
trackable_list_wrapper
'
M0"
trackable_list_wrapper
0:. 2"transition_kernel_begin_to_match_0
.:, 2 transition_kernel_match_to_end_1
0:.2"transition_kernel_match_to_match_2
1:/2#transition_kernel_match_to_insert_3
1:/2#transition_kernel_insert_to_match_4
2:02$transition_kernel_insert_to_insert_5
1:/ 2#transition_kernel_match_to_delete_6
1:/ 2#transition_kernel_delete_to_match_7
2:02$transition_kernel_delete_to_delete_8
1:/2#transition_kernel_left_flank_loop_9
2:02$transition_kernel_left_flank_exit_10
;:92-transition_kernel_unannotated_segment_loop_11
;:92-transition_kernel_unannotated_segment_exit_12
=:;2/transition_kernel_end_to_unannotated_segment_15
5:32'transition_kernel_end_to_right_flank_16
2:02$transition_kernel_end_to_terminal_17
:2init_logit_0
'
$0"
trackable_list_wrapper
'
N0"
trackable_list_wrapper
'
O0"
trackable_list_wrapper
'
P0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
0
1
2
3
4
5
6
7
8
9
10
11
 12
!13
"14
#15
$16"
trackable_list_wrapper
�
0
1
2
3
4
5
6
7
8
9
10
11
 12
!13
"14
#15
$16
-17
.18
/19
020
121
222
323
424
525
626
727
828
929
:30
;31
<32
=33
>34"
trackable_list_wrapper
�
Qmetrics
Rlayer_metrics

Slayers
)regularization_losses
Tnon_trainable_variables
*trainable_variables
Ulayer_regularization_losses
+	variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
2:02"DirichletMixtureLayer/alpha_kernel
,:*2 DirichletMixtureLayer/mix_kernel
.:,2"DirichletMixtureLayer/gamma_kernel
-:+2!DirichletMixtureLayer/beta_kernel
/:-2#DirichletMixtureLayer/lambda_kernel
3:12'DirichletMixtureLayer/background_kernel
2:02"DirichletMixtureLayer/alpha_kernel
,:*2 DirichletMixtureLayer/mix_kernel
.:,2"DirichletMixtureLayer/gamma_kernel
-:+2!DirichletMixtureLayer/beta_kernel
/:-2#DirichletMixtureLayer/lambda_kernel
3:12'DirichletMixtureLayer/background_kernel
2:02"DirichletMixtureLayer/alpha_kernel
,:*2 DirichletMixtureLayer/mix_kernel
.:,2"DirichletMixtureLayer/gamma_kernel
-:+2!DirichletMixtureLayer/beta_kernel
/:-2#DirichletMixtureLayer/lambda_kernel
3:12'DirichletMixtureLayer/background_kernel
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
�
-0
.1
/2
03
14
25
36
47
58
69
710
811
912
:13
;14
<15
=16
>17"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�
-alpha_kernel
.
mix_kernel
/gamma_kernel
0beta_kernel
1lambda_kernel
2background_kernel
Vregularization_losses
Wtrainable_variables
X	variables
Y	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"name": "DirichletMixtureLayer", "trainable": false, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "DirichletMixtureLayer", "config": {"layer was saved without config": true}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 3]}}
�
3alpha_kernel
4
mix_kernel
5gamma_kernel
6beta_kernel
7lambda_kernel
8background_kernel
Zregularization_losses
[trainable_variables
\	variables
]	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"name": "DirichletMixtureLayer", "trainable": false, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "DirichletMixtureLayer", "config": {"layer was saved without config": true}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 2]}}
�
9alpha_kernel
:
mix_kernel
;gamma_kernel
<beta_kernel
=lambda_kernel
>background_kernel
^regularization_losses
_trainable_variables
`	variables
a	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"name": "DirichletMixtureLayer", "trainable": false, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "DirichletMixtureLayer", "config": {"layer was saved without config": true}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 2]}}
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
bleft_flank_loop
cleft_flank_to_right_flank
%d!left_flank_to_unannotated_segment
eleft_flank_to_terminal
funannotated_segment_loop
&g"unannotated_segment_to_right_flank
#hunannotated_segment_to_terminal
iright_flank_loop
jright_flank_exit
kterminal_self_loop"
trackable_dict_wrapper
�
lleft_flank_loop
mleft_flank_exit
nunannotated_segment_loop
ounannotated_segment_exit
pright_flank_loop
qright_flank_exit
rend_to_unannotated_segment
send_to_right_flank
tend_to_terminal"
trackable_dict_wrapper
�
begin_to_match
match_to_end
match_to_match
match_to_insert
insert_to_match
insert_to_insert
match_to_delete
delete_to_match
delete_to_delete
left_flank_loop
left_flank_exit
unannotated_segment_loop
 unannotated_segment_exit
right_flank_loop
right_flank_exit
!end_to_unannotated_segment
"end_to_right_flank
#end_to_terminal"
trackable_dict_wrapper
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'

0"
trackable_list_wrapper
�
-0
.1
/2
03
14
25
36
47
58
69
710
811
912
:13
;14
<15
=16
>17"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
J
-0
.1
/2
03
14
25"
trackable_list_wrapper
�
umetrics
vlayer_metrics

wlayers
Vregularization_losses
xnon_trainable_variables
Wtrainable_variables
ylayer_regularization_losses
X	variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
J
30
41
52
63
74
85"
trackable_list_wrapper
�
zmetrics
{layer_metrics

|layers
Zregularization_losses
}non_trainable_variables
[trainable_variables
~layer_regularization_losses
\	variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
J
90
:1
;2
<3
=4
>5"
trackable_list_wrapper
�
metrics
�layer_metrics
�layers
^regularization_losses
�non_trainable_variables
_trainable_variables
 �layer_regularization_losses
`	variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
(
�0"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
J
-0
.1
/2
03
14
25"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
J
30
41
52
63
74
85"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
J
90
:1
;2
<3
=4
>5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�2�
C__inference_model_36_layer_call_and_return_conditional_losses_12517
C__inference_model_36_layer_call_and_return_conditional_losses_12523
C__inference_model_36_layer_call_and_return_conditional_losses_12419
C__inference_model_36_layer_call_and_return_conditional_losses_12426�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
(__inference_model_36_layer_call_fn_12363
(__inference_model_36_layer_call_fn_12530
(__inference_model_36_layer_call_fn_12537
(__inference_model_36_layer_call_fn_12412�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
 __inference__wrapped_model_12340�
���
FullArgSpec
args� 
varargsjargs
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *+�(
&�#
input_11��������� C
�2�
Q__inference_ProfileHMMTransitioner_layer_call_and_return_conditional_losses_12581
Q__inference_ProfileHMMTransitioner_layer_call_and_return_conditional_losses_12587�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
6__inference_ProfileHMMTransitioner_layer_call_fn_12594
6__inference_ProfileHMMTransitioner_layer_call_fn_12601�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference_signature_wrapper_12511input_11"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec$
args�
jself
jp

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpec$
args�
jself
jp

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpec$
args�
jself
jp

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpec$
args�
jself
jp

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpec$
args�
jself
jp

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpec$
args�
jself
jp

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
	J
Const�
Q__inference_ProfileHMMTransitioner_layer_call_and_return_conditional_losses_12581h�7�4
-�*
$�!
inputs��������� C
p 
� ")�&
�
0��������� C
� �
Q__inference_ProfileHMMTransitioner_layer_call_and_return_conditional_losses_12587h�7�4
-�*
$�!
inputs��������� C
p
� ")�&
�
0��������� C
� �
6__inference_ProfileHMMTransitioner_layer_call_fn_12594[�7�4
-�*
$�!
inputs��������� C
p 
� "���������� C�
6__inference_ProfileHMMTransitioner_layer_call_fn_12601[�7�4
-�*
$�!
inputs��������� C
p
� "���������� C�
 __inference__wrapped_model_12340��5�2
+�(
&�#
input_11��������� C
� "S�P
N
ProfileHMMTransitioner4�1
ProfileHMMTransitioner��������� C�
C__inference_model_36_layer_call_and_return_conditional_losses_12419n�=�:
3�0
&�#
input_11��������� C
p 

 
� ")�&
�
0��������� C
� �
C__inference_model_36_layer_call_and_return_conditional_losses_12426n�=�:
3�0
&�#
input_11��������� C
p

 
� ")�&
�
0��������� C
� �
C__inference_model_36_layer_call_and_return_conditional_losses_12517l�;�8
1�.
$�!
inputs��������� C
p 

 
� ")�&
�
0��������� C
� �
C__inference_model_36_layer_call_and_return_conditional_losses_12523l�;�8
1�.
$�!
inputs��������� C
p

 
� ")�&
�
0��������� C
� �
(__inference_model_36_layer_call_fn_12363a�=�:
3�0
&�#
input_11��������� C
p 

 
� "���������� C�
(__inference_model_36_layer_call_fn_12412a�=�:
3�0
&�#
input_11��������� C
p

 
� "���������� C�
(__inference_model_36_layer_call_fn_12530_�;�8
1�.
$�!
inputs��������� C
p 

 
� "���������� C�
(__inference_model_36_layer_call_fn_12537_�;�8
1�.
$�!
inputs��������� C
p

 
� "���������� C�
#__inference_signature_wrapper_12511��A�>
� 
7�4
2
input_11&�#
input_11��������� C"S�P
N
ProfileHMMTransitioner4�1
ProfileHMMTransitioner��������� C