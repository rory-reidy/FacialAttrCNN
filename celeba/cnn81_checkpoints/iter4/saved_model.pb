ç!
ê»
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
¼
AvgPool

value"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype:
2
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype

Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	

MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
0
Sigmoid
x"T
y"T"
Ttype:

2
-
Sqrt
x"T
y"T"
Ttype:

2
Á
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
executor_typestring ¨
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
<
Sub
x"T
y"T
z"T"
Ttype:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68çÂ
|
normalization/meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_namenormalization/mean
u
&normalization/mean/Read/ReadVariableOpReadVariableOpnormalization/mean*
_output_shapes
:*
dtype0

normalization/varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_namenormalization/variance
}
*normalization/variance/Read/ReadVariableOpReadVariableOpnormalization/variance*
_output_shapes
:*
dtype0
z
normalization/countVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *$
shared_namenormalization/count
s
'normalization/count/Read/ReadVariableOpReadVariableOpnormalization/count*
_output_shapes
: *
dtype0	
~
conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
: *
dtype0
n
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
: *
dtype0

conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_1/kernel
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
: *
dtype0
r
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_1/bias
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
:*
dtype0

normalization_1/meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_namenormalization_1/mean
y
(normalization_1/mean/Read/ReadVariableOpReadVariableOpnormalization_1/mean*
_output_shapes
:*
dtype0

normalization_1/varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_namenormalization_1/variance

,normalization_1/variance/Read/ReadVariableOpReadVariableOpnormalization_1/variance*
_output_shapes
:*
dtype0
~
normalization_1/countVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *&
shared_namenormalization_1/count
w
)normalization_1/count/Read/ReadVariableOpReadVariableOpnormalization_1/count*
_output_shapes
: *
dtype0	

conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_2/kernel
{
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
:*
dtype0
r
conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_2/bias
k
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes
:*
dtype0

conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_3/kernel
{
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*&
_output_shapes
:*
dtype0
r
conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_3/bias
k
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes
:*
dtype0

conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_4/kernel
{
#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*&
_output_shapes
:*
dtype0
r
conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_4/bias
k
!conv2d_4/bias/Read/ReadVariableOpReadVariableOpconv2d_4/bias*
_output_shapes
:*
dtype0

normalization_2/meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_namenormalization_2/mean
y
(normalization_2/mean/Read/ReadVariableOpReadVariableOpnormalization_2/mean*
_output_shapes
:*
dtype0

normalization_2/varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_namenormalization_2/variance

,normalization_2/variance/Read/ReadVariableOpReadVariableOpnormalization_2/variance*
_output_shapes
:*
dtype0
~
normalization_2/countVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *&
shared_namenormalization_2/count
w
)normalization_2/count/Read/ReadVariableOpReadVariableOpnormalization_2/count*
_output_shapes
: *
dtype0	

conv2d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_5/kernel
{
#conv2d_5/kernel/Read/ReadVariableOpReadVariableOpconv2d_5/kernel*&
_output_shapes
:*
dtype0
r
conv2d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_5/bias
k
!conv2d_5/bias/Read/ReadVariableOpReadVariableOpconv2d_5/bias*
_output_shapes
:*
dtype0

conv2d_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_6/kernel
{
#conv2d_6/kernel/Read/ReadVariableOpReadVariableOpconv2d_6/kernel*&
_output_shapes
:*
dtype0
r
conv2d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_6/bias
k
!conv2d_6/bias/Read/ReadVariableOpReadVariableOpconv2d_6/bias*
_output_shapes
:*
dtype0

conv2d_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_7/kernel
{
#conv2d_7/kernel/Read/ReadVariableOpReadVariableOpconv2d_7/kernel*&
_output_shapes
:*
dtype0
r
conv2d_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_7/bias
k
!conv2d_7/bias/Read/ReadVariableOpReadVariableOpconv2d_7/bias*
_output_shapes
:*
dtype0

normalization_3/meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_namenormalization_3/mean
y
(normalization_3/mean/Read/ReadVariableOpReadVariableOpnormalization_3/mean*
_output_shapes
:*
dtype0

normalization_3/varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_namenormalization_3/variance

,normalization_3/variance/Read/ReadVariableOpReadVariableOpnormalization_3/variance*
_output_shapes
:*
dtype0
~
normalization_3/countVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *&
shared_namenormalization_3/count
w
)normalization_3/count/Read/ReadVariableOpReadVariableOpnormalization_3/count*
_output_shapes
: *
dtype0	

conv2d_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_8/kernel
{
#conv2d_8/kernel/Read/ReadVariableOpReadVariableOpconv2d_8/kernel*&
_output_shapes
:*
dtype0
r
conv2d_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_8/bias
k
!conv2d_8/bias/Read/ReadVariableOpReadVariableOpconv2d_8/bias*
_output_shapes
:*
dtype0

conv2d_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_9/kernel
{
#conv2d_9/kernel/Read/ReadVariableOpReadVariableOpconv2d_9/kernel*&
_output_shapes
:*
dtype0
r
conv2d_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_9/bias
k
!conv2d_9/bias/Read/ReadVariableOpReadVariableOpconv2d_9/bias*
_output_shapes
:*
dtype0

conv2d_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_10/kernel
}
$conv2d_10/kernel/Read/ReadVariableOpReadVariableOpconv2d_10/kernel*&
_output_shapes
:*
dtype0
t
conv2d_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_10/bias
m
"conv2d_10/bias/Read/ReadVariableOpReadVariableOpconv2d_10/bias*
_output_shapes
:*
dtype0

normalization_4/meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_namenormalization_4/mean
y
(normalization_4/mean/Read/ReadVariableOpReadVariableOpnormalization_4/mean*
_output_shapes
:*
dtype0

normalization_4/varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_namenormalization_4/variance

,normalization_4/variance/Read/ReadVariableOpReadVariableOpnormalization_4/variance*
_output_shapes
:*
dtype0
~
normalization_4/countVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *&
shared_namenormalization_4/count
w
)normalization_4/count/Read/ReadVariableOpReadVariableOpnormalization_4/count*
_output_shapes
: *
dtype0	
u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	À@*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	À@*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:@*
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:@ *
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
: *
dtype0
x
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: 0*
shared_namedense_2/kernel
q
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes

: 0*
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:0*
dtype0
x
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:0*
shared_namedense_3/kernel
q
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes

:0*
dtype0
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:*
dtype0
x
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_4/kernel
q
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel*
_output_shapes

:*
dtype0
p
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_4/bias
i
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes
:*
dtype0
h

Nadam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
Nadam/iter
a
Nadam/iter/Read/ReadVariableOpReadVariableOp
Nadam/iter*
_output_shapes
: *
dtype0	
l
Nadam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameNadam/beta_1
e
 Nadam/beta_1/Read/ReadVariableOpReadVariableOpNadam/beta_1*
_output_shapes
: *
dtype0
l
Nadam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameNadam/beta_2
e
 Nadam/beta_2/Read/ReadVariableOpReadVariableOpNadam/beta_2*
_output_shapes
: *
dtype0
j
Nadam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameNadam/decay
c
Nadam/decay/Read/ReadVariableOpReadVariableOpNadam/decay*
_output_shapes
: *
dtype0
z
Nadam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameNadam/learning_rate
s
'Nadam/learning_rate/Read/ReadVariableOpReadVariableOpNadam/learning_rate*
_output_shapes
: *
dtype0
|
Nadam/momentum_cacheVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameNadam/momentum_cache
u
(Nadam/momentum_cache/Read/ReadVariableOpReadVariableOpNadam/momentum_cache*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
t
true_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nametrue_positives
m
"true_positives/Read/ReadVariableOpReadVariableOptrue_positives*
_output_shapes
:*
dtype0
v
false_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namefalse_positives
o
#false_positives/Read/ReadVariableOpReadVariableOpfalse_positives*
_output_shapes
:*
dtype0
x
true_positives_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nametrue_positives_1
q
$true_positives_1/Read/ReadVariableOpReadVariableOptrue_positives_1*
_output_shapes
:*
dtype0
v
false_negativesVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namefalse_negatives
o
#false_negatives/Read/ReadVariableOpReadVariableOpfalse_negatives*
_output_shapes
:*
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0

Nadam/conv2d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameNadam/conv2d/kernel/m

)Nadam/conv2d/kernel/m/Read/ReadVariableOpReadVariableOpNadam/conv2d/kernel/m*&
_output_shapes
: *
dtype0
~
Nadam/conv2d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameNadam/conv2d/bias/m
w
'Nadam/conv2d/bias/m/Read/ReadVariableOpReadVariableOpNadam/conv2d/bias/m*
_output_shapes
: *
dtype0

Nadam/conv2d_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameNadam/conv2d_1/kernel/m

+Nadam/conv2d_1/kernel/m/Read/ReadVariableOpReadVariableOpNadam/conv2d_1/kernel/m*&
_output_shapes
: *
dtype0

Nadam/conv2d_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameNadam/conv2d_1/bias/m
{
)Nadam/conv2d_1/bias/m/Read/ReadVariableOpReadVariableOpNadam/conv2d_1/bias/m*
_output_shapes
:*
dtype0

Nadam/conv2d_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameNadam/conv2d_2/kernel/m

+Nadam/conv2d_2/kernel/m/Read/ReadVariableOpReadVariableOpNadam/conv2d_2/kernel/m*&
_output_shapes
:*
dtype0

Nadam/conv2d_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameNadam/conv2d_2/bias/m
{
)Nadam/conv2d_2/bias/m/Read/ReadVariableOpReadVariableOpNadam/conv2d_2/bias/m*
_output_shapes
:*
dtype0

Nadam/conv2d_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameNadam/conv2d_3/kernel/m

+Nadam/conv2d_3/kernel/m/Read/ReadVariableOpReadVariableOpNadam/conv2d_3/kernel/m*&
_output_shapes
:*
dtype0

Nadam/conv2d_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameNadam/conv2d_3/bias/m
{
)Nadam/conv2d_3/bias/m/Read/ReadVariableOpReadVariableOpNadam/conv2d_3/bias/m*
_output_shapes
:*
dtype0

Nadam/conv2d_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameNadam/conv2d_4/kernel/m

+Nadam/conv2d_4/kernel/m/Read/ReadVariableOpReadVariableOpNadam/conv2d_4/kernel/m*&
_output_shapes
:*
dtype0

Nadam/conv2d_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameNadam/conv2d_4/bias/m
{
)Nadam/conv2d_4/bias/m/Read/ReadVariableOpReadVariableOpNadam/conv2d_4/bias/m*
_output_shapes
:*
dtype0

Nadam/conv2d_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameNadam/conv2d_5/kernel/m

+Nadam/conv2d_5/kernel/m/Read/ReadVariableOpReadVariableOpNadam/conv2d_5/kernel/m*&
_output_shapes
:*
dtype0

Nadam/conv2d_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameNadam/conv2d_5/bias/m
{
)Nadam/conv2d_5/bias/m/Read/ReadVariableOpReadVariableOpNadam/conv2d_5/bias/m*
_output_shapes
:*
dtype0

Nadam/conv2d_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameNadam/conv2d_6/kernel/m

+Nadam/conv2d_6/kernel/m/Read/ReadVariableOpReadVariableOpNadam/conv2d_6/kernel/m*&
_output_shapes
:*
dtype0

Nadam/conv2d_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameNadam/conv2d_6/bias/m
{
)Nadam/conv2d_6/bias/m/Read/ReadVariableOpReadVariableOpNadam/conv2d_6/bias/m*
_output_shapes
:*
dtype0

Nadam/conv2d_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameNadam/conv2d_7/kernel/m

+Nadam/conv2d_7/kernel/m/Read/ReadVariableOpReadVariableOpNadam/conv2d_7/kernel/m*&
_output_shapes
:*
dtype0

Nadam/conv2d_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameNadam/conv2d_7/bias/m
{
)Nadam/conv2d_7/bias/m/Read/ReadVariableOpReadVariableOpNadam/conv2d_7/bias/m*
_output_shapes
:*
dtype0

Nadam/conv2d_8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameNadam/conv2d_8/kernel/m

+Nadam/conv2d_8/kernel/m/Read/ReadVariableOpReadVariableOpNadam/conv2d_8/kernel/m*&
_output_shapes
:*
dtype0

Nadam/conv2d_8/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameNadam/conv2d_8/bias/m
{
)Nadam/conv2d_8/bias/m/Read/ReadVariableOpReadVariableOpNadam/conv2d_8/bias/m*
_output_shapes
:*
dtype0

Nadam/conv2d_9/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameNadam/conv2d_9/kernel/m

+Nadam/conv2d_9/kernel/m/Read/ReadVariableOpReadVariableOpNadam/conv2d_9/kernel/m*&
_output_shapes
:*
dtype0

Nadam/conv2d_9/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameNadam/conv2d_9/bias/m
{
)Nadam/conv2d_9/bias/m/Read/ReadVariableOpReadVariableOpNadam/conv2d_9/bias/m*
_output_shapes
:*
dtype0

Nadam/conv2d_10/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameNadam/conv2d_10/kernel/m

,Nadam/conv2d_10/kernel/m/Read/ReadVariableOpReadVariableOpNadam/conv2d_10/kernel/m*&
_output_shapes
:*
dtype0

Nadam/conv2d_10/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameNadam/conv2d_10/bias/m
}
*Nadam/conv2d_10/bias/m/Read/ReadVariableOpReadVariableOpNadam/conv2d_10/bias/m*
_output_shapes
:*
dtype0

Nadam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	À@*%
shared_nameNadam/dense/kernel/m
~
(Nadam/dense/kernel/m/Read/ReadVariableOpReadVariableOpNadam/dense/kernel/m*
_output_shapes
:	À@*
dtype0
|
Nadam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_nameNadam/dense/bias/m
u
&Nadam/dense/bias/m/Read/ReadVariableOpReadVariableOpNadam/dense/bias/m*
_output_shapes
:@*
dtype0

Nadam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *'
shared_nameNadam/dense_1/kernel/m

*Nadam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpNadam/dense_1/kernel/m*
_output_shapes

:@ *
dtype0

Nadam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameNadam/dense_1/bias/m
y
(Nadam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpNadam/dense_1/bias/m*
_output_shapes
: *
dtype0

Nadam/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: 0*'
shared_nameNadam/dense_2/kernel/m

*Nadam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpNadam/dense_2/kernel/m*
_output_shapes

: 0*
dtype0

Nadam/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*%
shared_nameNadam/dense_2/bias/m
y
(Nadam/dense_2/bias/m/Read/ReadVariableOpReadVariableOpNadam/dense_2/bias/m*
_output_shapes
:0*
dtype0

Nadam/dense_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:0*'
shared_nameNadam/dense_3/kernel/m

*Nadam/dense_3/kernel/m/Read/ReadVariableOpReadVariableOpNadam/dense_3/kernel/m*
_output_shapes

:0*
dtype0

Nadam/dense_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameNadam/dense_3/bias/m
y
(Nadam/dense_3/bias/m/Read/ReadVariableOpReadVariableOpNadam/dense_3/bias/m*
_output_shapes
:*
dtype0

Nadam/dense_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameNadam/dense_4/kernel/m

*Nadam/dense_4/kernel/m/Read/ReadVariableOpReadVariableOpNadam/dense_4/kernel/m*
_output_shapes

:*
dtype0

Nadam/dense_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameNadam/dense_4/bias/m
y
(Nadam/dense_4/bias/m/Read/ReadVariableOpReadVariableOpNadam/dense_4/bias/m*
_output_shapes
:*
dtype0

Nadam/conv2d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameNadam/conv2d/kernel/v

)Nadam/conv2d/kernel/v/Read/ReadVariableOpReadVariableOpNadam/conv2d/kernel/v*&
_output_shapes
: *
dtype0
~
Nadam/conv2d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameNadam/conv2d/bias/v
w
'Nadam/conv2d/bias/v/Read/ReadVariableOpReadVariableOpNadam/conv2d/bias/v*
_output_shapes
: *
dtype0

Nadam/conv2d_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameNadam/conv2d_1/kernel/v

+Nadam/conv2d_1/kernel/v/Read/ReadVariableOpReadVariableOpNadam/conv2d_1/kernel/v*&
_output_shapes
: *
dtype0

Nadam/conv2d_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameNadam/conv2d_1/bias/v
{
)Nadam/conv2d_1/bias/v/Read/ReadVariableOpReadVariableOpNadam/conv2d_1/bias/v*
_output_shapes
:*
dtype0

Nadam/conv2d_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameNadam/conv2d_2/kernel/v

+Nadam/conv2d_2/kernel/v/Read/ReadVariableOpReadVariableOpNadam/conv2d_2/kernel/v*&
_output_shapes
:*
dtype0

Nadam/conv2d_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameNadam/conv2d_2/bias/v
{
)Nadam/conv2d_2/bias/v/Read/ReadVariableOpReadVariableOpNadam/conv2d_2/bias/v*
_output_shapes
:*
dtype0

Nadam/conv2d_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameNadam/conv2d_3/kernel/v

+Nadam/conv2d_3/kernel/v/Read/ReadVariableOpReadVariableOpNadam/conv2d_3/kernel/v*&
_output_shapes
:*
dtype0

Nadam/conv2d_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameNadam/conv2d_3/bias/v
{
)Nadam/conv2d_3/bias/v/Read/ReadVariableOpReadVariableOpNadam/conv2d_3/bias/v*
_output_shapes
:*
dtype0

Nadam/conv2d_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameNadam/conv2d_4/kernel/v

+Nadam/conv2d_4/kernel/v/Read/ReadVariableOpReadVariableOpNadam/conv2d_4/kernel/v*&
_output_shapes
:*
dtype0

Nadam/conv2d_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameNadam/conv2d_4/bias/v
{
)Nadam/conv2d_4/bias/v/Read/ReadVariableOpReadVariableOpNadam/conv2d_4/bias/v*
_output_shapes
:*
dtype0

Nadam/conv2d_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameNadam/conv2d_5/kernel/v

+Nadam/conv2d_5/kernel/v/Read/ReadVariableOpReadVariableOpNadam/conv2d_5/kernel/v*&
_output_shapes
:*
dtype0

Nadam/conv2d_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameNadam/conv2d_5/bias/v
{
)Nadam/conv2d_5/bias/v/Read/ReadVariableOpReadVariableOpNadam/conv2d_5/bias/v*
_output_shapes
:*
dtype0

Nadam/conv2d_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameNadam/conv2d_6/kernel/v

+Nadam/conv2d_6/kernel/v/Read/ReadVariableOpReadVariableOpNadam/conv2d_6/kernel/v*&
_output_shapes
:*
dtype0

Nadam/conv2d_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameNadam/conv2d_6/bias/v
{
)Nadam/conv2d_6/bias/v/Read/ReadVariableOpReadVariableOpNadam/conv2d_6/bias/v*
_output_shapes
:*
dtype0

Nadam/conv2d_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameNadam/conv2d_7/kernel/v

+Nadam/conv2d_7/kernel/v/Read/ReadVariableOpReadVariableOpNadam/conv2d_7/kernel/v*&
_output_shapes
:*
dtype0

Nadam/conv2d_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameNadam/conv2d_7/bias/v
{
)Nadam/conv2d_7/bias/v/Read/ReadVariableOpReadVariableOpNadam/conv2d_7/bias/v*
_output_shapes
:*
dtype0

Nadam/conv2d_8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameNadam/conv2d_8/kernel/v

+Nadam/conv2d_8/kernel/v/Read/ReadVariableOpReadVariableOpNadam/conv2d_8/kernel/v*&
_output_shapes
:*
dtype0

Nadam/conv2d_8/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameNadam/conv2d_8/bias/v
{
)Nadam/conv2d_8/bias/v/Read/ReadVariableOpReadVariableOpNadam/conv2d_8/bias/v*
_output_shapes
:*
dtype0

Nadam/conv2d_9/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameNadam/conv2d_9/kernel/v

+Nadam/conv2d_9/kernel/v/Read/ReadVariableOpReadVariableOpNadam/conv2d_9/kernel/v*&
_output_shapes
:*
dtype0

Nadam/conv2d_9/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameNadam/conv2d_9/bias/v
{
)Nadam/conv2d_9/bias/v/Read/ReadVariableOpReadVariableOpNadam/conv2d_9/bias/v*
_output_shapes
:*
dtype0

Nadam/conv2d_10/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameNadam/conv2d_10/kernel/v

,Nadam/conv2d_10/kernel/v/Read/ReadVariableOpReadVariableOpNadam/conv2d_10/kernel/v*&
_output_shapes
:*
dtype0

Nadam/conv2d_10/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameNadam/conv2d_10/bias/v
}
*Nadam/conv2d_10/bias/v/Read/ReadVariableOpReadVariableOpNadam/conv2d_10/bias/v*
_output_shapes
:*
dtype0

Nadam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	À@*%
shared_nameNadam/dense/kernel/v
~
(Nadam/dense/kernel/v/Read/ReadVariableOpReadVariableOpNadam/dense/kernel/v*
_output_shapes
:	À@*
dtype0
|
Nadam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_nameNadam/dense/bias/v
u
&Nadam/dense/bias/v/Read/ReadVariableOpReadVariableOpNadam/dense/bias/v*
_output_shapes
:@*
dtype0

Nadam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *'
shared_nameNadam/dense_1/kernel/v

*Nadam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpNadam/dense_1/kernel/v*
_output_shapes

:@ *
dtype0

Nadam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameNadam/dense_1/bias/v
y
(Nadam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpNadam/dense_1/bias/v*
_output_shapes
: *
dtype0

Nadam/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: 0*'
shared_nameNadam/dense_2/kernel/v

*Nadam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpNadam/dense_2/kernel/v*
_output_shapes

: 0*
dtype0

Nadam/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*%
shared_nameNadam/dense_2/bias/v
y
(Nadam/dense_2/bias/v/Read/ReadVariableOpReadVariableOpNadam/dense_2/bias/v*
_output_shapes
:0*
dtype0

Nadam/dense_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:0*'
shared_nameNadam/dense_3/kernel/v

*Nadam/dense_3/kernel/v/Read/ReadVariableOpReadVariableOpNadam/dense_3/kernel/v*
_output_shapes

:0*
dtype0

Nadam/dense_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameNadam/dense_3/bias/v
y
(Nadam/dense_3/bias/v/Read/ReadVariableOpReadVariableOpNadam/dense_3/bias/v*
_output_shapes
:*
dtype0

Nadam/dense_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameNadam/dense_4/kernel/v

*Nadam/dense_4/kernel/v/Read/ReadVariableOpReadVariableOpNadam/dense_4/kernel/v*
_output_shapes

:*
dtype0

Nadam/dense_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameNadam/dense_4/bias/v
y
(Nadam/dense_4/bias/v/Read/ReadVariableOpReadVariableOpNadam/dense_4/bias/v*
_output_shapes
:*
dtype0
j
ConstConst*&
_output_shapes
:*
dtype0*%
valueB*    
l
Const_1Const*&
_output_shapes
:*
dtype0*%
valueB*  ?
l
Const_2Const*&
_output_shapes
:*
dtype0*%
valueB*    
l
Const_3Const*&
_output_shapes
:*
dtype0*%
valueB*  ?
l
Const_4Const*&
_output_shapes
:*
dtype0*%
valueB*    
l
Const_5Const*&
_output_shapes
:*
dtype0*%
valueB*  ?
l
Const_6Const*&
_output_shapes
:*
dtype0*%
valueB*    
l
Const_7Const*&
_output_shapes
:*
dtype0*%
valueB*  ?
l
Const_8Const*&
_output_shapes
:*
dtype0*%
valueB*    
l
Const_9Const*&
_output_shapes
:*
dtype0*%
valueB*  ?

NoOpNoOp
ÿ
Const_10Const"/device:CPU:0*
_output_shapes
: *
dtype0*Êþ
value¿þB»þ B³þ
	
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
layer-5
layer-6
layer_with_weights-5
layer-7
	layer_with_weights-6
	layer-8

layer_with_weights-7

layer-9
layer_with_weights-8
layer-10
layer-11
layer-12
layer_with_weights-9
layer-13
layer_with_weights-10
layer-14
layer_with_weights-11
layer-15
layer_with_weights-12
layer-16
layer-17
layer_with_weights-13
layer-18
layer_with_weights-14
layer-19
layer-20
layer_with_weights-15
layer-21
layer-22
layer_with_weights-16
layer-23
layer_with_weights-17
layer-24
layer_with_weights-18
layer-25
layer_with_weights-19
layer-26
layer_with_weights-20
layer-27
	optimizer

signatures
#_self_saveable_object_factories
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses
&_default_save_signature*
Î
'
_keep_axis
(_reduce_axis
)_reduce_axis_mask
*_broadcast_shape
+mean
+
adapt_mean
,variance
,adapt_variance
	-count
#._self_saveable_object_factories
/	keras_api*
Ë

0kernel
1bias
#2_self_saveable_object_factories
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses*
Ë

9kernel
:bias
#;_self_saveable_object_factories
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses*
Î
B
_keep_axis
C_reduce_axis
D_reduce_axis_mask
E_broadcast_shape
Fmean
F
adapt_mean
Gvariance
Gadapt_variance
	Hcount
#I_self_saveable_object_factories
J	keras_api*
Ë

Kkernel
Lbias
#M_self_saveable_object_factories
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses*
³
#T_self_saveable_object_factories
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses* 
Ê
#[_self_saveable_object_factories
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`_random_generator
a__call__
*b&call_and_return_all_conditional_losses* 
Ë

ckernel
dbias
#e_self_saveable_object_factories
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j__call__
*k&call_and_return_all_conditional_losses*
Ë

lkernel
mbias
#n_self_saveable_object_factories
o	variables
ptrainable_variables
qregularization_losses
r	keras_api
s__call__
*t&call_and_return_all_conditional_losses*
Î
u
_keep_axis
v_reduce_axis
w_reduce_axis_mask
x_broadcast_shape
ymean
y
adapt_mean
zvariance
zadapt_variance
	{count
#|_self_saveable_object_factories
}	keras_api*
Ò

~kernel
bias
$_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*
º
$_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 
Ò
$_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
+&call_and_return_all_conditional_losses* 
Ô
kernel
	bias
$_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*
Ô
kernel
	 bias
$¡_self_saveable_object_factories
¢	variables
£trainable_variables
¤regularization_losses
¥	keras_api
¦__call__
+§&call_and_return_all_conditional_losses*
Ù
¨
_keep_axis
©_reduce_axis
ª_reduce_axis_mask
«_broadcast_shape
	¬mean
¬
adapt_mean
­variance
­adapt_variance

®count
$¯_self_saveable_object_factories
°	keras_api*
Ô
±kernel
	²bias
$³_self_saveable_object_factories
´	variables
µtrainable_variables
¶regularization_losses
·	keras_api
¸__call__
+¹&call_and_return_all_conditional_losses*
º
$º_self_saveable_object_factories
»	variables
¼trainable_variables
½regularization_losses
¾	keras_api
¿__call__
+À&call_and_return_all_conditional_losses* 
Ô
Ákernel
	Âbias
$Ã_self_saveable_object_factories
Ä	variables
Åtrainable_variables
Æregularization_losses
Ç	keras_api
È__call__
+É&call_and_return_all_conditional_losses*
Ô
Êkernel
	Ëbias
$Ì_self_saveable_object_factories
Í	variables
Îtrainable_variables
Ïregularization_losses
Ð	keras_api
Ñ__call__
+Ò&call_and_return_all_conditional_losses*
º
$Ó_self_saveable_object_factories
Ô	variables
Õtrainable_variables
Öregularization_losses
×	keras_api
Ø__call__
+Ù&call_and_return_all_conditional_losses* 
Ù
Ú
_keep_axis
Û_reduce_axis
Ü_reduce_axis_mask
Ý_broadcast_shape
	Þmean
Þ
adapt_mean
ßvariance
ßadapt_variance

àcount
$á_self_saveable_object_factories
â	keras_api*
º
$ã_self_saveable_object_factories
ä	variables
åtrainable_variables
æregularization_losses
ç	keras_api
è__call__
+é&call_and_return_all_conditional_losses* 
Ô
êkernel
	ëbias
$ì_self_saveable_object_factories
í	variables
îtrainable_variables
ïregularization_losses
ð	keras_api
ñ__call__
+ò&call_and_return_all_conditional_losses*
Ô
ókernel
	ôbias
$õ_self_saveable_object_factories
ö	variables
÷trainable_variables
øregularization_losses
ù	keras_api
ú__call__
+û&call_and_return_all_conditional_losses*
Ô
ükernel
	ýbias
$þ_self_saveable_object_factories
ÿ	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*
Ô
kernel
	bias
$_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*
Ô
kernel
	bias
$_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*

	iter
beta_1
beta_2

decay
learning_rate
momentum_cache0m¶1m·9m¸:m¹KmºLm»cm¼dm½lm¾mm¿~mÀmÁ	mÂ	mÃ	mÄ	 mÅ	±mÆ	²mÇ	ÁmÈ	ÂmÉ	ÊmÊ	ËmË	êmÌ	ëmÍ	ómÎ	ômÏ	ümÐ	ýmÑ	mÒ	mÓ	mÔ	mÕ0vÖ1v×9vØ:vÙKvÚLvÛcvÜdvÝlvÞmvß~vàvá	vâ	vã	vä	 vå	±væ	²vç	Ávè	Âvé	Êvê	Ëvë	êvì	ëví	óvî	ôvï	üvð	ývñ	vò	vó	vô	võ*

serving_default* 
* 

+0
,1
-2
03
14
95
:6
F7
G8
H9
K10
L11
c12
d13
l14
m15
y16
z17
{18
~19
20
21
22
23
 24
¬25
­26
®27
±28
²29
Á30
Â31
Ê32
Ë33
Þ34
ß35
à36
ê37
ë38
ó39
ô40
ü41
ý42
43
44
45
46*

00
11
92
:3
K4
L5
c6
d7
l8
m9
~10
11
12
13
14
 15
±16
²17
Á18
Â19
Ê20
Ë21
ê22
ë23
ó24
ô25
ü26
ý27
28
29
30
31*
J
0
1
 2
¡3
¢4
£5
¤6
¥7
¦8* 
µ
§non_trainable_variables
¨layers
©metrics
 ªlayer_regularization_losses
«layer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
&_default_save_signature
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
`Z
VARIABLE_VALUEnormalization/mean4layer_with_weights-0/mean/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEnormalization/variance8layer_with_weights-0/variance/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEnormalization/count5layer_with_weights-0/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
]W
VARIABLE_VALUEconv2d/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEconv2d/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

00
11*

00
11*


0* 

¬non_trainable_variables
­layers
®metrics
 ¯layer_regularization_losses
°layer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEconv2d_1/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_1/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

90
:1*

90
:1*


0* 

±non_trainable_variables
²layers
³metrics
 ´layer_regularization_losses
µlayer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
b\
VARIABLE_VALUEnormalization_1/mean4layer_with_weights-3/mean/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEnormalization_1/variance8layer_with_weights-3/variance/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEnormalization_1/count5layer_with_weights-3/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
_Y
VARIABLE_VALUEconv2d_2/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_2/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

K0
L1*

K0
L1*


 0* 

¶non_trainable_variables
·layers
¸metrics
 ¹layer_regularization_losses
ºlayer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 

»non_trainable_variables
¼layers
½metrics
 ¾layer_regularization_losses
¿layer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 

Ànon_trainable_variables
Álayers
Âmetrics
 Ãlayer_regularization_losses
Älayer_metrics
\	variables
]trainable_variables
^regularization_losses
a__call__
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses* 
* 
* 
* 
_Y
VARIABLE_VALUEconv2d_3/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_3/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

c0
d1*

c0
d1*


¡0* 

Ånon_trainable_variables
Ælayers
Çmetrics
 Èlayer_regularization_losses
Élayer_metrics
f	variables
gtrainable_variables
hregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEconv2d_4/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_4/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

l0
m1*

l0
m1*


¢0* 

Ênon_trainable_variables
Ëlayers
Ìmetrics
 Ílayer_regularization_losses
Îlayer_metrics
o	variables
ptrainable_variables
qregularization_losses
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
b\
VARIABLE_VALUEnormalization_2/mean4layer_with_weights-7/mean/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEnormalization_2/variance8layer_with_weights-7/variance/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEnormalization_2/count5layer_with_weights-7/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
_Y
VARIABLE_VALUEconv2d_5/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_5/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

~0
1*

~0
1*


£0* 

Ïnon_trainable_variables
Ðlayers
Ñmetrics
 Òlayer_regularization_losses
Ólayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 

Ônon_trainable_variables
Õlayers
Ömetrics
 ×layer_regularization_losses
Ølayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 

Ùnon_trainable_variables
Úlayers
Ûmetrics
 Ülayer_regularization_losses
Ýlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 
* 
* 
* 
_Y
VARIABLE_VALUEconv2d_6/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_6/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*

0
1*


¤0* 

Þnon_trainable_variables
ßlayers
àmetrics
 álayer_regularization_losses
âlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
`Z
VARIABLE_VALUEconv2d_7/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_7/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
 1*

0
 1*


¥0* 

ãnon_trainable_variables
älayers
åmetrics
 ælayer_regularization_losses
çlayer_metrics
¢	variables
£trainable_variables
¤regularization_losses
¦__call__
+§&call_and_return_all_conditional_losses
'§"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
c]
VARIABLE_VALUEnormalization_3/mean5layer_with_weights-11/mean/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUEnormalization_3/variance9layer_with_weights-11/variance/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEnormalization_3/count6layer_with_weights-11/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
`Z
VARIABLE_VALUEconv2d_8/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_8/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

±0
²1*

±0
²1*


¦0* 

ènon_trainable_variables
élayers
êmetrics
 ëlayer_regularization_losses
ìlayer_metrics
´	variables
µtrainable_variables
¶regularization_losses
¸__call__
+¹&call_and_return_all_conditional_losses
'¹"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 

ínon_trainable_variables
îlayers
ïmetrics
 ðlayer_regularization_losses
ñlayer_metrics
»	variables
¼trainable_variables
½regularization_losses
¿__call__
+À&call_and_return_all_conditional_losses
'À"call_and_return_conditional_losses* 
* 
* 
`Z
VARIABLE_VALUEconv2d_9/kernel7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_9/bias5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

Á0
Â1*

Á0
Â1*
* 

ònon_trainable_variables
ólayers
ômetrics
 õlayer_regularization_losses
ölayer_metrics
Ä	variables
Åtrainable_variables
Æregularization_losses
È__call__
+É&call_and_return_all_conditional_losses
'É"call_and_return_conditional_losses*
* 
* 
a[
VARIABLE_VALUEconv2d_10/kernel7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_10/bias5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

Ê0
Ë1*

Ê0
Ë1*
* 

÷non_trainable_variables
ølayers
ùmetrics
 úlayer_regularization_losses
ûlayer_metrics
Í	variables
Îtrainable_variables
Ïregularization_losses
Ñ__call__
+Ò&call_and_return_all_conditional_losses
'Ò"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 

ünon_trainable_variables
ýlayers
þmetrics
 ÿlayer_regularization_losses
layer_metrics
Ô	variables
Õtrainable_variables
Öregularization_losses
Ø__call__
+Ù&call_and_return_all_conditional_losses
'Ù"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
c]
VARIABLE_VALUEnormalization_4/mean5layer_with_weights-15/mean/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUEnormalization_4/variance9layer_with_weights-15/variance/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEnormalization_4/count6layer_with_weights-15/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
ä	variables
åtrainable_variables
æregularization_losses
è__call__
+é&call_and_return_all_conditional_losses
'é"call_and_return_conditional_losses* 
* 
* 
]W
VARIABLE_VALUEdense/kernel7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUE
dense/bias5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

ê0
ë1*

ê0
ë1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
í	variables
îtrainable_variables
ïregularization_losses
ñ__call__
+ò&call_and_return_all_conditional_losses
'ò"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_1/kernel7layer_with_weights-17/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_1/bias5layer_with_weights-17/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

ó0
ô1*

ó0
ô1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
ö	variables
÷trainable_variables
øregularization_losses
ú__call__
+û&call_and_return_all_conditional_losses
'û"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_2/kernel7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_2/bias5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

ü0
ý1*

ü0
ý1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
ÿ	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_3/kernel7layer_with_weights-19/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_3/bias5layer_with_weights-19/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*

0
1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_4/kernel7layer_with_weights-20/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_4/bias5layer_with_weights-20/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*

0
1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
MG
VARIABLE_VALUE
Nadam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUENadam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUENadam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUENadam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUENadam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUENadam/momentum_cache3optimizer/momentum_cache/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
x
+0
,1
-2
F3
G4
H5
y6
z7
{8
¬9
­10
®11
Þ12
ß13
à14*
Ú
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27*
$
0
 1
¡2
¢3*
* 
* 
* 
* 
* 


0* 
* 
* 
* 
* 


0* 
* 
* 
* 
* 


 0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 


¡0* 
* 
* 
* 
* 


¢0* 
* 
* 
* 
* 


£0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 


¤0* 
* 
* 
* 
* 


¥0* 
* 
* 
* 
* 


¦0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<

£total

¤count
¥	variables
¦	keras_api*
`
§
thresholds
¨true_positives
©false_positives
ª	variables
«	keras_api*
`
¬
thresholds
­true_positives
®false_negatives
¯	variables
°	keras_api*
M

±total

²count
³
_fn_kwargs
´	variables
µ	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

£0
¤1*

¥	variables*
* 
e_
VARIABLE_VALUEtrue_positives=keras_api/metrics/1/true_positives/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEfalse_positives>keras_api/metrics/1/false_positives/.ATTRIBUTES/VARIABLE_VALUE*

¨0
©1*

ª	variables*
* 
ga
VARIABLE_VALUEtrue_positives_1=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEfalse_negatives>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUE*

­0
®1*

¯	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

±0
²1*

´	variables*
{
VARIABLE_VALUENadam/conv2d/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUENadam/conv2d/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUENadam/conv2d_1/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/conv2d_1/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUENadam/conv2d_2/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/conv2d_2/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUENadam/conv2d_3/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/conv2d_3/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUENadam/conv2d_4/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/conv2d_4/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUENadam/conv2d_5/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/conv2d_5/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUENadam/conv2d_6/kernel/mRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/conv2d_6/bias/mPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUENadam/conv2d_7/kernel/mSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUENadam/conv2d_7/bias/mQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUENadam/conv2d_8/kernel/mSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUENadam/conv2d_8/bias/mQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUENadam/conv2d_9/kernel/mSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUENadam/conv2d_9/bias/mQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUENadam/conv2d_10/kernel/mSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUENadam/conv2d_10/bias/mQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUENadam/dense/kernel/mSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUENadam/dense/bias/mQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUENadam/dense_1/kernel/mSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/dense_1/bias/mQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUENadam/dense_2/kernel/mSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/dense_2/bias/mQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUENadam/dense_3/kernel/mSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/dense_3/bias/mQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUENadam/dense_4/kernel/mSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/dense_4/bias/mQlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUENadam/conv2d/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUENadam/conv2d/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUENadam/conv2d_1/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/conv2d_1/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUENadam/conv2d_2/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/conv2d_2/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUENadam/conv2d_3/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/conv2d_3/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUENadam/conv2d_4/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/conv2d_4/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUENadam/conv2d_5/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/conv2d_5/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUENadam/conv2d_6/kernel/vRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/conv2d_6/bias/vPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUENadam/conv2d_7/kernel/vSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUENadam/conv2d_7/bias/vQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUENadam/conv2d_8/kernel/vSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUENadam/conv2d_8/bias/vQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUENadam/conv2d_9/kernel/vSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUENadam/conv2d_9/bias/vQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUENadam/conv2d_10/kernel/vSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUENadam/conv2d_10/bias/vQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUENadam/dense/kernel/vSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUENadam/dense/bias/vQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUENadam/dense_1/kernel/vSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/dense_1/bias/vQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUENadam/dense_2/kernel/vSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/dense_2/bias/vQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUENadam/dense_3/kernel/vSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/dense_3/bias/vQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUENadam/dense_4/kernel/vSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/dense_4/bias/vQlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

serving_default_input_1Placeholder*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²*
dtype0*&
shape:ÿÿÿÿÿÿÿÿÿÚ²
Ç
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1ConstConst_1conv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasConst_2Const_3conv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasConst_4Const_5conv2d_5/kernelconv2d_5/biasconv2d_6/kernelconv2d_6/biasconv2d_7/kernelconv2d_7/biasConst_6Const_7conv2d_8/kernelconv2d_8/biasconv2d_9/kernelconv2d_9/biasconv2d_10/kernelconv2d_10/biasConst_8Const_9dense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/biasdense_4/kerneldense_4/bias*6
Tin/
-2+*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*B
_read_only_resource_inputs$
" 	
!"#$%&'()**0
config_proto 

CPU

GPU2*0J 8 *-
f(R&
$__inference_signature_wrapper_189758
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ö*
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename&normalization/mean/Read/ReadVariableOp*normalization/variance/Read/ReadVariableOp'normalization/count/Read/ReadVariableOp!conv2d/kernel/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp(normalization_1/mean/Read/ReadVariableOp,normalization_1/variance/Read/ReadVariableOp)normalization_1/count/Read/ReadVariableOp#conv2d_2/kernel/Read/ReadVariableOp!conv2d_2/bias/Read/ReadVariableOp#conv2d_3/kernel/Read/ReadVariableOp!conv2d_3/bias/Read/ReadVariableOp#conv2d_4/kernel/Read/ReadVariableOp!conv2d_4/bias/Read/ReadVariableOp(normalization_2/mean/Read/ReadVariableOp,normalization_2/variance/Read/ReadVariableOp)normalization_2/count/Read/ReadVariableOp#conv2d_5/kernel/Read/ReadVariableOp!conv2d_5/bias/Read/ReadVariableOp#conv2d_6/kernel/Read/ReadVariableOp!conv2d_6/bias/Read/ReadVariableOp#conv2d_7/kernel/Read/ReadVariableOp!conv2d_7/bias/Read/ReadVariableOp(normalization_3/mean/Read/ReadVariableOp,normalization_3/variance/Read/ReadVariableOp)normalization_3/count/Read/ReadVariableOp#conv2d_8/kernel/Read/ReadVariableOp!conv2d_8/bias/Read/ReadVariableOp#conv2d_9/kernel/Read/ReadVariableOp!conv2d_9/bias/Read/ReadVariableOp$conv2d_10/kernel/Read/ReadVariableOp"conv2d_10/bias/Read/ReadVariableOp(normalization_4/mean/Read/ReadVariableOp,normalization_4/variance/Read/ReadVariableOp)normalization_4/count/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOp"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOpNadam/iter/Read/ReadVariableOp Nadam/beta_1/Read/ReadVariableOp Nadam/beta_2/Read/ReadVariableOpNadam/decay/Read/ReadVariableOp'Nadam/learning_rate/Read/ReadVariableOp(Nadam/momentum_cache/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp"true_positives/Read/ReadVariableOp#false_positives/Read/ReadVariableOp$true_positives_1/Read/ReadVariableOp#false_negatives/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp)Nadam/conv2d/kernel/m/Read/ReadVariableOp'Nadam/conv2d/bias/m/Read/ReadVariableOp+Nadam/conv2d_1/kernel/m/Read/ReadVariableOp)Nadam/conv2d_1/bias/m/Read/ReadVariableOp+Nadam/conv2d_2/kernel/m/Read/ReadVariableOp)Nadam/conv2d_2/bias/m/Read/ReadVariableOp+Nadam/conv2d_3/kernel/m/Read/ReadVariableOp)Nadam/conv2d_3/bias/m/Read/ReadVariableOp+Nadam/conv2d_4/kernel/m/Read/ReadVariableOp)Nadam/conv2d_4/bias/m/Read/ReadVariableOp+Nadam/conv2d_5/kernel/m/Read/ReadVariableOp)Nadam/conv2d_5/bias/m/Read/ReadVariableOp+Nadam/conv2d_6/kernel/m/Read/ReadVariableOp)Nadam/conv2d_6/bias/m/Read/ReadVariableOp+Nadam/conv2d_7/kernel/m/Read/ReadVariableOp)Nadam/conv2d_7/bias/m/Read/ReadVariableOp+Nadam/conv2d_8/kernel/m/Read/ReadVariableOp)Nadam/conv2d_8/bias/m/Read/ReadVariableOp+Nadam/conv2d_9/kernel/m/Read/ReadVariableOp)Nadam/conv2d_9/bias/m/Read/ReadVariableOp,Nadam/conv2d_10/kernel/m/Read/ReadVariableOp*Nadam/conv2d_10/bias/m/Read/ReadVariableOp(Nadam/dense/kernel/m/Read/ReadVariableOp&Nadam/dense/bias/m/Read/ReadVariableOp*Nadam/dense_1/kernel/m/Read/ReadVariableOp(Nadam/dense_1/bias/m/Read/ReadVariableOp*Nadam/dense_2/kernel/m/Read/ReadVariableOp(Nadam/dense_2/bias/m/Read/ReadVariableOp*Nadam/dense_3/kernel/m/Read/ReadVariableOp(Nadam/dense_3/bias/m/Read/ReadVariableOp*Nadam/dense_4/kernel/m/Read/ReadVariableOp(Nadam/dense_4/bias/m/Read/ReadVariableOp)Nadam/conv2d/kernel/v/Read/ReadVariableOp'Nadam/conv2d/bias/v/Read/ReadVariableOp+Nadam/conv2d_1/kernel/v/Read/ReadVariableOp)Nadam/conv2d_1/bias/v/Read/ReadVariableOp+Nadam/conv2d_2/kernel/v/Read/ReadVariableOp)Nadam/conv2d_2/bias/v/Read/ReadVariableOp+Nadam/conv2d_3/kernel/v/Read/ReadVariableOp)Nadam/conv2d_3/bias/v/Read/ReadVariableOp+Nadam/conv2d_4/kernel/v/Read/ReadVariableOp)Nadam/conv2d_4/bias/v/Read/ReadVariableOp+Nadam/conv2d_5/kernel/v/Read/ReadVariableOp)Nadam/conv2d_5/bias/v/Read/ReadVariableOp+Nadam/conv2d_6/kernel/v/Read/ReadVariableOp)Nadam/conv2d_6/bias/v/Read/ReadVariableOp+Nadam/conv2d_7/kernel/v/Read/ReadVariableOp)Nadam/conv2d_7/bias/v/Read/ReadVariableOp+Nadam/conv2d_8/kernel/v/Read/ReadVariableOp)Nadam/conv2d_8/bias/v/Read/ReadVariableOp+Nadam/conv2d_9/kernel/v/Read/ReadVariableOp)Nadam/conv2d_9/bias/v/Read/ReadVariableOp,Nadam/conv2d_10/kernel/v/Read/ReadVariableOp*Nadam/conv2d_10/bias/v/Read/ReadVariableOp(Nadam/dense/kernel/v/Read/ReadVariableOp&Nadam/dense/bias/v/Read/ReadVariableOp*Nadam/dense_1/kernel/v/Read/ReadVariableOp(Nadam/dense_1/bias/v/Read/ReadVariableOp*Nadam/dense_2/kernel/v/Read/ReadVariableOp(Nadam/dense_2/bias/v/Read/ReadVariableOp*Nadam/dense_3/kernel/v/Read/ReadVariableOp(Nadam/dense_3/bias/v/Read/ReadVariableOp*Nadam/dense_4/kernel/v/Read/ReadVariableOp(Nadam/dense_4/bias/v/Read/ReadVariableOpConst_10*
Tin
2						*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *(
f#R!
__inference__traced_save_190783

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamenormalization/meannormalization/variancenormalization/countconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasnormalization_1/meannormalization_1/variancenormalization_1/countconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasnormalization_2/meannormalization_2/variancenormalization_2/countconv2d_5/kernelconv2d_5/biasconv2d_6/kernelconv2d_6/biasconv2d_7/kernelconv2d_7/biasnormalization_3/meannormalization_3/variancenormalization_3/countconv2d_8/kernelconv2d_8/biasconv2d_9/kernelconv2d_9/biasconv2d_10/kernelconv2d_10/biasnormalization_4/meannormalization_4/variancenormalization_4/countdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/biasdense_4/kerneldense_4/bias
Nadam/iterNadam/beta_1Nadam/beta_2Nadam/decayNadam/learning_rateNadam/momentum_cachetotalcounttrue_positivesfalse_positivestrue_positives_1false_negativestotal_1count_1Nadam/conv2d/kernel/mNadam/conv2d/bias/mNadam/conv2d_1/kernel/mNadam/conv2d_1/bias/mNadam/conv2d_2/kernel/mNadam/conv2d_2/bias/mNadam/conv2d_3/kernel/mNadam/conv2d_3/bias/mNadam/conv2d_4/kernel/mNadam/conv2d_4/bias/mNadam/conv2d_5/kernel/mNadam/conv2d_5/bias/mNadam/conv2d_6/kernel/mNadam/conv2d_6/bias/mNadam/conv2d_7/kernel/mNadam/conv2d_7/bias/mNadam/conv2d_8/kernel/mNadam/conv2d_8/bias/mNadam/conv2d_9/kernel/mNadam/conv2d_9/bias/mNadam/conv2d_10/kernel/mNadam/conv2d_10/bias/mNadam/dense/kernel/mNadam/dense/bias/mNadam/dense_1/kernel/mNadam/dense_1/bias/mNadam/dense_2/kernel/mNadam/dense_2/bias/mNadam/dense_3/kernel/mNadam/dense_3/bias/mNadam/dense_4/kernel/mNadam/dense_4/bias/mNadam/conv2d/kernel/vNadam/conv2d/bias/vNadam/conv2d_1/kernel/vNadam/conv2d_1/bias/vNadam/conv2d_2/kernel/vNadam/conv2d_2/bias/vNadam/conv2d_3/kernel/vNadam/conv2d_3/bias/vNadam/conv2d_4/kernel/vNadam/conv2d_4/bias/vNadam/conv2d_5/kernel/vNadam/conv2d_5/bias/vNadam/conv2d_6/kernel/vNadam/conv2d_6/bias/vNadam/conv2d_7/kernel/vNadam/conv2d_7/bias/vNadam/conv2d_8/kernel/vNadam/conv2d_8/bias/vNadam/conv2d_9/kernel/vNadam/conv2d_9/bias/vNadam/conv2d_10/kernel/vNadam/conv2d_10/bias/vNadam/dense/kernel/vNadam/dense/bias/vNadam/dense_1/kernel/vNadam/dense_1/bias/vNadam/dense_2/kernel/vNadam/dense_2/bias/vNadam/dense_3/kernel/vNadam/dense_3/bias/vNadam/dense_4/kernel/vNadam/dense_4/bias/v*
Tin
2~*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__traced_restore_191168÷÷

i
M__inference_average_pooling2d_layer_call_and_return_conditional_losses_187476

inputs
identity«
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Å
_
C__inference_flatten_layer_call_and_return_conditional_losses_187775

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ñ

'__inference_conv2d_layer_call_fn_189773

inputs!
unknown: 
	unknown_0: 
identity¢StatefulPartitionedCallä
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ² *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_187509y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ² `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿÚ²: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_190121

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Å
_
C__inference_flatten_layer_call_and_return_conditional_losses_190180

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¿
N
2__inference_average_pooling2d_layer_call_fn_190164

inputs
identityÞ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_average_pooling2d_layer_call_and_return_conditional_losses_187476
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
í

)__inference_conv2d_7_layer_call_fn_190064

inputs!
unknown:
	unknown_0:
identity¢StatefulPartitionedCallä
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_7_layer_call_and_return_conditional_losses_187693w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ6,: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,
 
_user_specified_nameinputs
É
¨
D__inference_conv2d_6_layer_call_and_return_conditional_losses_187671

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp¢(kernel/Regularizer/Square/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,
(kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:q
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,¢
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ6,: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,
 
_user_specified_nameinputs
Â

&__inference_dense_layer_call_fn_190189

inputs
unknown:	À@
	unknown_0:@
identity¢StatefulPartitionedCallÙ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_187787o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs
í

)__inference_conv2d_3_layer_call_fn_189903

inputs!
unknown:
	unknown_0:
identity¢StatefulPartitionedCallä
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_3_layer_call_and_return_conditional_losses_187590w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿmY: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY
 
_user_specified_nameinputs
ô
Ñ	
+__inference_sequential_layer_call_fn_188000
input_1
unknown
	unknown_0#
	unknown_1: 
	unknown_2: #
	unknown_3: 
	unknown_4:
	unknown_5
	unknown_6#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:

unknown_13

unknown_14$

unknown_15:

unknown_16:$

unknown_17:

unknown_18:$

unknown_19:

unknown_20:

unknown_21

unknown_22$

unknown_23:

unknown_24:$

unknown_25:

unknown_26:$

unknown_27:

unknown_28:

unknown_29

unknown_30

unknown_31:	À@

unknown_32:@

unknown_33:@ 

unknown_34: 

unknown_35: 0

unknown_36:0

unknown_37:0

unknown_38:

unknown_39:

unknown_40:
identity¢StatefulPartitionedCallü
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40*6
Tin/
-2+*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*B
_read_only_resource_inputs$
" 	
!"#$%&'()**0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_187913o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*¦
_input_shapes
:ÿÿÿÿÿÿÿÿÿÚ²::: : : : ::: : : : : : ::: : : : : : ::: : : : : : ::: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²
!
_user_specified_name	input_1:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::, (
&
_output_shapes
:
¿Ê
Þ
F__inference_sequential_layer_call_and_return_conditional_losses_188483

inputs
normalization_sub_y
normalization_sqrt_x'
conv2d_188313: 
conv2d_188315: )
conv2d_1_188318: 
conv2d_1_188320:
normalization_1_sub_y
normalization_1_sqrt_x)
conv2d_2_188330:
conv2d_2_188332:)
conv2d_3_188337:
conv2d_3_188339:)
conv2d_4_188342:
conv2d_4_188344:
normalization_2_sub_y
normalization_2_sqrt_x)
conv2d_5_188354:
conv2d_5_188356:)
conv2d_6_188361:
conv2d_6_188363:)
conv2d_7_188366:
conv2d_7_188368:
normalization_3_sub_y
normalization_3_sqrt_x)
conv2d_8_188378:
conv2d_8_188380:)
conv2d_9_188384:
conv2d_9_188386:*
conv2d_10_188389:
conv2d_10_188391:
normalization_4_sub_y
normalization_4_sqrt_x
dense_188403:	À@
dense_188405:@ 
dense_1_188408:@ 
dense_1_188410:  
dense_2_188413: 0
dense_2_188415:0 
dense_3_188418:0
dense_3_188420: 
dense_4_188423:
dense_4_188425:
identity¢conv2d/StatefulPartitionedCall¢ conv2d_1/StatefulPartitionedCall¢!conv2d_10/StatefulPartitionedCall¢ conv2d_2/StatefulPartitionedCall¢ conv2d_3/StatefulPartitionedCall¢ conv2d_4/StatefulPartitionedCall¢ conv2d_5/StatefulPartitionedCall¢ conv2d_6/StatefulPartitionedCall¢ conv2d_7/StatefulPartitionedCall¢ conv2d_8/StatefulPartitionedCall¢ conv2d_9/StatefulPartitionedCall¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall¢dense_2/StatefulPartitionedCall¢dense_3/StatefulPartitionedCall¢dense_4/StatefulPartitionedCall¢dropout/StatefulPartitionedCall¢!dropout_1/StatefulPartitionedCall¢(kernel/Regularizer/Square/ReadVariableOp¢*kernel/Regularizer_1/Square/ReadVariableOp¢*kernel/Regularizer_2/Square/ReadVariableOp¢*kernel/Regularizer_3/Square/ReadVariableOp¢*kernel/Regularizer_4/Square/ReadVariableOp¢*kernel/Regularizer_5/Square/ReadVariableOp¢*kernel/Regularizer_6/Square/ReadVariableOp¢*kernel/Regularizer_7/Square/ReadVariableOp¢*kernel/Regularizer_8/Square/ReadVariableOpq
normalization/subSubinputsnormalization_sub_y*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²a
normalization/SqrtSqrtnormalization_sqrt_x*
T0*&
_output_shapes
:\
normalization/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *¿Ö3
normalization/MaximumMaximumnormalization/Sqrt:y:0 normalization/Maximum/y:output:0*
T0*&
_output_shapes
:
normalization/truedivRealDivnormalization/sub:z:0normalization/Maximum:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²
conv2d/StatefulPartitionedCallStatefulPartitionedCallnormalization/truediv:z:0conv2d_188313conv2d_188315*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ² *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_187509
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_188318conv2d_1_188320*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_1_layer_call_and_return_conditional_losses_187531
normalization_1/subSub)conv2d_1/StatefulPartitionedCall:output:0normalization_1_sub_y*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²e
normalization_1/SqrtSqrtnormalization_1_sqrt_x*
T0*&
_output_shapes
:^
normalization_1/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *¿Ö3
normalization_1/MaximumMaximumnormalization_1/Sqrt:y:0"normalization_1/Maximum/y:output:0*
T0*&
_output_shapes
:
normalization_1/truedivRealDivnormalization_1/sub:z:0normalization_1/Maximum:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCallnormalization_1/truediv:z:0conv2d_2_188330conv2d_2_188332*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_2_layer_call_and_return_conditional_losses_187560ð
max_pooling2d/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_187440ñ
dropout/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_188179
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0conv2d_3_188337conv2d_3_188339*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_3_layer_call_and_return_conditional_losses_187590
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0conv2d_4_188342conv2d_4_188344*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_187612
normalization_2/subSub)conv2d_4/StatefulPartitionedCall:output:0normalization_2_sub_y*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmYe
normalization_2/SqrtSqrtnormalization_2_sqrt_x*
T0*&
_output_shapes
:^
normalization_2/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *¿Ö3
normalization_2/MaximumMaximumnormalization_2/Sqrt:y:0"normalization_2/Maximum/y:output:0*
T0*&
_output_shapes
:
normalization_2/truedivRealDivnormalization_2/sub:z:0normalization_2/Maximum:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCallnormalization_2/truediv:z:0conv2d_5_188354conv2d_5_188356*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_187641ô
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_187452
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_188126
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0conv2d_6_188361conv2d_6_188363*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_6_layer_call_and_return_conditional_losses_187671
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0conv2d_7_188366conv2d_7_188368*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_7_layer_call_and_return_conditional_losses_187693
normalization_3/subSub)conv2d_7/StatefulPartitionedCall:output:0normalization_3_sub_y*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,e
normalization_3/SqrtSqrtnormalization_3_sqrt_x*
T0*&
_output_shapes
:^
normalization_3/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *¿Ö3
normalization_3/MaximumMaximumnormalization_3/Sqrt:y:0"normalization_3/Maximum/y:output:0*
T0*&
_output_shapes
:
normalization_3/truedivRealDivnormalization_3/sub:z:0normalization_3/Maximum:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCallnormalization_3/truediv:z:0conv2d_8_188378conv2d_8_188380*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_8_layer_call_and_return_conditional_losses_187722ô
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_187464
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0conv2d_9_188384conv2d_9_188386*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_9_layer_call_and_return_conditional_losses_187739¢
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0conv2d_10_188389conv2d_10_188391*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_10_layer_call_and_return_conditional_losses_187755ù
!average_pooling2d/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_average_pooling2d_layer_call_and_return_conditional_losses_187476
normalization_4/subSub*average_pooling2d/PartitionedCall:output:0normalization_4_sub_y*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
normalization_4/SqrtSqrtnormalization_4_sqrt_x*
T0*&
_output_shapes
:^
normalization_4/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *¿Ö3
normalization_4/MaximumMaximumnormalization_4/Sqrt:y:0"normalization_4/Maximum/y:output:0*
T0*&
_output_shapes
:
normalization_4/truedivRealDivnormalization_4/sub:z:0normalization_4/Maximum:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
flatten/PartitionedCallPartitionedCallnormalization_4/truediv:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_187775
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_188403dense_188405*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_187787
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_188408dense_1_188410*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_187803
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_188413dense_2_188415*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_187819
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_188418dense_3_188420*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_187835
dense_4/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0dense_4_188423dense_4_188425*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_187852~
(kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_188313*&
_output_shapes
: *
dtype0
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: q
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
*kernel/Regularizer_1/Square/ReadVariableOpReadVariableOpconv2d_1_188318*&
_output_shapes
: *
dtype0
kernel/Regularizer_1/SquareSquare2kernel/Regularizer_1/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: s
kernel/Regularizer_1/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer_1/SumSumkernel/Regularizer_1/Square:y:0#kernel/Regularizer_1/Const:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer_1/mulMul#kernel/Regularizer_1/mul/x:output:0!kernel/Regularizer_1/Sum:output:0*
T0*
_output_shapes
: 
*kernel/Regularizer_2/Square/ReadVariableOpReadVariableOpconv2d_2_188330*&
_output_shapes
:*
dtype0
kernel/Regularizer_2/SquareSquare2kernel/Regularizer_2/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:s
kernel/Regularizer_2/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer_2/SumSumkernel/Regularizer_2/Square:y:0#kernel/Regularizer_2/Const:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_2/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer_2/mulMul#kernel/Regularizer_2/mul/x:output:0!kernel/Regularizer_2/Sum:output:0*
T0*
_output_shapes
: 
*kernel/Regularizer_3/Square/ReadVariableOpReadVariableOpconv2d_3_188337*&
_output_shapes
:*
dtype0
kernel/Regularizer_3/SquareSquare2kernel/Regularizer_3/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:s
kernel/Regularizer_3/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer_3/SumSumkernel/Regularizer_3/Square:y:0#kernel/Regularizer_3/Const:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_3/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer_3/mulMul#kernel/Regularizer_3/mul/x:output:0!kernel/Regularizer_3/Sum:output:0*
T0*
_output_shapes
: 
*kernel/Regularizer_4/Square/ReadVariableOpReadVariableOpconv2d_4_188342*&
_output_shapes
:*
dtype0
kernel/Regularizer_4/SquareSquare2kernel/Regularizer_4/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:s
kernel/Regularizer_4/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer_4/SumSumkernel/Regularizer_4/Square:y:0#kernel/Regularizer_4/Const:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_4/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer_4/mulMul#kernel/Regularizer_4/mul/x:output:0!kernel/Regularizer_4/Sum:output:0*
T0*
_output_shapes
: 
*kernel/Regularizer_5/Square/ReadVariableOpReadVariableOpconv2d_5_188354*&
_output_shapes
:*
dtype0
kernel/Regularizer_5/SquareSquare2kernel/Regularizer_5/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:s
kernel/Regularizer_5/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer_5/SumSumkernel/Regularizer_5/Square:y:0#kernel/Regularizer_5/Const:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_5/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer_5/mulMul#kernel/Regularizer_5/mul/x:output:0!kernel/Regularizer_5/Sum:output:0*
T0*
_output_shapes
: 
*kernel/Regularizer_6/Square/ReadVariableOpReadVariableOpconv2d_6_188361*&
_output_shapes
:*
dtype0
kernel/Regularizer_6/SquareSquare2kernel/Regularizer_6/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:s
kernel/Regularizer_6/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer_6/SumSumkernel/Regularizer_6/Square:y:0#kernel/Regularizer_6/Const:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_6/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer_6/mulMul#kernel/Regularizer_6/mul/x:output:0!kernel/Regularizer_6/Sum:output:0*
T0*
_output_shapes
: 
*kernel/Regularizer_7/Square/ReadVariableOpReadVariableOpconv2d_7_188366*&
_output_shapes
:*
dtype0
kernel/Regularizer_7/SquareSquare2kernel/Regularizer_7/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:s
kernel/Regularizer_7/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer_7/SumSumkernel/Regularizer_7/Square:y:0#kernel/Regularizer_7/Const:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_7/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer_7/mulMul#kernel/Regularizer_7/mul/x:output:0!kernel/Regularizer_7/Sum:output:0*
T0*
_output_shapes
: 
*kernel/Regularizer_8/Square/ReadVariableOpReadVariableOpconv2d_8_188378*&
_output_shapes
:*
dtype0
kernel/Regularizer_8/SquareSquare2kernel/Regularizer_8/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:s
kernel/Regularizer_8/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer_8/SumSumkernel/Regularizer_8/Square:y:0#kernel/Regularizer_8/Const:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_8/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer_8/mulMul#kernel/Regularizer_8/mul/x:output:0!kernel/Regularizer_8/Sum:output:0*
T0*
_output_shapes
: w
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÇ
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall"^conv2d_10/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall)^kernel/Regularizer/Square/ReadVariableOp+^kernel/Regularizer_1/Square/ReadVariableOp+^kernel/Regularizer_2/Square/ReadVariableOp+^kernel/Regularizer_3/Square/ReadVariableOp+^kernel/Regularizer_4/Square/ReadVariableOp+^kernel/Regularizer_5/Square/ReadVariableOp+^kernel/Regularizer_6/Square/ReadVariableOp+^kernel/Regularizer_7/Square/ReadVariableOp+^kernel/Regularizer_8/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*¦
_input_shapes
:ÿÿÿÿÿÿÿÿÿÚ²::: : : : ::: : : : : : ::: : : : : : ::: : : : : : ::: : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp2X
*kernel/Regularizer_1/Square/ReadVariableOp*kernel/Regularizer_1/Square/ReadVariableOp2X
*kernel/Regularizer_2/Square/ReadVariableOp*kernel/Regularizer_2/Square/ReadVariableOp2X
*kernel/Regularizer_3/Square/ReadVariableOp*kernel/Regularizer_3/Square/ReadVariableOp2X
*kernel/Regularizer_4/Square/ReadVariableOp*kernel/Regularizer_4/Square/ReadVariableOp2X
*kernel/Regularizer_5/Square/ReadVariableOp*kernel/Regularizer_5/Square/ReadVariableOp2X
*kernel/Regularizer_6/Square/ReadVariableOp*kernel/Regularizer_6/Square/ReadVariableOp2X
*kernel/Regularizer_7/Square/ReadVariableOp*kernel/Regularizer_7/Square/ReadVariableOp2X
*kernel/Regularizer_8/Square/ReadVariableOp*kernel/Regularizer_8/Square/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::, (
&
_output_shapes
:
É
¨
D__inference_conv2d_3_layer_call_and_return_conditional_losses_189919

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp¢(kernel/Regularizer/Square/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY
(kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:q
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY¢
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿmY: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY
 
_user_specified_nameinputs
Ó
¨
D__inference_conv2d_2_layer_call_and_return_conditional_losses_187560

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp¢(kernel/Regularizer/Square/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²
(kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:q
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: i
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²¢
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿÚ²: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²
 
_user_specified_nameinputs
ö
a
C__inference_dropout_layer_call_and_return_conditional_losses_189876

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmYc

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿmY:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY
 
_user_specified_nameinputs

c
*__inference_dropout_1_layer_call_fn_190001

inputs
identity¢StatefulPartitionedCallË
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_188126w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ6,22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,
 
_user_specified_nameinputs
°
D
(__inference_flatten_layer_call_fn_190174

inputs
identity²
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_187775a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
í

)__inference_conv2d_6_layer_call_fn_190033

inputs!
unknown:
	unknown_0:
identity¢StatefulPartitionedCallä
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_6_layer_call_and_return_conditional_losses_187671w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ6,: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,
 
_user_specified_nameinputs
µ

§
__inference_loss_fn_2_190309K
1kernel_regularizer_square_readvariableop_resource:
identity¢(kernel/Regularizer/Square/ReadVariableOp¢
(kernel/Regularizer/Square/ReadVariableOpReadVariableOp1kernel_regularizer_square_readvariableop_resource*&
_output_shapes
:*
dtype0
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:q
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: X
IdentityIdentitykernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: q
NoOpNoOp)^kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp
É
¨
D__inference_conv2d_6_layer_call_and_return_conditional_losses_190049

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp¢(kernel/Regularizer/Square/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,
(kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:q
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,¢
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ6,: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,
 
_user_specified_nameinputs
æü
 
F__inference_sequential_layer_call_and_return_conditional_losses_189667

inputs
normalization_sub_y
normalization_sqrt_x?
%conv2d_conv2d_readvariableop_resource: 4
&conv2d_biasadd_readvariableop_resource: A
'conv2d_1_conv2d_readvariableop_resource: 6
(conv2d_1_biasadd_readvariableop_resource:
normalization_1_sub_y
normalization_1_sqrt_xA
'conv2d_2_conv2d_readvariableop_resource:6
(conv2d_2_biasadd_readvariableop_resource:A
'conv2d_3_conv2d_readvariableop_resource:6
(conv2d_3_biasadd_readvariableop_resource:A
'conv2d_4_conv2d_readvariableop_resource:6
(conv2d_4_biasadd_readvariableop_resource:
normalization_2_sub_y
normalization_2_sqrt_xA
'conv2d_5_conv2d_readvariableop_resource:6
(conv2d_5_biasadd_readvariableop_resource:A
'conv2d_6_conv2d_readvariableop_resource:6
(conv2d_6_biasadd_readvariableop_resource:A
'conv2d_7_conv2d_readvariableop_resource:6
(conv2d_7_biasadd_readvariableop_resource:
normalization_3_sub_y
normalization_3_sqrt_xA
'conv2d_8_conv2d_readvariableop_resource:6
(conv2d_8_biasadd_readvariableop_resource:A
'conv2d_9_conv2d_readvariableop_resource:6
(conv2d_9_biasadd_readvariableop_resource:B
(conv2d_10_conv2d_readvariableop_resource:7
)conv2d_10_biasadd_readvariableop_resource:
normalization_4_sub_y
normalization_4_sqrt_x7
$dense_matmul_readvariableop_resource:	À@3
%dense_biasadd_readvariableop_resource:@8
&dense_1_matmul_readvariableop_resource:@ 5
'dense_1_biasadd_readvariableop_resource: 8
&dense_2_matmul_readvariableop_resource: 05
'dense_2_biasadd_readvariableop_resource:08
&dense_3_matmul_readvariableop_resource:05
'dense_3_biasadd_readvariableop_resource:8
&dense_4_matmul_readvariableop_resource:5
'dense_4_biasadd_readvariableop_resource:
identity¢conv2d/BiasAdd/ReadVariableOp¢conv2d/Conv2D/ReadVariableOp¢conv2d_1/BiasAdd/ReadVariableOp¢conv2d_1/Conv2D/ReadVariableOp¢ conv2d_10/BiasAdd/ReadVariableOp¢conv2d_10/Conv2D/ReadVariableOp¢conv2d_2/BiasAdd/ReadVariableOp¢conv2d_2/Conv2D/ReadVariableOp¢conv2d_3/BiasAdd/ReadVariableOp¢conv2d_3/Conv2D/ReadVariableOp¢conv2d_4/BiasAdd/ReadVariableOp¢conv2d_4/Conv2D/ReadVariableOp¢conv2d_5/BiasAdd/ReadVariableOp¢conv2d_5/Conv2D/ReadVariableOp¢conv2d_6/BiasAdd/ReadVariableOp¢conv2d_6/Conv2D/ReadVariableOp¢conv2d_7/BiasAdd/ReadVariableOp¢conv2d_7/Conv2D/ReadVariableOp¢conv2d_8/BiasAdd/ReadVariableOp¢conv2d_8/Conv2D/ReadVariableOp¢conv2d_9/BiasAdd/ReadVariableOp¢conv2d_9/Conv2D/ReadVariableOp¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOp¢dense_1/BiasAdd/ReadVariableOp¢dense_1/MatMul/ReadVariableOp¢dense_2/BiasAdd/ReadVariableOp¢dense_2/MatMul/ReadVariableOp¢dense_3/BiasAdd/ReadVariableOp¢dense_3/MatMul/ReadVariableOp¢dense_4/BiasAdd/ReadVariableOp¢dense_4/MatMul/ReadVariableOp¢(kernel/Regularizer/Square/ReadVariableOp¢*kernel/Regularizer_1/Square/ReadVariableOp¢*kernel/Regularizer_2/Square/ReadVariableOp¢*kernel/Regularizer_3/Square/ReadVariableOp¢*kernel/Regularizer_4/Square/ReadVariableOp¢*kernel/Regularizer_5/Square/ReadVariableOp¢*kernel/Regularizer_6/Square/ReadVariableOp¢*kernel/Regularizer_7/Square/ReadVariableOp¢*kernel/Regularizer_8/Square/ReadVariableOpq
normalization/subSubinputsnormalization_sub_y*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²a
normalization/SqrtSqrtnormalization_sqrt_x*
T0*&
_output_shapes
:\
normalization/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *¿Ö3
normalization/MaximumMaximumnormalization/Sqrt:y:0 normalization/Maximum/y:output:0*
T0*&
_output_shapes
:
normalization/truedivRealDivnormalization/sub:z:0normalization/Maximum:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0¼
conv2d/Conv2DConv2Dnormalization/truediv:z:0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ² *
paddingSAME*
strides

conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ² 
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0¾
conv2d_1/Conv2DConv2Dconv2d/BiasAdd:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²*
paddingSAME*
strides

conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²
normalization_1/subSubconv2d_1/BiasAdd:output:0normalization_1_sub_y*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²e
normalization_1/SqrtSqrtnormalization_1_sqrt_x*
T0*&
_output_shapes
:^
normalization_1/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *¿Ö3
normalization_1/MaximumMaximumnormalization_1/Sqrt:y:0"normalization_1/Maximum/y:output:0*
T0*&
_output_shapes
:
normalization_1/truedivRealDivnormalization_1/sub:z:0normalization_1/Maximum:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Â
conv2d_2/Conv2DConv2Dnormalization_1/truediv:z:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²*
paddingSAME*
strides

conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²¨
max_pooling2d/MaxPoolMaxPoolconv2d_2/BiasAdd:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY*
ksize
*
paddingVALID*
strides
Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
dropout/dropout/MulMulmax_pooling2d/MaxPool:output:0dropout/dropout/Const:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmYc
dropout/dropout/ShapeShapemax_pooling2d/MaxPool:output:0*
T0*
_output_shapes
:¤
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Æ
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0¾
conv2d_3/Conv2DConv2Ddropout/dropout/Mul_1:z:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY*
paddingSAME*
strides

conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0¾
conv2d_4/Conv2DConv2Dconv2d_3/BiasAdd:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY*
paddingSAME*
strides

conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY
normalization_2/subSubconv2d_4/BiasAdd:output:0normalization_2_sub_y*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmYe
normalization_2/SqrtSqrtnormalization_2_sqrt_x*
T0*&
_output_shapes
:^
normalization_2/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *¿Ö3
normalization_2/MaximumMaximumnormalization_2/Sqrt:y:0"normalization_2/Maximum/y:output:0*
T0*&
_output_shapes
:
normalization_2/truedivRealDivnormalization_2/sub:z:0normalization_2/Maximum:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0À
conv2d_5/Conv2DConv2Dnormalization_2/truediv:z:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY*
paddingSAME*
strides

conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmYª
max_pooling2d_1/MaxPoolMaxPoolconv2d_5/BiasAdd:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,*
ksize
*
paddingVALID*
strides
\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
dropout_1/dropout/MulMul max_pooling2d_1/MaxPool:output:0 dropout_1/dropout/Const:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,g
dropout_1/dropout/ShapeShape max_pooling2d_1/MaxPool:output:0*
T0*
_output_shapes
:¨
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,*
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Ì
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,
conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0À
conv2d_6/Conv2DConv2Ddropout_1/dropout/Mul_1:z:0&conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,*
paddingSAME*
strides

conv2d_6/BiasAdd/ReadVariableOpReadVariableOp(conv2d_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_6/BiasAddBiasAddconv2d_6/Conv2D:output:0'conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,
conv2d_7/Conv2D/ReadVariableOpReadVariableOp'conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0¾
conv2d_7/Conv2DConv2Dconv2d_6/BiasAdd:output:0&conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,*
paddingSAME*
strides

conv2d_7/BiasAdd/ReadVariableOpReadVariableOp(conv2d_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_7/BiasAddBiasAddconv2d_7/Conv2D:output:0'conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,
normalization_3/subSubconv2d_7/BiasAdd:output:0normalization_3_sub_y*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,e
normalization_3/SqrtSqrtnormalization_3_sqrt_x*
T0*&
_output_shapes
:^
normalization_3/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *¿Ö3
normalization_3/MaximumMaximumnormalization_3/Sqrt:y:0"normalization_3/Maximum/y:output:0*
T0*&
_output_shapes
:
normalization_3/truedivRealDivnormalization_3/sub:z:0normalization_3/Maximum:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,
conv2d_8/Conv2D/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0À
conv2d_8/Conv2DConv2Dnormalization_3/truediv:z:0&conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,*
paddingSAME*
strides

conv2d_8/BiasAdd/ReadVariableOpReadVariableOp(conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_8/BiasAddBiasAddconv2d_8/Conv2D:output:0'conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,ª
max_pooling2d_2/MaxPoolMaxPoolconv2d_8/BiasAdd:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides

conv2d_9/Conv2D/ReadVariableOpReadVariableOp'conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Æ
conv2d_9/Conv2DConv2D max_pooling2d_2/MaxPool:output:0&conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	*
paddingVALID*
strides

conv2d_9/BiasAdd/ReadVariableOpReadVariableOp(conv2d_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_9/BiasAddBiasAddconv2d_9/Conv2D:output:0'conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
conv2d_10/Conv2D/ReadVariableOpReadVariableOp(conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Á
conv2d_10/Conv2DConv2Dconv2d_9/BiasAdd:output:0'conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
paddingVALID*
strides

 conv2d_10/BiasAdd/ReadVariableOpReadVariableOp)conv2d_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_10/BiasAddBiasAddconv2d_10/Conv2D:output:0(conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¶
average_pooling2d/AvgPoolAvgPoolconv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides

normalization_4/subSub"average_pooling2d/AvgPool:output:0normalization_4_sub_y*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
normalization_4/SqrtSqrtnormalization_4_sqrt_x*
T0*&
_output_shapes
:^
normalization_4/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *¿Ö3
normalization_4/MaximumMaximumnormalization_4/Sqrt:y:0"normalization_4/Maximum/y:output:0*
T0*&
_output_shapes
:
normalization_4/truedivRealDivnormalization_4/sub:z:0normalization_4/Maximum:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@  
flatten/ReshapeReshapenormalization_4/truediv:z:0flatten/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	À@*
dtype0
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0
dense_1/MatMulMatMuldense/BiasAdd:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

: 0*
dtype0
dense_2/MatMulMatMuldense_1/BiasAdd:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:0*
dtype0
dense_3/MatMulMatMuldense_2/BiasAdd:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_4/MatMulMatMuldense_3/BiasAdd:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
dense_4/SigmoidSigmoiddense_4/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(kernel/Regularizer/Square/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: q
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
*kernel/Regularizer_1/Square/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
kernel/Regularizer_1/SquareSquare2kernel/Regularizer_1/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: s
kernel/Regularizer_1/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer_1/SumSumkernel/Regularizer_1/Square:y:0#kernel/Regularizer_1/Const:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer_1/mulMul#kernel/Regularizer_1/mul/x:output:0!kernel/Regularizer_1/Sum:output:0*
T0*
_output_shapes
: 
*kernel/Regularizer_2/Square/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
kernel/Regularizer_2/SquareSquare2kernel/Regularizer_2/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:s
kernel/Regularizer_2/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer_2/SumSumkernel/Regularizer_2/Square:y:0#kernel/Regularizer_2/Const:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_2/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer_2/mulMul#kernel/Regularizer_2/mul/x:output:0!kernel/Regularizer_2/Sum:output:0*
T0*
_output_shapes
: 
*kernel/Regularizer_3/Square/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
kernel/Regularizer_3/SquareSquare2kernel/Regularizer_3/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:s
kernel/Regularizer_3/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer_3/SumSumkernel/Regularizer_3/Square:y:0#kernel/Regularizer_3/Const:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_3/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer_3/mulMul#kernel/Regularizer_3/mul/x:output:0!kernel/Regularizer_3/Sum:output:0*
T0*
_output_shapes
: 
*kernel/Regularizer_4/Square/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
kernel/Regularizer_4/SquareSquare2kernel/Regularizer_4/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:s
kernel/Regularizer_4/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer_4/SumSumkernel/Regularizer_4/Square:y:0#kernel/Regularizer_4/Const:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_4/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer_4/mulMul#kernel/Regularizer_4/mul/x:output:0!kernel/Regularizer_4/Sum:output:0*
T0*
_output_shapes
: 
*kernel/Regularizer_5/Square/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
kernel/Regularizer_5/SquareSquare2kernel/Regularizer_5/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:s
kernel/Regularizer_5/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer_5/SumSumkernel/Regularizer_5/Square:y:0#kernel/Regularizer_5/Const:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_5/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer_5/mulMul#kernel/Regularizer_5/mul/x:output:0!kernel/Regularizer_5/Sum:output:0*
T0*
_output_shapes
: 
*kernel/Regularizer_6/Square/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
kernel/Regularizer_6/SquareSquare2kernel/Regularizer_6/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:s
kernel/Regularizer_6/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer_6/SumSumkernel/Regularizer_6/Square:y:0#kernel/Regularizer_6/Const:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_6/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer_6/mulMul#kernel/Regularizer_6/mul/x:output:0!kernel/Regularizer_6/Sum:output:0*
T0*
_output_shapes
: 
*kernel/Regularizer_7/Square/ReadVariableOpReadVariableOp'conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
kernel/Regularizer_7/SquareSquare2kernel/Regularizer_7/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:s
kernel/Regularizer_7/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer_7/SumSumkernel/Regularizer_7/Square:y:0#kernel/Regularizer_7/Const:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_7/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer_7/mulMul#kernel/Regularizer_7/mul/x:output:0!kernel/Regularizer_7/Sum:output:0*
T0*
_output_shapes
: 
*kernel/Regularizer_8/Square/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
kernel/Regularizer_8/SquareSquare2kernel/Regularizer_8/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:s
kernel/Regularizer_8/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer_8/SumSumkernel/Regularizer_8/Square:y:0#kernel/Regularizer_8/Const:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_8/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer_8/mulMul#kernel/Regularizer_8/mul/x:output:0!kernel/Regularizer_8/Sum:output:0*
T0*
_output_shapes
: b
IdentityIdentitydense_4/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿù
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp!^conv2d_10/BiasAdd/ReadVariableOp ^conv2d_10/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp ^conv2d_6/BiasAdd/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp ^conv2d_7/BiasAdd/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp ^conv2d_8/BiasAdd/ReadVariableOp^conv2d_8/Conv2D/ReadVariableOp ^conv2d_9/BiasAdd/ReadVariableOp^conv2d_9/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp+^kernel/Regularizer_1/Square/ReadVariableOp+^kernel/Regularizer_2/Square/ReadVariableOp+^kernel/Regularizer_3/Square/ReadVariableOp+^kernel/Regularizer_4/Square/ReadVariableOp+^kernel/Regularizer_5/Square/ReadVariableOp+^kernel/Regularizer_6/Square/ReadVariableOp+^kernel/Regularizer_7/Square/ReadVariableOp+^kernel/Regularizer_8/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*¦
_input_shapes
:ÿÿÿÿÿÿÿÿÿÚ²::: : : : ::: : : : : : ::: : : : : : ::: : : : : : ::: : : : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2D
 conv2d_10/BiasAdd/ReadVariableOp conv2d_10/BiasAdd/ReadVariableOp2B
conv2d_10/Conv2D/ReadVariableOpconv2d_10/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2B
conv2d_6/BiasAdd/ReadVariableOpconv2d_6/BiasAdd/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp2B
conv2d_7/BiasAdd/ReadVariableOpconv2d_7/BiasAdd/ReadVariableOp2@
conv2d_7/Conv2D/ReadVariableOpconv2d_7/Conv2D/ReadVariableOp2B
conv2d_8/BiasAdd/ReadVariableOpconv2d_8/BiasAdd/ReadVariableOp2@
conv2d_8/Conv2D/ReadVariableOpconv2d_8/Conv2D/ReadVariableOp2B
conv2d_9/BiasAdd/ReadVariableOpconv2d_9/BiasAdd/ReadVariableOp2@
conv2d_9/Conv2D/ReadVariableOpconv2d_9/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp2X
*kernel/Regularizer_1/Square/ReadVariableOp*kernel/Regularizer_1/Square/ReadVariableOp2X
*kernel/Regularizer_2/Square/ReadVariableOp*kernel/Regularizer_2/Square/ReadVariableOp2X
*kernel/Regularizer_3/Square/ReadVariableOp*kernel/Regularizer_3/Square/ReadVariableOp2X
*kernel/Regularizer_4/Square/ReadVariableOp*kernel/Regularizer_4/Square/ReadVariableOp2X
*kernel/Regularizer_5/Square/ReadVariableOp*kernel/Regularizer_5/Square/ReadVariableOp2X
*kernel/Regularizer_6/Square/ReadVariableOp*kernel/Regularizer_6/Square/ReadVariableOp2X
*kernel/Regularizer_7/Square/ReadVariableOp*kernel/Regularizer_7/Square/ReadVariableOp2X
*kernel/Regularizer_8/Square/ReadVariableOp*kernel/Regularizer_8/Square/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::, (
&
_output_shapes
:
í

)__inference_conv2d_8_layer_call_fn_190095

inputs!
unknown:
	unknown_0:
identity¢StatefulPartitionedCallä
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_8_layer_call_and_return_conditional_losses_187722w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ6,: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,
 
_user_specified_nameinputs
¨

ý
D__inference_conv2d_9_layer_call_and_return_conditional_losses_187739

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
í

)__inference_conv2d_5_layer_call_fn_189965

inputs!
unknown:
	unknown_0:
identity¢StatefulPartitionedCallä
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_187641w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿmY: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY
 
_user_specified_nameinputs
É
¨
D__inference_conv2d_5_layer_call_and_return_conditional_losses_189981

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp¢(kernel/Regularizer/Square/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY
(kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:q
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY¢
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿmY: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_187452

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
´Ì
 
!__inference__wrapped_model_187431
input_1"
sequential_normalization_sub_y#
sequential_normalization_sqrt_xJ
0sequential_conv2d_conv2d_readvariableop_resource: ?
1sequential_conv2d_biasadd_readvariableop_resource: L
2sequential_conv2d_1_conv2d_readvariableop_resource: A
3sequential_conv2d_1_biasadd_readvariableop_resource:$
 sequential_normalization_1_sub_y%
!sequential_normalization_1_sqrt_xL
2sequential_conv2d_2_conv2d_readvariableop_resource:A
3sequential_conv2d_2_biasadd_readvariableop_resource:L
2sequential_conv2d_3_conv2d_readvariableop_resource:A
3sequential_conv2d_3_biasadd_readvariableop_resource:L
2sequential_conv2d_4_conv2d_readvariableop_resource:A
3sequential_conv2d_4_biasadd_readvariableop_resource:$
 sequential_normalization_2_sub_y%
!sequential_normalization_2_sqrt_xL
2sequential_conv2d_5_conv2d_readvariableop_resource:A
3sequential_conv2d_5_biasadd_readvariableop_resource:L
2sequential_conv2d_6_conv2d_readvariableop_resource:A
3sequential_conv2d_6_biasadd_readvariableop_resource:L
2sequential_conv2d_7_conv2d_readvariableop_resource:A
3sequential_conv2d_7_biasadd_readvariableop_resource:$
 sequential_normalization_3_sub_y%
!sequential_normalization_3_sqrt_xL
2sequential_conv2d_8_conv2d_readvariableop_resource:A
3sequential_conv2d_8_biasadd_readvariableop_resource:L
2sequential_conv2d_9_conv2d_readvariableop_resource:A
3sequential_conv2d_9_biasadd_readvariableop_resource:M
3sequential_conv2d_10_conv2d_readvariableop_resource:B
4sequential_conv2d_10_biasadd_readvariableop_resource:$
 sequential_normalization_4_sub_y%
!sequential_normalization_4_sqrt_xB
/sequential_dense_matmul_readvariableop_resource:	À@>
0sequential_dense_biasadd_readvariableop_resource:@C
1sequential_dense_1_matmul_readvariableop_resource:@ @
2sequential_dense_1_biasadd_readvariableop_resource: C
1sequential_dense_2_matmul_readvariableop_resource: 0@
2sequential_dense_2_biasadd_readvariableop_resource:0C
1sequential_dense_3_matmul_readvariableop_resource:0@
2sequential_dense_3_biasadd_readvariableop_resource:C
1sequential_dense_4_matmul_readvariableop_resource:@
2sequential_dense_4_biasadd_readvariableop_resource:
identity¢(sequential/conv2d/BiasAdd/ReadVariableOp¢'sequential/conv2d/Conv2D/ReadVariableOp¢*sequential/conv2d_1/BiasAdd/ReadVariableOp¢)sequential/conv2d_1/Conv2D/ReadVariableOp¢+sequential/conv2d_10/BiasAdd/ReadVariableOp¢*sequential/conv2d_10/Conv2D/ReadVariableOp¢*sequential/conv2d_2/BiasAdd/ReadVariableOp¢)sequential/conv2d_2/Conv2D/ReadVariableOp¢*sequential/conv2d_3/BiasAdd/ReadVariableOp¢)sequential/conv2d_3/Conv2D/ReadVariableOp¢*sequential/conv2d_4/BiasAdd/ReadVariableOp¢)sequential/conv2d_4/Conv2D/ReadVariableOp¢*sequential/conv2d_5/BiasAdd/ReadVariableOp¢)sequential/conv2d_5/Conv2D/ReadVariableOp¢*sequential/conv2d_6/BiasAdd/ReadVariableOp¢)sequential/conv2d_6/Conv2D/ReadVariableOp¢*sequential/conv2d_7/BiasAdd/ReadVariableOp¢)sequential/conv2d_7/Conv2D/ReadVariableOp¢*sequential/conv2d_8/BiasAdd/ReadVariableOp¢)sequential/conv2d_8/Conv2D/ReadVariableOp¢*sequential/conv2d_9/BiasAdd/ReadVariableOp¢)sequential/conv2d_9/Conv2D/ReadVariableOp¢'sequential/dense/BiasAdd/ReadVariableOp¢&sequential/dense/MatMul/ReadVariableOp¢)sequential/dense_1/BiasAdd/ReadVariableOp¢(sequential/dense_1/MatMul/ReadVariableOp¢)sequential/dense_2/BiasAdd/ReadVariableOp¢(sequential/dense_2/MatMul/ReadVariableOp¢)sequential/dense_3/BiasAdd/ReadVariableOp¢(sequential/dense_3/MatMul/ReadVariableOp¢)sequential/dense_4/BiasAdd/ReadVariableOp¢(sequential/dense_4/MatMul/ReadVariableOp
sequential/normalization/subSubinput_1sequential_normalization_sub_y*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²w
sequential/normalization/SqrtSqrtsequential_normalization_sqrt_x*
T0*&
_output_shapes
:g
"sequential/normalization/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *¿Ö3¬
 sequential/normalization/MaximumMaximum!sequential/normalization/Sqrt:y:0+sequential/normalization/Maximum/y:output:0*
T0*&
_output_shapes
:¯
 sequential/normalization/truedivRealDiv sequential/normalization/sub:z:0$sequential/normalization/Maximum:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ² 
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp0sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ý
sequential/conv2d/Conv2DConv2D$sequential/normalization/truediv:z:0/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ² *
paddingSAME*
strides

(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0µ
sequential/conv2d/BiasAddBiasAdd!sequential/conv2d/Conv2D:output:00sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ² ¤
)sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ß
sequential/conv2d_1/Conv2DConv2D"sequential/conv2d/BiasAdd:output:01sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²*
paddingSAME*
strides

*sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0»
sequential/conv2d_1/BiasAddBiasAdd#sequential/conv2d_1/Conv2D:output:02sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²©
sequential/normalization_1/subSub$sequential/conv2d_1/BiasAdd:output:0 sequential_normalization_1_sub_y*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²{
sequential/normalization_1/SqrtSqrt!sequential_normalization_1_sqrt_x*
T0*&
_output_shapes
:i
$sequential/normalization_1/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *¿Ö3²
"sequential/normalization_1/MaximumMaximum#sequential/normalization_1/Sqrt:y:0-sequential/normalization_1/Maximum/y:output:0*
T0*&
_output_shapes
:µ
"sequential/normalization_1/truedivRealDiv"sequential/normalization_1/sub:z:0&sequential/normalization_1/Maximum:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²¤
)sequential/conv2d_2/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0ã
sequential/conv2d_2/Conv2DConv2D&sequential/normalization_1/truediv:z:01sequential/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²*
paddingSAME*
strides

*sequential/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0»
sequential/conv2d_2/BiasAddBiasAdd#sequential/conv2d_2/Conv2D:output:02sequential/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²¾
 sequential/max_pooling2d/MaxPoolMaxPool$sequential/conv2d_2/BiasAdd:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY*
ksize
*
paddingVALID*
strides

sequential/dropout/IdentityIdentity)sequential/max_pooling2d/MaxPool:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY¤
)sequential/conv2d_3/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0ß
sequential/conv2d_3/Conv2DConv2D$sequential/dropout/Identity:output:01sequential/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY*
paddingSAME*
strides

*sequential/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¹
sequential/conv2d_3/BiasAddBiasAdd#sequential/conv2d_3/Conv2D:output:02sequential/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY¤
)sequential/conv2d_4/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0ß
sequential/conv2d_4/Conv2DConv2D$sequential/conv2d_3/BiasAdd:output:01sequential/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY*
paddingSAME*
strides

*sequential/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¹
sequential/conv2d_4/BiasAddBiasAdd#sequential/conv2d_4/Conv2D:output:02sequential/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY§
sequential/normalization_2/subSub$sequential/conv2d_4/BiasAdd:output:0 sequential_normalization_2_sub_y*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY{
sequential/normalization_2/SqrtSqrt!sequential_normalization_2_sqrt_x*
T0*&
_output_shapes
:i
$sequential/normalization_2/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *¿Ö3²
"sequential/normalization_2/MaximumMaximum#sequential/normalization_2/Sqrt:y:0-sequential/normalization_2/Maximum/y:output:0*
T0*&
_output_shapes
:³
"sequential/normalization_2/truedivRealDiv"sequential/normalization_2/sub:z:0&sequential/normalization_2/Maximum:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY¤
)sequential/conv2d_5/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0á
sequential/conv2d_5/Conv2DConv2D&sequential/normalization_2/truediv:z:01sequential/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY*
paddingSAME*
strides

*sequential/conv2d_5/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¹
sequential/conv2d_5/BiasAddBiasAdd#sequential/conv2d_5/Conv2D:output:02sequential/conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmYÀ
"sequential/max_pooling2d_1/MaxPoolMaxPool$sequential/conv2d_5/BiasAdd:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,*
ksize
*
paddingVALID*
strides

sequential/dropout_1/IdentityIdentity+sequential/max_pooling2d_1/MaxPool:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,¤
)sequential/conv2d_6/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0á
sequential/conv2d_6/Conv2DConv2D&sequential/dropout_1/Identity:output:01sequential/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,*
paddingSAME*
strides

*sequential/conv2d_6/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¹
sequential/conv2d_6/BiasAddBiasAdd#sequential/conv2d_6/Conv2D:output:02sequential/conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,¤
)sequential/conv2d_7/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0ß
sequential/conv2d_7/Conv2DConv2D$sequential/conv2d_6/BiasAdd:output:01sequential/conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,*
paddingSAME*
strides

*sequential/conv2d_7/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¹
sequential/conv2d_7/BiasAddBiasAdd#sequential/conv2d_7/Conv2D:output:02sequential/conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,§
sequential/normalization_3/subSub$sequential/conv2d_7/BiasAdd:output:0 sequential_normalization_3_sub_y*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,{
sequential/normalization_3/SqrtSqrt!sequential_normalization_3_sqrt_x*
T0*&
_output_shapes
:i
$sequential/normalization_3/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *¿Ö3²
"sequential/normalization_3/MaximumMaximum#sequential/normalization_3/Sqrt:y:0-sequential/normalization_3/Maximum/y:output:0*
T0*&
_output_shapes
:³
"sequential/normalization_3/truedivRealDiv"sequential/normalization_3/sub:z:0&sequential/normalization_3/Maximum:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,¤
)sequential/conv2d_8/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0á
sequential/conv2d_8/Conv2DConv2D&sequential/normalization_3/truediv:z:01sequential/conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,*
paddingSAME*
strides

*sequential/conv2d_8/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¹
sequential/conv2d_8/BiasAddBiasAdd#sequential/conv2d_8/Conv2D:output:02sequential/conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,À
"sequential/max_pooling2d_2/MaxPoolMaxPool$sequential/conv2d_8/BiasAdd:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
¤
)sequential/conv2d_9/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0ç
sequential/conv2d_9/Conv2DConv2D+sequential/max_pooling2d_2/MaxPool:output:01sequential/conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	*
paddingVALID*
strides

*sequential/conv2d_9/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¹
sequential/conv2d_9/BiasAddBiasAdd#sequential/conv2d_9/Conv2D:output:02sequential/conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	¦
*sequential/conv2d_10/Conv2D/ReadVariableOpReadVariableOp3sequential_conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0â
sequential/conv2d_10/Conv2DConv2D$sequential/conv2d_9/BiasAdd:output:02sequential/conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
paddingVALID*
strides

+sequential/conv2d_10/BiasAdd/ReadVariableOpReadVariableOp4sequential_conv2d_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¼
sequential/conv2d_10/BiasAddBiasAdd$sequential/conv2d_10/Conv2D:output:03sequential/conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ì
$sequential/average_pooling2d/AvgPoolAvgPool%sequential/conv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
°
sequential/normalization_4/subSub-sequential/average_pooling2d/AvgPool:output:0 sequential_normalization_4_sub_y*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
sequential/normalization_4/SqrtSqrt!sequential_normalization_4_sqrt_x*
T0*&
_output_shapes
:i
$sequential/normalization_4/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *¿Ö3²
"sequential/normalization_4/MaximumMaximum#sequential/normalization_4/Sqrt:y:0-sequential/normalization_4/Maximum/y:output:0*
T0*&
_output_shapes
:³
"sequential/normalization_4/truedivRealDiv"sequential/normalization_4/sub:z:0&sequential/normalization_4/Maximum:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@  £
sequential/flatten/ReshapeReshape&sequential/normalization_4/truediv:z:0!sequential/flatten/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes
:	À@*
dtype0¨
sequential/dense/MatMulMatMul#sequential/flatten/Reshape:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0©
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0ª
sequential/dense_1/MatMulMatMul!sequential/dense/BiasAdd:output:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¯
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(sequential/dense_2/MatMul/ReadVariableOpReadVariableOp1sequential_dense_2_matmul_readvariableop_resource*
_output_shapes

: 0*
dtype0¬
sequential/dense_2/MatMulMatMul#sequential/dense_1/BiasAdd:output:00sequential/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0
)sequential/dense_2/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_2_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0¯
sequential/dense_2/BiasAddBiasAdd#sequential/dense_2/MatMul:product:01sequential/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0
(sequential/dense_3/MatMul/ReadVariableOpReadVariableOp1sequential_dense_3_matmul_readvariableop_resource*
_output_shapes

:0*
dtype0¬
sequential/dense_3/MatMulMatMul#sequential/dense_2/BiasAdd:output:00sequential/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)sequential/dense_3/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¯
sequential/dense_3/BiasAddBiasAdd#sequential/dense_3/MatMul:product:01sequential/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(sequential/dense_4/MatMul/ReadVariableOpReadVariableOp1sequential_dense_4_matmul_readvariableop_resource*
_output_shapes

:*
dtype0¬
sequential/dense_4/MatMulMatMul#sequential/dense_3/BiasAdd:output:00sequential/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)sequential/dense_4/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¯
sequential/dense_4/BiasAddBiasAdd#sequential/dense_4/MatMul:product:01sequential/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
sequential/dense_4/SigmoidSigmoid#sequential/dense_4/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
IdentityIdentitysequential/dense_4/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆ
NoOpNoOp)^sequential/conv2d/BiasAdd/ReadVariableOp(^sequential/conv2d/Conv2D/ReadVariableOp+^sequential/conv2d_1/BiasAdd/ReadVariableOp*^sequential/conv2d_1/Conv2D/ReadVariableOp,^sequential/conv2d_10/BiasAdd/ReadVariableOp+^sequential/conv2d_10/Conv2D/ReadVariableOp+^sequential/conv2d_2/BiasAdd/ReadVariableOp*^sequential/conv2d_2/Conv2D/ReadVariableOp+^sequential/conv2d_3/BiasAdd/ReadVariableOp*^sequential/conv2d_3/Conv2D/ReadVariableOp+^sequential/conv2d_4/BiasAdd/ReadVariableOp*^sequential/conv2d_4/Conv2D/ReadVariableOp+^sequential/conv2d_5/BiasAdd/ReadVariableOp*^sequential/conv2d_5/Conv2D/ReadVariableOp+^sequential/conv2d_6/BiasAdd/ReadVariableOp*^sequential/conv2d_6/Conv2D/ReadVariableOp+^sequential/conv2d_7/BiasAdd/ReadVariableOp*^sequential/conv2d_7/Conv2D/ReadVariableOp+^sequential/conv2d_8/BiasAdd/ReadVariableOp*^sequential/conv2d_8/Conv2D/ReadVariableOp+^sequential/conv2d_9/BiasAdd/ReadVariableOp*^sequential/conv2d_9/Conv2D/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp*^sequential/dense_2/BiasAdd/ReadVariableOp)^sequential/dense_2/MatMul/ReadVariableOp*^sequential/dense_3/BiasAdd/ReadVariableOp)^sequential/dense_3/MatMul/ReadVariableOp*^sequential/dense_4/BiasAdd/ReadVariableOp)^sequential/dense_4/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*¦
_input_shapes
:ÿÿÿÿÿÿÿÿÿÚ²::: : : : ::: : : : : : ::: : : : : : ::: : : : : : ::: : : : : : : : : : 2T
(sequential/conv2d/BiasAdd/ReadVariableOp(sequential/conv2d/BiasAdd/ReadVariableOp2R
'sequential/conv2d/Conv2D/ReadVariableOp'sequential/conv2d/Conv2D/ReadVariableOp2X
*sequential/conv2d_1/BiasAdd/ReadVariableOp*sequential/conv2d_1/BiasAdd/ReadVariableOp2V
)sequential/conv2d_1/Conv2D/ReadVariableOp)sequential/conv2d_1/Conv2D/ReadVariableOp2Z
+sequential/conv2d_10/BiasAdd/ReadVariableOp+sequential/conv2d_10/BiasAdd/ReadVariableOp2X
*sequential/conv2d_10/Conv2D/ReadVariableOp*sequential/conv2d_10/Conv2D/ReadVariableOp2X
*sequential/conv2d_2/BiasAdd/ReadVariableOp*sequential/conv2d_2/BiasAdd/ReadVariableOp2V
)sequential/conv2d_2/Conv2D/ReadVariableOp)sequential/conv2d_2/Conv2D/ReadVariableOp2X
*sequential/conv2d_3/BiasAdd/ReadVariableOp*sequential/conv2d_3/BiasAdd/ReadVariableOp2V
)sequential/conv2d_3/Conv2D/ReadVariableOp)sequential/conv2d_3/Conv2D/ReadVariableOp2X
*sequential/conv2d_4/BiasAdd/ReadVariableOp*sequential/conv2d_4/BiasAdd/ReadVariableOp2V
)sequential/conv2d_4/Conv2D/ReadVariableOp)sequential/conv2d_4/Conv2D/ReadVariableOp2X
*sequential/conv2d_5/BiasAdd/ReadVariableOp*sequential/conv2d_5/BiasAdd/ReadVariableOp2V
)sequential/conv2d_5/Conv2D/ReadVariableOp)sequential/conv2d_5/Conv2D/ReadVariableOp2X
*sequential/conv2d_6/BiasAdd/ReadVariableOp*sequential/conv2d_6/BiasAdd/ReadVariableOp2V
)sequential/conv2d_6/Conv2D/ReadVariableOp)sequential/conv2d_6/Conv2D/ReadVariableOp2X
*sequential/conv2d_7/BiasAdd/ReadVariableOp*sequential/conv2d_7/BiasAdd/ReadVariableOp2V
)sequential/conv2d_7/Conv2D/ReadVariableOp)sequential/conv2d_7/Conv2D/ReadVariableOp2X
*sequential/conv2d_8/BiasAdd/ReadVariableOp*sequential/conv2d_8/BiasAdd/ReadVariableOp2V
)sequential/conv2d_8/Conv2D/ReadVariableOp)sequential/conv2d_8/Conv2D/ReadVariableOp2X
*sequential/conv2d_9/BiasAdd/ReadVariableOp*sequential/conv2d_9/BiasAdd/ReadVariableOp2V
)sequential/conv2d_9/Conv2D/ReadVariableOp)sequential/conv2d_9/Conv2D/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp2V
)sequential/dense_2/BiasAdd/ReadVariableOp)sequential/dense_2/BiasAdd/ReadVariableOp2T
(sequential/dense_2/MatMul/ReadVariableOp(sequential/dense_2/MatMul/ReadVariableOp2V
)sequential/dense_3/BiasAdd/ReadVariableOp)sequential/dense_3/BiasAdd/ReadVariableOp2T
(sequential/dense_3/MatMul/ReadVariableOp(sequential/dense_3/MatMul/ReadVariableOp2V
)sequential/dense_4/BiasAdd/ReadVariableOp)sequential/dense_4/BiasAdd/ReadVariableOp2T
(sequential/dense_4/MatMul/ReadVariableOp(sequential/dense_4/MatMul/ReadVariableOp:Z V
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²
!
_user_specified_name	input_1:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::, (
&
_output_shapes
:
É
¨
D__inference_conv2d_4_layer_call_and_return_conditional_losses_187612

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp¢(kernel/Regularizer/Square/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY
(kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:q
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY¢
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿmY: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY
 
_user_specified_nameinputs
ï

*__inference_conv2d_10_layer_call_fn_190149

inputs!
unknown:
	unknown_0:
identity¢StatefulPartitionedCallå
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_10_layer_call_and_return_conditional_losses_187755w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ	: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
 
_user_specified_nameinputs

i
M__inference_average_pooling2d_layer_call_and_return_conditional_losses_190169

inputs
identity«
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
µ

§
__inference_loss_fn_5_190342K
1kernel_regularizer_square_readvariableop_resource:
identity¢(kernel/Regularizer/Square/ReadVariableOp¢
(kernel/Regularizer/Square/ReadVariableOpReadVariableOp1kernel_regularizer_square_readvariableop_resource*&
_output_shapes
:*
dtype0
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:q
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: X
IdentityIdentitykernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: q
NoOpNoOp)^kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp
Æ	
ô
C__inference_dense_2_layer_call_and_return_conditional_losses_190237

inputs0
matmul_readvariableop_resource: 0-
biasadd_readvariableop_resource:0
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: 0*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
É
¨
D__inference_conv2d_8_layer_call_and_return_conditional_losses_187722

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp¢(kernel/Regularizer/Square/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,
(kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:q
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,¢
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ6,: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,
 
_user_specified_nameinputs
Æ	
ô
C__inference_dense_2_layer_call_and_return_conditional_losses_187819

inputs0
matmul_readvariableop_resource: 0-
biasadd_readvariableop_resource:0
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: 0*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Ðî
¼N
"__inference__traced_restore_191168
file_prefix1
#assignvariableop_normalization_mean:7
)assignvariableop_1_normalization_variance:0
&assignvariableop_2_normalization_count:	 :
 assignvariableop_3_conv2d_kernel: ,
assignvariableop_4_conv2d_bias: <
"assignvariableop_5_conv2d_1_kernel: .
 assignvariableop_6_conv2d_1_bias:5
'assignvariableop_7_normalization_1_mean:9
+assignvariableop_8_normalization_1_variance:2
(assignvariableop_9_normalization_1_count:	 =
#assignvariableop_10_conv2d_2_kernel:/
!assignvariableop_11_conv2d_2_bias:=
#assignvariableop_12_conv2d_3_kernel:/
!assignvariableop_13_conv2d_3_bias:=
#assignvariableop_14_conv2d_4_kernel:/
!assignvariableop_15_conv2d_4_bias:6
(assignvariableop_16_normalization_2_mean::
,assignvariableop_17_normalization_2_variance:3
)assignvariableop_18_normalization_2_count:	 =
#assignvariableop_19_conv2d_5_kernel:/
!assignvariableop_20_conv2d_5_bias:=
#assignvariableop_21_conv2d_6_kernel:/
!assignvariableop_22_conv2d_6_bias:=
#assignvariableop_23_conv2d_7_kernel:/
!assignvariableop_24_conv2d_7_bias:6
(assignvariableop_25_normalization_3_mean::
,assignvariableop_26_normalization_3_variance:3
)assignvariableop_27_normalization_3_count:	 =
#assignvariableop_28_conv2d_8_kernel:/
!assignvariableop_29_conv2d_8_bias:=
#assignvariableop_30_conv2d_9_kernel:/
!assignvariableop_31_conv2d_9_bias:>
$assignvariableop_32_conv2d_10_kernel:0
"assignvariableop_33_conv2d_10_bias:6
(assignvariableop_34_normalization_4_mean::
,assignvariableop_35_normalization_4_variance:3
)assignvariableop_36_normalization_4_count:	 3
 assignvariableop_37_dense_kernel:	À@,
assignvariableop_38_dense_bias:@4
"assignvariableop_39_dense_1_kernel:@ .
 assignvariableop_40_dense_1_bias: 4
"assignvariableop_41_dense_2_kernel: 0.
 assignvariableop_42_dense_2_bias:04
"assignvariableop_43_dense_3_kernel:0.
 assignvariableop_44_dense_3_bias:4
"assignvariableop_45_dense_4_kernel:.
 assignvariableop_46_dense_4_bias:(
assignvariableop_47_nadam_iter:	 *
 assignvariableop_48_nadam_beta_1: *
 assignvariableop_49_nadam_beta_2: )
assignvariableop_50_nadam_decay: 1
'assignvariableop_51_nadam_learning_rate: 2
(assignvariableop_52_nadam_momentum_cache: #
assignvariableop_53_total: #
assignvariableop_54_count: 0
"assignvariableop_55_true_positives:1
#assignvariableop_56_false_positives:2
$assignvariableop_57_true_positives_1:1
#assignvariableop_58_false_negatives:%
assignvariableop_59_total_1: %
assignvariableop_60_count_1: C
)assignvariableop_61_nadam_conv2d_kernel_m: 5
'assignvariableop_62_nadam_conv2d_bias_m: E
+assignvariableop_63_nadam_conv2d_1_kernel_m: 7
)assignvariableop_64_nadam_conv2d_1_bias_m:E
+assignvariableop_65_nadam_conv2d_2_kernel_m:7
)assignvariableop_66_nadam_conv2d_2_bias_m:E
+assignvariableop_67_nadam_conv2d_3_kernel_m:7
)assignvariableop_68_nadam_conv2d_3_bias_m:E
+assignvariableop_69_nadam_conv2d_4_kernel_m:7
)assignvariableop_70_nadam_conv2d_4_bias_m:E
+assignvariableop_71_nadam_conv2d_5_kernel_m:7
)assignvariableop_72_nadam_conv2d_5_bias_m:E
+assignvariableop_73_nadam_conv2d_6_kernel_m:7
)assignvariableop_74_nadam_conv2d_6_bias_m:E
+assignvariableop_75_nadam_conv2d_7_kernel_m:7
)assignvariableop_76_nadam_conv2d_7_bias_m:E
+assignvariableop_77_nadam_conv2d_8_kernel_m:7
)assignvariableop_78_nadam_conv2d_8_bias_m:E
+assignvariableop_79_nadam_conv2d_9_kernel_m:7
)assignvariableop_80_nadam_conv2d_9_bias_m:F
,assignvariableop_81_nadam_conv2d_10_kernel_m:8
*assignvariableop_82_nadam_conv2d_10_bias_m:;
(assignvariableop_83_nadam_dense_kernel_m:	À@4
&assignvariableop_84_nadam_dense_bias_m:@<
*assignvariableop_85_nadam_dense_1_kernel_m:@ 6
(assignvariableop_86_nadam_dense_1_bias_m: <
*assignvariableop_87_nadam_dense_2_kernel_m: 06
(assignvariableop_88_nadam_dense_2_bias_m:0<
*assignvariableop_89_nadam_dense_3_kernel_m:06
(assignvariableop_90_nadam_dense_3_bias_m:<
*assignvariableop_91_nadam_dense_4_kernel_m:6
(assignvariableop_92_nadam_dense_4_bias_m:C
)assignvariableop_93_nadam_conv2d_kernel_v: 5
'assignvariableop_94_nadam_conv2d_bias_v: E
+assignvariableop_95_nadam_conv2d_1_kernel_v: 7
)assignvariableop_96_nadam_conv2d_1_bias_v:E
+assignvariableop_97_nadam_conv2d_2_kernel_v:7
)assignvariableop_98_nadam_conv2d_2_bias_v:E
+assignvariableop_99_nadam_conv2d_3_kernel_v:8
*assignvariableop_100_nadam_conv2d_3_bias_v:F
,assignvariableop_101_nadam_conv2d_4_kernel_v:8
*assignvariableop_102_nadam_conv2d_4_bias_v:F
,assignvariableop_103_nadam_conv2d_5_kernel_v:8
*assignvariableop_104_nadam_conv2d_5_bias_v:F
,assignvariableop_105_nadam_conv2d_6_kernel_v:8
*assignvariableop_106_nadam_conv2d_6_bias_v:F
,assignvariableop_107_nadam_conv2d_7_kernel_v:8
*assignvariableop_108_nadam_conv2d_7_bias_v:F
,assignvariableop_109_nadam_conv2d_8_kernel_v:8
*assignvariableop_110_nadam_conv2d_8_bias_v:F
,assignvariableop_111_nadam_conv2d_9_kernel_v:8
*assignvariableop_112_nadam_conv2d_9_bias_v:G
-assignvariableop_113_nadam_conv2d_10_kernel_v:9
+assignvariableop_114_nadam_conv2d_10_bias_v:<
)assignvariableop_115_nadam_dense_kernel_v:	À@5
'assignvariableop_116_nadam_dense_bias_v:@=
+assignvariableop_117_nadam_dense_1_kernel_v:@ 7
)assignvariableop_118_nadam_dense_1_bias_v: =
+assignvariableop_119_nadam_dense_2_kernel_v: 07
)assignvariableop_120_nadam_dense_2_bias_v:0=
+assignvariableop_121_nadam_dense_3_kernel_v:07
)assignvariableop_122_nadam_dense_3_bias_v:=
+assignvariableop_123_nadam_dense_4_kernel_v:7
)assignvariableop_124_nadam_dense_4_bias_v:
identity_126¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_100¢AssignVariableOp_101¢AssignVariableOp_102¢AssignVariableOp_103¢AssignVariableOp_104¢AssignVariableOp_105¢AssignVariableOp_106¢AssignVariableOp_107¢AssignVariableOp_108¢AssignVariableOp_109¢AssignVariableOp_11¢AssignVariableOp_110¢AssignVariableOp_111¢AssignVariableOp_112¢AssignVariableOp_113¢AssignVariableOp_114¢AssignVariableOp_115¢AssignVariableOp_116¢AssignVariableOp_117¢AssignVariableOp_118¢AssignVariableOp_119¢AssignVariableOp_12¢AssignVariableOp_120¢AssignVariableOp_121¢AssignVariableOp_122¢AssignVariableOp_123¢AssignVariableOp_124¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_45¢AssignVariableOp_46¢AssignVariableOp_47¢AssignVariableOp_48¢AssignVariableOp_49¢AssignVariableOp_5¢AssignVariableOp_50¢AssignVariableOp_51¢AssignVariableOp_52¢AssignVariableOp_53¢AssignVariableOp_54¢AssignVariableOp_55¢AssignVariableOp_56¢AssignVariableOp_57¢AssignVariableOp_58¢AssignVariableOp_59¢AssignVariableOp_6¢AssignVariableOp_60¢AssignVariableOp_61¢AssignVariableOp_62¢AssignVariableOp_63¢AssignVariableOp_64¢AssignVariableOp_65¢AssignVariableOp_66¢AssignVariableOp_67¢AssignVariableOp_68¢AssignVariableOp_69¢AssignVariableOp_7¢AssignVariableOp_70¢AssignVariableOp_71¢AssignVariableOp_72¢AssignVariableOp_73¢AssignVariableOp_74¢AssignVariableOp_75¢AssignVariableOp_76¢AssignVariableOp_77¢AssignVariableOp_78¢AssignVariableOp_79¢AssignVariableOp_8¢AssignVariableOp_80¢AssignVariableOp_81¢AssignVariableOp_82¢AssignVariableOp_83¢AssignVariableOp_84¢AssignVariableOp_85¢AssignVariableOp_86¢AssignVariableOp_87¢AssignVariableOp_88¢AssignVariableOp_89¢AssignVariableOp_9¢AssignVariableOp_90¢AssignVariableOp_91¢AssignVariableOp_92¢AssignVariableOp_93¢AssignVariableOp_94¢AssignVariableOp_95¢AssignVariableOp_96¢AssignVariableOp_97¢AssignVariableOp_98¢AssignVariableOp_99E
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:~*
dtype0*ÂD
value¸DBµD~B4layer_with_weights-0/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-0/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-0/count/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-3/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/count/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-7/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/count/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/mean/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-11/variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-11/count/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/mean/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-15/variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-15/count/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-17/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-17/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-19/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-19/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-20/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-20/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/momentum_cache/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/1/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/1/false_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHï
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:~*
dtype0*
valueB~B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapesû
ø::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*
dtypes
2~						[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp#assignvariableop_normalization_meanIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp)assignvariableop_1_normalization_varianceIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_2AssignVariableOp&assignvariableop_2_normalization_countIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOpassignvariableop_4_conv2d_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv2d_1_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp assignvariableop_6_conv2d_1_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp'assignvariableop_7_normalization_1_meanIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp+assignvariableop_8_normalization_1_varianceIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_9AssignVariableOp(assignvariableop_9_normalization_1_countIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOp#assignvariableop_10_conv2d_2_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp!assignvariableop_11_conv2d_2_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp#assignvariableop_12_conv2d_3_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp!assignvariableop_13_conv2d_3_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOp#assignvariableop_14_conv2d_4_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp!assignvariableop_15_conv2d_4_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp(assignvariableop_16_normalization_2_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp,assignvariableop_17_normalization_2_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_18AssignVariableOp)assignvariableop_18_normalization_2_countIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp#assignvariableop_19_conv2d_5_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp!assignvariableop_20_conv2d_5_biasIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp#assignvariableop_21_conv2d_6_kernelIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp!assignvariableop_22_conv2d_6_biasIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp#assignvariableop_23_conv2d_7_kernelIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp!assignvariableop_24_conv2d_7_biasIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp(assignvariableop_25_normalization_3_meanIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp,assignvariableop_26_normalization_3_varianceIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_27AssignVariableOp)assignvariableop_27_normalization_3_countIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp#assignvariableop_28_conv2d_8_kernelIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp!assignvariableop_29_conv2d_8_biasIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp#assignvariableop_30_conv2d_9_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOp!assignvariableop_31_conv2d_9_biasIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp$assignvariableop_32_conv2d_10_kernelIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOp"assignvariableop_33_conv2d_10_biasIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOp(assignvariableop_34_normalization_4_meanIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_35AssignVariableOp,assignvariableop_35_normalization_4_varianceIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_36AssignVariableOp)assignvariableop_36_normalization_4_countIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_37AssignVariableOp assignvariableop_37_dense_kernelIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_38AssignVariableOpassignvariableop_38_dense_biasIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_39AssignVariableOp"assignvariableop_39_dense_1_kernelIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_40AssignVariableOp assignvariableop_40_dense_1_biasIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_41AssignVariableOp"assignvariableop_41_dense_2_kernelIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_42AssignVariableOp assignvariableop_42_dense_2_biasIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_43AssignVariableOp"assignvariableop_43_dense_3_kernelIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_44AssignVariableOp assignvariableop_44_dense_3_biasIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_45AssignVariableOp"assignvariableop_45_dense_4_kernelIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_46AssignVariableOp assignvariableop_46_dense_4_biasIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_47AssignVariableOpassignvariableop_47_nadam_iterIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_48AssignVariableOp assignvariableop_48_nadam_beta_1Identity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_49AssignVariableOp assignvariableop_49_nadam_beta_2Identity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_50AssignVariableOpassignvariableop_50_nadam_decayIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_51AssignVariableOp'assignvariableop_51_nadam_learning_rateIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_52AssignVariableOp(assignvariableop_52_nadam_momentum_cacheIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_53AssignVariableOpassignvariableop_53_totalIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_54AssignVariableOpassignvariableop_54_countIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_55AssignVariableOp"assignvariableop_55_true_positivesIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_56AssignVariableOp#assignvariableop_56_false_positivesIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_57AssignVariableOp$assignvariableop_57_true_positives_1Identity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_58AssignVariableOp#assignvariableop_58_false_negativesIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_59AssignVariableOpassignvariableop_59_total_1Identity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_60AssignVariableOpassignvariableop_60_count_1Identity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_61AssignVariableOp)assignvariableop_61_nadam_conv2d_kernel_mIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_62AssignVariableOp'assignvariableop_62_nadam_conv2d_bias_mIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_63AssignVariableOp+assignvariableop_63_nadam_conv2d_1_kernel_mIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_64AssignVariableOp)assignvariableop_64_nadam_conv2d_1_bias_mIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_65AssignVariableOp+assignvariableop_65_nadam_conv2d_2_kernel_mIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_66AssignVariableOp)assignvariableop_66_nadam_conv2d_2_bias_mIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_67AssignVariableOp+assignvariableop_67_nadam_conv2d_3_kernel_mIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_68AssignVariableOp)assignvariableop_68_nadam_conv2d_3_bias_mIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_69AssignVariableOp+assignvariableop_69_nadam_conv2d_4_kernel_mIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_70AssignVariableOp)assignvariableop_70_nadam_conv2d_4_bias_mIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_71AssignVariableOp+assignvariableop_71_nadam_conv2d_5_kernel_mIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_72AssignVariableOp)assignvariableop_72_nadam_conv2d_5_bias_mIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_73AssignVariableOp+assignvariableop_73_nadam_conv2d_6_kernel_mIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_74AssignVariableOp)assignvariableop_74_nadam_conv2d_6_bias_mIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_75AssignVariableOp+assignvariableop_75_nadam_conv2d_7_kernel_mIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_76AssignVariableOp)assignvariableop_76_nadam_conv2d_7_bias_mIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_77AssignVariableOp+assignvariableop_77_nadam_conv2d_8_kernel_mIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_78AssignVariableOp)assignvariableop_78_nadam_conv2d_8_bias_mIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_79AssignVariableOp+assignvariableop_79_nadam_conv2d_9_kernel_mIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_80AssignVariableOp)assignvariableop_80_nadam_conv2d_9_bias_mIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_81AssignVariableOp,assignvariableop_81_nadam_conv2d_10_kernel_mIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_82AssignVariableOp*assignvariableop_82_nadam_conv2d_10_bias_mIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_83AssignVariableOp(assignvariableop_83_nadam_dense_kernel_mIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_84AssignVariableOp&assignvariableop_84_nadam_dense_bias_mIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_85AssignVariableOp*assignvariableop_85_nadam_dense_1_kernel_mIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_86AssignVariableOp(assignvariableop_86_nadam_dense_1_bias_mIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_87AssignVariableOp*assignvariableop_87_nadam_dense_2_kernel_mIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_88AssignVariableOp(assignvariableop_88_nadam_dense_2_bias_mIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_89AssignVariableOp*assignvariableop_89_nadam_dense_3_kernel_mIdentity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_90AssignVariableOp(assignvariableop_90_nadam_dense_3_bias_mIdentity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_91AssignVariableOp*assignvariableop_91_nadam_dense_4_kernel_mIdentity_91:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_92AssignVariableOp(assignvariableop_92_nadam_dense_4_bias_mIdentity_92:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_93AssignVariableOp)assignvariableop_93_nadam_conv2d_kernel_vIdentity_93:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_94AssignVariableOp'assignvariableop_94_nadam_conv2d_bias_vIdentity_94:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_95AssignVariableOp+assignvariableop_95_nadam_conv2d_1_kernel_vIdentity_95:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_96AssignVariableOp)assignvariableop_96_nadam_conv2d_1_bias_vIdentity_96:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_97AssignVariableOp+assignvariableop_97_nadam_conv2d_2_kernel_vIdentity_97:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_98AssignVariableOp)assignvariableop_98_nadam_conv2d_2_bias_vIdentity_98:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_99IdentityRestoreV2:tensors:99"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_99AssignVariableOp+assignvariableop_99_nadam_conv2d_3_kernel_vIdentity_99:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_100IdentityRestoreV2:tensors:100"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_100AssignVariableOp*assignvariableop_100_nadam_conv2d_3_bias_vIdentity_100:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_101IdentityRestoreV2:tensors:101"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_101AssignVariableOp,assignvariableop_101_nadam_conv2d_4_kernel_vIdentity_101:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_102IdentityRestoreV2:tensors:102"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_102AssignVariableOp*assignvariableop_102_nadam_conv2d_4_bias_vIdentity_102:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_103IdentityRestoreV2:tensors:103"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_103AssignVariableOp,assignvariableop_103_nadam_conv2d_5_kernel_vIdentity_103:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_104IdentityRestoreV2:tensors:104"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_104AssignVariableOp*assignvariableop_104_nadam_conv2d_5_bias_vIdentity_104:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_105IdentityRestoreV2:tensors:105"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_105AssignVariableOp,assignvariableop_105_nadam_conv2d_6_kernel_vIdentity_105:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_106IdentityRestoreV2:tensors:106"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_106AssignVariableOp*assignvariableop_106_nadam_conv2d_6_bias_vIdentity_106:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_107IdentityRestoreV2:tensors:107"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_107AssignVariableOp,assignvariableop_107_nadam_conv2d_7_kernel_vIdentity_107:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_108IdentityRestoreV2:tensors:108"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_108AssignVariableOp*assignvariableop_108_nadam_conv2d_7_bias_vIdentity_108:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_109IdentityRestoreV2:tensors:109"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_109AssignVariableOp,assignvariableop_109_nadam_conv2d_8_kernel_vIdentity_109:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_110IdentityRestoreV2:tensors:110"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_110AssignVariableOp*assignvariableop_110_nadam_conv2d_8_bias_vIdentity_110:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_111IdentityRestoreV2:tensors:111"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_111AssignVariableOp,assignvariableop_111_nadam_conv2d_9_kernel_vIdentity_111:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_112IdentityRestoreV2:tensors:112"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_112AssignVariableOp*assignvariableop_112_nadam_conv2d_9_bias_vIdentity_112:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_113IdentityRestoreV2:tensors:113"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_113AssignVariableOp-assignvariableop_113_nadam_conv2d_10_kernel_vIdentity_113:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_114IdentityRestoreV2:tensors:114"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_114AssignVariableOp+assignvariableop_114_nadam_conv2d_10_bias_vIdentity_114:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_115IdentityRestoreV2:tensors:115"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_115AssignVariableOp)assignvariableop_115_nadam_dense_kernel_vIdentity_115:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_116IdentityRestoreV2:tensors:116"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_116AssignVariableOp'assignvariableop_116_nadam_dense_bias_vIdentity_116:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_117IdentityRestoreV2:tensors:117"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_117AssignVariableOp+assignvariableop_117_nadam_dense_1_kernel_vIdentity_117:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_118IdentityRestoreV2:tensors:118"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_118AssignVariableOp)assignvariableop_118_nadam_dense_1_bias_vIdentity_118:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_119IdentityRestoreV2:tensors:119"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_119AssignVariableOp+assignvariableop_119_nadam_dense_2_kernel_vIdentity_119:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_120IdentityRestoreV2:tensors:120"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_120AssignVariableOp)assignvariableop_120_nadam_dense_2_bias_vIdentity_120:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_121IdentityRestoreV2:tensors:121"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_121AssignVariableOp+assignvariableop_121_nadam_dense_3_kernel_vIdentity_121:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_122IdentityRestoreV2:tensors:122"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_122AssignVariableOp)assignvariableop_122_nadam_dense_3_bias_vIdentity_122:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_123IdentityRestoreV2:tensors:123"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_123AssignVariableOp+assignvariableop_123_nadam_dense_4_kernel_vIdentity_123:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_124IdentityRestoreV2:tensors:124"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_124AssignVariableOp)assignvariableop_124_nadam_dense_4_bias_vIdentity_124:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 §
Identity_125Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_124^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99^NoOp"/device:CPU:0*
T0*
_output_shapes
: Y
Identity_126IdentityIdentity_125:output:0^NoOp_1*
T0*
_output_shapes
: 
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_124^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99*"
_acd_function_control_output(*
_output_shapes
 "%
identity_126Identity_126:output:0*
_input_shapesÿ
ü: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102,
AssignVariableOp_100AssignVariableOp_1002,
AssignVariableOp_101AssignVariableOp_1012,
AssignVariableOp_102AssignVariableOp_1022,
AssignVariableOp_103AssignVariableOp_1032,
AssignVariableOp_104AssignVariableOp_1042,
AssignVariableOp_105AssignVariableOp_1052,
AssignVariableOp_106AssignVariableOp_1062,
AssignVariableOp_107AssignVariableOp_1072,
AssignVariableOp_108AssignVariableOp_1082,
AssignVariableOp_109AssignVariableOp_1092*
AssignVariableOp_11AssignVariableOp_112,
AssignVariableOp_110AssignVariableOp_1102,
AssignVariableOp_111AssignVariableOp_1112,
AssignVariableOp_112AssignVariableOp_1122,
AssignVariableOp_113AssignVariableOp_1132,
AssignVariableOp_114AssignVariableOp_1142,
AssignVariableOp_115AssignVariableOp_1152,
AssignVariableOp_116AssignVariableOp_1162,
AssignVariableOp_117AssignVariableOp_1172,
AssignVariableOp_118AssignVariableOp_1182,
AssignVariableOp_119AssignVariableOp_1192*
AssignVariableOp_12AssignVariableOp_122,
AssignVariableOp_120AssignVariableOp_1202,
AssignVariableOp_121AssignVariableOp_1212,
AssignVariableOp_122AssignVariableOp_1222,
AssignVariableOp_123AssignVariableOp_1232,
AssignVariableOp_124AssignVariableOp_1242*
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
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_9AssignVariableOp_92*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_932*
AssignVariableOp_94AssignVariableOp_942*
AssignVariableOp_95AssignVariableOp_952*
AssignVariableOp_96AssignVariableOp_962*
AssignVariableOp_97AssignVariableOp_972*
AssignVariableOp_98AssignVariableOp_982*
AssignVariableOp_99AssignVariableOp_99:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
·
J
.__inference_max_pooling2d_layer_call_fn_189856

inputs
identityÚ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_187440
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ø
c
E__inference_dropout_1_layer_call_and_return_conditional_losses_190006

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ6,:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,
 
_user_specified_nameinputs
²í
 
F__inference_sequential_layer_call_and_return_conditional_losses_189455

inputs
normalization_sub_y
normalization_sqrt_x?
%conv2d_conv2d_readvariableop_resource: 4
&conv2d_biasadd_readvariableop_resource: A
'conv2d_1_conv2d_readvariableop_resource: 6
(conv2d_1_biasadd_readvariableop_resource:
normalization_1_sub_y
normalization_1_sqrt_xA
'conv2d_2_conv2d_readvariableop_resource:6
(conv2d_2_biasadd_readvariableop_resource:A
'conv2d_3_conv2d_readvariableop_resource:6
(conv2d_3_biasadd_readvariableop_resource:A
'conv2d_4_conv2d_readvariableop_resource:6
(conv2d_4_biasadd_readvariableop_resource:
normalization_2_sub_y
normalization_2_sqrt_xA
'conv2d_5_conv2d_readvariableop_resource:6
(conv2d_5_biasadd_readvariableop_resource:A
'conv2d_6_conv2d_readvariableop_resource:6
(conv2d_6_biasadd_readvariableop_resource:A
'conv2d_7_conv2d_readvariableop_resource:6
(conv2d_7_biasadd_readvariableop_resource:
normalization_3_sub_y
normalization_3_sqrt_xA
'conv2d_8_conv2d_readvariableop_resource:6
(conv2d_8_biasadd_readvariableop_resource:A
'conv2d_9_conv2d_readvariableop_resource:6
(conv2d_9_biasadd_readvariableop_resource:B
(conv2d_10_conv2d_readvariableop_resource:7
)conv2d_10_biasadd_readvariableop_resource:
normalization_4_sub_y
normalization_4_sqrt_x7
$dense_matmul_readvariableop_resource:	À@3
%dense_biasadd_readvariableop_resource:@8
&dense_1_matmul_readvariableop_resource:@ 5
'dense_1_biasadd_readvariableop_resource: 8
&dense_2_matmul_readvariableop_resource: 05
'dense_2_biasadd_readvariableop_resource:08
&dense_3_matmul_readvariableop_resource:05
'dense_3_biasadd_readvariableop_resource:8
&dense_4_matmul_readvariableop_resource:5
'dense_4_biasadd_readvariableop_resource:
identity¢conv2d/BiasAdd/ReadVariableOp¢conv2d/Conv2D/ReadVariableOp¢conv2d_1/BiasAdd/ReadVariableOp¢conv2d_1/Conv2D/ReadVariableOp¢ conv2d_10/BiasAdd/ReadVariableOp¢conv2d_10/Conv2D/ReadVariableOp¢conv2d_2/BiasAdd/ReadVariableOp¢conv2d_2/Conv2D/ReadVariableOp¢conv2d_3/BiasAdd/ReadVariableOp¢conv2d_3/Conv2D/ReadVariableOp¢conv2d_4/BiasAdd/ReadVariableOp¢conv2d_4/Conv2D/ReadVariableOp¢conv2d_5/BiasAdd/ReadVariableOp¢conv2d_5/Conv2D/ReadVariableOp¢conv2d_6/BiasAdd/ReadVariableOp¢conv2d_6/Conv2D/ReadVariableOp¢conv2d_7/BiasAdd/ReadVariableOp¢conv2d_7/Conv2D/ReadVariableOp¢conv2d_8/BiasAdd/ReadVariableOp¢conv2d_8/Conv2D/ReadVariableOp¢conv2d_9/BiasAdd/ReadVariableOp¢conv2d_9/Conv2D/ReadVariableOp¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOp¢dense_1/BiasAdd/ReadVariableOp¢dense_1/MatMul/ReadVariableOp¢dense_2/BiasAdd/ReadVariableOp¢dense_2/MatMul/ReadVariableOp¢dense_3/BiasAdd/ReadVariableOp¢dense_3/MatMul/ReadVariableOp¢dense_4/BiasAdd/ReadVariableOp¢dense_4/MatMul/ReadVariableOp¢(kernel/Regularizer/Square/ReadVariableOp¢*kernel/Regularizer_1/Square/ReadVariableOp¢*kernel/Regularizer_2/Square/ReadVariableOp¢*kernel/Regularizer_3/Square/ReadVariableOp¢*kernel/Regularizer_4/Square/ReadVariableOp¢*kernel/Regularizer_5/Square/ReadVariableOp¢*kernel/Regularizer_6/Square/ReadVariableOp¢*kernel/Regularizer_7/Square/ReadVariableOp¢*kernel/Regularizer_8/Square/ReadVariableOpq
normalization/subSubinputsnormalization_sub_y*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²a
normalization/SqrtSqrtnormalization_sqrt_x*
T0*&
_output_shapes
:\
normalization/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *¿Ö3
normalization/MaximumMaximumnormalization/Sqrt:y:0 normalization/Maximum/y:output:0*
T0*&
_output_shapes
:
normalization/truedivRealDivnormalization/sub:z:0normalization/Maximum:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0¼
conv2d/Conv2DConv2Dnormalization/truediv:z:0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ² *
paddingSAME*
strides

conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ² 
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0¾
conv2d_1/Conv2DConv2Dconv2d/BiasAdd:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²*
paddingSAME*
strides

conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²
normalization_1/subSubconv2d_1/BiasAdd:output:0normalization_1_sub_y*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²e
normalization_1/SqrtSqrtnormalization_1_sqrt_x*
T0*&
_output_shapes
:^
normalization_1/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *¿Ö3
normalization_1/MaximumMaximumnormalization_1/Sqrt:y:0"normalization_1/Maximum/y:output:0*
T0*&
_output_shapes
:
normalization_1/truedivRealDivnormalization_1/sub:z:0normalization_1/Maximum:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Â
conv2d_2/Conv2DConv2Dnormalization_1/truediv:z:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²*
paddingSAME*
strides

conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²¨
max_pooling2d/MaxPoolMaxPoolconv2d_2/BiasAdd:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY*
ksize
*
paddingVALID*
strides
v
dropout/IdentityIdentitymax_pooling2d/MaxPool:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0¾
conv2d_3/Conv2DConv2Ddropout/Identity:output:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY*
paddingSAME*
strides

conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0¾
conv2d_4/Conv2DConv2Dconv2d_3/BiasAdd:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY*
paddingSAME*
strides

conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY
normalization_2/subSubconv2d_4/BiasAdd:output:0normalization_2_sub_y*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmYe
normalization_2/SqrtSqrtnormalization_2_sqrt_x*
T0*&
_output_shapes
:^
normalization_2/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *¿Ö3
normalization_2/MaximumMaximumnormalization_2/Sqrt:y:0"normalization_2/Maximum/y:output:0*
T0*&
_output_shapes
:
normalization_2/truedivRealDivnormalization_2/sub:z:0normalization_2/Maximum:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0À
conv2d_5/Conv2DConv2Dnormalization_2/truediv:z:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY*
paddingSAME*
strides

conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmYª
max_pooling2d_1/MaxPoolMaxPoolconv2d_5/BiasAdd:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,*
ksize
*
paddingVALID*
strides
z
dropout_1/IdentityIdentity max_pooling2d_1/MaxPool:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,
conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0À
conv2d_6/Conv2DConv2Ddropout_1/Identity:output:0&conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,*
paddingSAME*
strides

conv2d_6/BiasAdd/ReadVariableOpReadVariableOp(conv2d_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_6/BiasAddBiasAddconv2d_6/Conv2D:output:0'conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,
conv2d_7/Conv2D/ReadVariableOpReadVariableOp'conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0¾
conv2d_7/Conv2DConv2Dconv2d_6/BiasAdd:output:0&conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,*
paddingSAME*
strides

conv2d_7/BiasAdd/ReadVariableOpReadVariableOp(conv2d_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_7/BiasAddBiasAddconv2d_7/Conv2D:output:0'conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,
normalization_3/subSubconv2d_7/BiasAdd:output:0normalization_3_sub_y*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,e
normalization_3/SqrtSqrtnormalization_3_sqrt_x*
T0*&
_output_shapes
:^
normalization_3/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *¿Ö3
normalization_3/MaximumMaximumnormalization_3/Sqrt:y:0"normalization_3/Maximum/y:output:0*
T0*&
_output_shapes
:
normalization_3/truedivRealDivnormalization_3/sub:z:0normalization_3/Maximum:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,
conv2d_8/Conv2D/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0À
conv2d_8/Conv2DConv2Dnormalization_3/truediv:z:0&conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,*
paddingSAME*
strides

conv2d_8/BiasAdd/ReadVariableOpReadVariableOp(conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_8/BiasAddBiasAddconv2d_8/Conv2D:output:0'conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,ª
max_pooling2d_2/MaxPoolMaxPoolconv2d_8/BiasAdd:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides

conv2d_9/Conv2D/ReadVariableOpReadVariableOp'conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Æ
conv2d_9/Conv2DConv2D max_pooling2d_2/MaxPool:output:0&conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	*
paddingVALID*
strides

conv2d_9/BiasAdd/ReadVariableOpReadVariableOp(conv2d_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_9/BiasAddBiasAddconv2d_9/Conv2D:output:0'conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
conv2d_10/Conv2D/ReadVariableOpReadVariableOp(conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Á
conv2d_10/Conv2DConv2Dconv2d_9/BiasAdd:output:0'conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
paddingVALID*
strides

 conv2d_10/BiasAdd/ReadVariableOpReadVariableOp)conv2d_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_10/BiasAddBiasAddconv2d_10/Conv2D:output:0(conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¶
average_pooling2d/AvgPoolAvgPoolconv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides

normalization_4/subSub"average_pooling2d/AvgPool:output:0normalization_4_sub_y*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
normalization_4/SqrtSqrtnormalization_4_sqrt_x*
T0*&
_output_shapes
:^
normalization_4/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *¿Ö3
normalization_4/MaximumMaximumnormalization_4/Sqrt:y:0"normalization_4/Maximum/y:output:0*
T0*&
_output_shapes
:
normalization_4/truedivRealDivnormalization_4/sub:z:0normalization_4/Maximum:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@  
flatten/ReshapeReshapenormalization_4/truediv:z:0flatten/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	À@*
dtype0
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0
dense_1/MatMulMatMuldense/BiasAdd:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

: 0*
dtype0
dense_2/MatMulMatMuldense_1/BiasAdd:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:0*
dtype0
dense_3/MatMulMatMuldense_2/BiasAdd:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_4/MatMulMatMuldense_3/BiasAdd:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
dense_4/SigmoidSigmoiddense_4/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(kernel/Regularizer/Square/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: q
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
*kernel/Regularizer_1/Square/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
kernel/Regularizer_1/SquareSquare2kernel/Regularizer_1/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: s
kernel/Regularizer_1/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer_1/SumSumkernel/Regularizer_1/Square:y:0#kernel/Regularizer_1/Const:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer_1/mulMul#kernel/Regularizer_1/mul/x:output:0!kernel/Regularizer_1/Sum:output:0*
T0*
_output_shapes
: 
*kernel/Regularizer_2/Square/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
kernel/Regularizer_2/SquareSquare2kernel/Regularizer_2/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:s
kernel/Regularizer_2/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer_2/SumSumkernel/Regularizer_2/Square:y:0#kernel/Regularizer_2/Const:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_2/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer_2/mulMul#kernel/Regularizer_2/mul/x:output:0!kernel/Regularizer_2/Sum:output:0*
T0*
_output_shapes
: 
*kernel/Regularizer_3/Square/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
kernel/Regularizer_3/SquareSquare2kernel/Regularizer_3/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:s
kernel/Regularizer_3/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer_3/SumSumkernel/Regularizer_3/Square:y:0#kernel/Regularizer_3/Const:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_3/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer_3/mulMul#kernel/Regularizer_3/mul/x:output:0!kernel/Regularizer_3/Sum:output:0*
T0*
_output_shapes
: 
*kernel/Regularizer_4/Square/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
kernel/Regularizer_4/SquareSquare2kernel/Regularizer_4/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:s
kernel/Regularizer_4/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer_4/SumSumkernel/Regularizer_4/Square:y:0#kernel/Regularizer_4/Const:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_4/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer_4/mulMul#kernel/Regularizer_4/mul/x:output:0!kernel/Regularizer_4/Sum:output:0*
T0*
_output_shapes
: 
*kernel/Regularizer_5/Square/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
kernel/Regularizer_5/SquareSquare2kernel/Regularizer_5/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:s
kernel/Regularizer_5/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer_5/SumSumkernel/Regularizer_5/Square:y:0#kernel/Regularizer_5/Const:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_5/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer_5/mulMul#kernel/Regularizer_5/mul/x:output:0!kernel/Regularizer_5/Sum:output:0*
T0*
_output_shapes
: 
*kernel/Regularizer_6/Square/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
kernel/Regularizer_6/SquareSquare2kernel/Regularizer_6/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:s
kernel/Regularizer_6/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer_6/SumSumkernel/Regularizer_6/Square:y:0#kernel/Regularizer_6/Const:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_6/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer_6/mulMul#kernel/Regularizer_6/mul/x:output:0!kernel/Regularizer_6/Sum:output:0*
T0*
_output_shapes
: 
*kernel/Regularizer_7/Square/ReadVariableOpReadVariableOp'conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
kernel/Regularizer_7/SquareSquare2kernel/Regularizer_7/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:s
kernel/Regularizer_7/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer_7/SumSumkernel/Regularizer_7/Square:y:0#kernel/Regularizer_7/Const:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_7/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer_7/mulMul#kernel/Regularizer_7/mul/x:output:0!kernel/Regularizer_7/Sum:output:0*
T0*
_output_shapes
: 
*kernel/Regularizer_8/Square/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
kernel/Regularizer_8/SquareSquare2kernel/Regularizer_8/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:s
kernel/Regularizer_8/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer_8/SumSumkernel/Regularizer_8/Square:y:0#kernel/Regularizer_8/Const:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_8/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer_8/mulMul#kernel/Regularizer_8/mul/x:output:0!kernel/Regularizer_8/Sum:output:0*
T0*
_output_shapes
: b
IdentityIdentitydense_4/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿù
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp!^conv2d_10/BiasAdd/ReadVariableOp ^conv2d_10/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp ^conv2d_6/BiasAdd/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp ^conv2d_7/BiasAdd/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp ^conv2d_8/BiasAdd/ReadVariableOp^conv2d_8/Conv2D/ReadVariableOp ^conv2d_9/BiasAdd/ReadVariableOp^conv2d_9/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp+^kernel/Regularizer_1/Square/ReadVariableOp+^kernel/Regularizer_2/Square/ReadVariableOp+^kernel/Regularizer_3/Square/ReadVariableOp+^kernel/Regularizer_4/Square/ReadVariableOp+^kernel/Regularizer_5/Square/ReadVariableOp+^kernel/Regularizer_6/Square/ReadVariableOp+^kernel/Regularizer_7/Square/ReadVariableOp+^kernel/Regularizer_8/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*¦
_input_shapes
:ÿÿÿÿÿÿÿÿÿÚ²::: : : : ::: : : : : : ::: : : : : : ::: : : : : : ::: : : : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2D
 conv2d_10/BiasAdd/ReadVariableOp conv2d_10/BiasAdd/ReadVariableOp2B
conv2d_10/Conv2D/ReadVariableOpconv2d_10/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2B
conv2d_6/BiasAdd/ReadVariableOpconv2d_6/BiasAdd/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp2B
conv2d_7/BiasAdd/ReadVariableOpconv2d_7/BiasAdd/ReadVariableOp2@
conv2d_7/Conv2D/ReadVariableOpconv2d_7/Conv2D/ReadVariableOp2B
conv2d_8/BiasAdd/ReadVariableOpconv2d_8/BiasAdd/ReadVariableOp2@
conv2d_8/Conv2D/ReadVariableOpconv2d_8/Conv2D/ReadVariableOp2B
conv2d_9/BiasAdd/ReadVariableOpconv2d_9/BiasAdd/ReadVariableOp2@
conv2d_9/Conv2D/ReadVariableOpconv2d_9/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp2X
*kernel/Regularizer_1/Square/ReadVariableOp*kernel/Regularizer_1/Square/ReadVariableOp2X
*kernel/Regularizer_2/Square/ReadVariableOp*kernel/Regularizer_2/Square/ReadVariableOp2X
*kernel/Regularizer_3/Square/ReadVariableOp*kernel/Regularizer_3/Square/ReadVariableOp2X
*kernel/Regularizer_4/Square/ReadVariableOp*kernel/Regularizer_4/Square/ReadVariableOp2X
*kernel/Regularizer_5/Square/ReadVariableOp*kernel/Regularizer_5/Square/ReadVariableOp2X
*kernel/Regularizer_6/Square/ReadVariableOp*kernel/Regularizer_6/Square/ReadVariableOp2X
*kernel/Regularizer_7/Square/ReadVariableOp*kernel/Regularizer_7/Square/ReadVariableOp2X
*kernel/Regularizer_8/Square/ReadVariableOp*kernel/Regularizer_8/Square/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::, (
&
_output_shapes
:
µ

§
__inference_loss_fn_3_190320K
1kernel_regularizer_square_readvariableop_resource:
identity¢(kernel/Regularizer/Square/ReadVariableOp¢
(kernel/Regularizer/Square/ReadVariableOpReadVariableOp1kernel_regularizer_square_readvariableop_resource*&
_output_shapes
:*
dtype0
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:q
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: X
IdentityIdentitykernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: q
NoOpNoOp)^kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp
Ã

(__inference_dense_1_layer_call_fn_190208

inputs
unknown:@ 
	unknown_0: 
identity¢StatefulPartitionedCallÛ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_187803o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
µ

§
__inference_loss_fn_1_190298K
1kernel_regularizer_square_readvariableop_resource: 
identity¢(kernel/Regularizer/Square/ReadVariableOp¢
(kernel/Regularizer/Square/ReadVariableOpReadVariableOp1kernel_regularizer_square_readvariableop_resource*&
_output_shapes
: *
dtype0
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: q
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: X
IdentityIdentitykernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: q
NoOpNoOp)^kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp
ô
Ñ	
+__inference_sequential_layer_call_fn_188659
input_1
unknown
	unknown_0#
	unknown_1: 
	unknown_2: #
	unknown_3: 
	unknown_4:
	unknown_5
	unknown_6#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:

unknown_13

unknown_14$

unknown_15:

unknown_16:$

unknown_17:

unknown_18:$

unknown_19:

unknown_20:

unknown_21

unknown_22$

unknown_23:

unknown_24:$

unknown_25:

unknown_26:$

unknown_27:

unknown_28:

unknown_29

unknown_30

unknown_31:	À@

unknown_32:@

unknown_33:@ 

unknown_34: 

unknown_35: 0

unknown_36:0

unknown_37:0

unknown_38:

unknown_39:

unknown_40:
identity¢StatefulPartitionedCallü
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40*6
Tin/
-2+*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*B
_read_only_resource_inputs$
" 	
!"#$%&'()**0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_188483o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*¦
_input_shapes
:ÿÿÿÿÿÿÿÿÿÚ²::: : : : ::: : : : : : ::: : : : : : ::: : : : : : ::: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²
!
_user_specified_name	input_1:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::, (
&
_output_shapes
:
¾
D
(__inference_dropout_layer_call_fn_189866

inputs
identity¹
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_187572h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿmY:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY
 
_user_specified_nameinputs
¨

ý
D__inference_conv2d_9_layer_call_and_return_conditional_losses_190140

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
µ

§
__inference_loss_fn_8_190375K
1kernel_regularizer_square_readvariableop_resource:
identity¢(kernel/Regularizer/Square/ReadVariableOp¢
(kernel/Regularizer/Square/ReadVariableOpReadVariableOp1kernel_regularizer_square_readvariableop_resource*&
_output_shapes
:*
dtype0
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:q
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: X
IdentityIdentitykernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: q
NoOpNoOp)^kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp
©

þ
E__inference_conv2d_10_layer_call_and_return_conditional_losses_187755

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
 
_user_specified_nameinputs
ØÇ

F__inference_sequential_layer_call_and_return_conditional_losses_188839
input_1
normalization_sub_y
normalization_sqrt_x'
conv2d_188669: 
conv2d_188671: )
conv2d_1_188674: 
conv2d_1_188676:
normalization_1_sub_y
normalization_1_sqrt_x)
conv2d_2_188686:
conv2d_2_188688:)
conv2d_3_188693:
conv2d_3_188695:)
conv2d_4_188698:
conv2d_4_188700:
normalization_2_sub_y
normalization_2_sqrt_x)
conv2d_5_188710:
conv2d_5_188712:)
conv2d_6_188717:
conv2d_6_188719:)
conv2d_7_188722:
conv2d_7_188724:
normalization_3_sub_y
normalization_3_sqrt_x)
conv2d_8_188734:
conv2d_8_188736:)
conv2d_9_188740:
conv2d_9_188742:*
conv2d_10_188745:
conv2d_10_188747:
normalization_4_sub_y
normalization_4_sqrt_x
dense_188759:	À@
dense_188761:@ 
dense_1_188764:@ 
dense_1_188766:  
dense_2_188769: 0
dense_2_188771:0 
dense_3_188774:0
dense_3_188776: 
dense_4_188779:
dense_4_188781:
identity¢conv2d/StatefulPartitionedCall¢ conv2d_1/StatefulPartitionedCall¢!conv2d_10/StatefulPartitionedCall¢ conv2d_2/StatefulPartitionedCall¢ conv2d_3/StatefulPartitionedCall¢ conv2d_4/StatefulPartitionedCall¢ conv2d_5/StatefulPartitionedCall¢ conv2d_6/StatefulPartitionedCall¢ conv2d_7/StatefulPartitionedCall¢ conv2d_8/StatefulPartitionedCall¢ conv2d_9/StatefulPartitionedCall¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall¢dense_2/StatefulPartitionedCall¢dense_3/StatefulPartitionedCall¢dense_4/StatefulPartitionedCall¢(kernel/Regularizer/Square/ReadVariableOp¢*kernel/Regularizer_1/Square/ReadVariableOp¢*kernel/Regularizer_2/Square/ReadVariableOp¢*kernel/Regularizer_3/Square/ReadVariableOp¢*kernel/Regularizer_4/Square/ReadVariableOp¢*kernel/Regularizer_5/Square/ReadVariableOp¢*kernel/Regularizer_6/Square/ReadVariableOp¢*kernel/Regularizer_7/Square/ReadVariableOp¢*kernel/Regularizer_8/Square/ReadVariableOpr
normalization/subSubinput_1normalization_sub_y*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²a
normalization/SqrtSqrtnormalization_sqrt_x*
T0*&
_output_shapes
:\
normalization/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *¿Ö3
normalization/MaximumMaximumnormalization/Sqrt:y:0 normalization/Maximum/y:output:0*
T0*&
_output_shapes
:
normalization/truedivRealDivnormalization/sub:z:0normalization/Maximum:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²
conv2d/StatefulPartitionedCallStatefulPartitionedCallnormalization/truediv:z:0conv2d_188669conv2d_188671*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ² *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_187509
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_188674conv2d_1_188676*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_1_layer_call_and_return_conditional_losses_187531
normalization_1/subSub)conv2d_1/StatefulPartitionedCall:output:0normalization_1_sub_y*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²e
normalization_1/SqrtSqrtnormalization_1_sqrt_x*
T0*&
_output_shapes
:^
normalization_1/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *¿Ö3
normalization_1/MaximumMaximumnormalization_1/Sqrt:y:0"normalization_1/Maximum/y:output:0*
T0*&
_output_shapes
:
normalization_1/truedivRealDivnormalization_1/sub:z:0normalization_1/Maximum:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCallnormalization_1/truediv:z:0conv2d_2_188686conv2d_2_188688*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_2_layer_call_and_return_conditional_losses_187560ð
max_pooling2d/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_187440á
dropout/PartitionedCallPartitionedCall&max_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_187572
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0conv2d_3_188693conv2d_3_188695*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_3_layer_call_and_return_conditional_losses_187590
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0conv2d_4_188698conv2d_4_188700*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_187612
normalization_2/subSub)conv2d_4/StatefulPartitionedCall:output:0normalization_2_sub_y*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmYe
normalization_2/SqrtSqrtnormalization_2_sqrt_x*
T0*&
_output_shapes
:^
normalization_2/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *¿Ö3
normalization_2/MaximumMaximumnormalization_2/Sqrt:y:0"normalization_2/Maximum/y:output:0*
T0*&
_output_shapes
:
normalization_2/truedivRealDivnormalization_2/sub:z:0normalization_2/Maximum:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCallnormalization_2/truediv:z:0conv2d_5_188710conv2d_5_188712*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_187641ô
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_187452ç
dropout_1/PartitionedCallPartitionedCall(max_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_187653
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0conv2d_6_188717conv2d_6_188719*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_6_layer_call_and_return_conditional_losses_187671
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0conv2d_7_188722conv2d_7_188724*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_7_layer_call_and_return_conditional_losses_187693
normalization_3/subSub)conv2d_7/StatefulPartitionedCall:output:0normalization_3_sub_y*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,e
normalization_3/SqrtSqrtnormalization_3_sqrt_x*
T0*&
_output_shapes
:^
normalization_3/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *¿Ö3
normalization_3/MaximumMaximumnormalization_3/Sqrt:y:0"normalization_3/Maximum/y:output:0*
T0*&
_output_shapes
:
normalization_3/truedivRealDivnormalization_3/sub:z:0normalization_3/Maximum:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCallnormalization_3/truediv:z:0conv2d_8_188734conv2d_8_188736*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_8_layer_call_and_return_conditional_losses_187722ô
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_187464
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0conv2d_9_188740conv2d_9_188742*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_9_layer_call_and_return_conditional_losses_187739¢
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0conv2d_10_188745conv2d_10_188747*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_10_layer_call_and_return_conditional_losses_187755ù
!average_pooling2d/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_average_pooling2d_layer_call_and_return_conditional_losses_187476
normalization_4/subSub*average_pooling2d/PartitionedCall:output:0normalization_4_sub_y*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
normalization_4/SqrtSqrtnormalization_4_sqrt_x*
T0*&
_output_shapes
:^
normalization_4/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *¿Ö3
normalization_4/MaximumMaximumnormalization_4/Sqrt:y:0"normalization_4/Maximum/y:output:0*
T0*&
_output_shapes
:
normalization_4/truedivRealDivnormalization_4/sub:z:0normalization_4/Maximum:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
flatten/PartitionedCallPartitionedCallnormalization_4/truediv:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_187775
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_188759dense_188761*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_187787
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_188764dense_1_188766*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_187803
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_188769dense_2_188771*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_187819
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_188774dense_3_188776*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_187835
dense_4/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0dense_4_188779dense_4_188781*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_187852~
(kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_188669*&
_output_shapes
: *
dtype0
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: q
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
*kernel/Regularizer_1/Square/ReadVariableOpReadVariableOpconv2d_1_188674*&
_output_shapes
: *
dtype0
kernel/Regularizer_1/SquareSquare2kernel/Regularizer_1/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: s
kernel/Regularizer_1/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer_1/SumSumkernel/Regularizer_1/Square:y:0#kernel/Regularizer_1/Const:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer_1/mulMul#kernel/Regularizer_1/mul/x:output:0!kernel/Regularizer_1/Sum:output:0*
T0*
_output_shapes
: 
*kernel/Regularizer_2/Square/ReadVariableOpReadVariableOpconv2d_2_188686*&
_output_shapes
:*
dtype0
kernel/Regularizer_2/SquareSquare2kernel/Regularizer_2/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:s
kernel/Regularizer_2/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer_2/SumSumkernel/Regularizer_2/Square:y:0#kernel/Regularizer_2/Const:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_2/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer_2/mulMul#kernel/Regularizer_2/mul/x:output:0!kernel/Regularizer_2/Sum:output:0*
T0*
_output_shapes
: 
*kernel/Regularizer_3/Square/ReadVariableOpReadVariableOpconv2d_3_188693*&
_output_shapes
:*
dtype0
kernel/Regularizer_3/SquareSquare2kernel/Regularizer_3/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:s
kernel/Regularizer_3/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer_3/SumSumkernel/Regularizer_3/Square:y:0#kernel/Regularizer_3/Const:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_3/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer_3/mulMul#kernel/Regularizer_3/mul/x:output:0!kernel/Regularizer_3/Sum:output:0*
T0*
_output_shapes
: 
*kernel/Regularizer_4/Square/ReadVariableOpReadVariableOpconv2d_4_188698*&
_output_shapes
:*
dtype0
kernel/Regularizer_4/SquareSquare2kernel/Regularizer_4/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:s
kernel/Regularizer_4/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer_4/SumSumkernel/Regularizer_4/Square:y:0#kernel/Regularizer_4/Const:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_4/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer_4/mulMul#kernel/Regularizer_4/mul/x:output:0!kernel/Regularizer_4/Sum:output:0*
T0*
_output_shapes
: 
*kernel/Regularizer_5/Square/ReadVariableOpReadVariableOpconv2d_5_188710*&
_output_shapes
:*
dtype0
kernel/Regularizer_5/SquareSquare2kernel/Regularizer_5/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:s
kernel/Regularizer_5/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer_5/SumSumkernel/Regularizer_5/Square:y:0#kernel/Regularizer_5/Const:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_5/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer_5/mulMul#kernel/Regularizer_5/mul/x:output:0!kernel/Regularizer_5/Sum:output:0*
T0*
_output_shapes
: 
*kernel/Regularizer_6/Square/ReadVariableOpReadVariableOpconv2d_6_188717*&
_output_shapes
:*
dtype0
kernel/Regularizer_6/SquareSquare2kernel/Regularizer_6/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:s
kernel/Regularizer_6/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer_6/SumSumkernel/Regularizer_6/Square:y:0#kernel/Regularizer_6/Const:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_6/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer_6/mulMul#kernel/Regularizer_6/mul/x:output:0!kernel/Regularizer_6/Sum:output:0*
T0*
_output_shapes
: 
*kernel/Regularizer_7/Square/ReadVariableOpReadVariableOpconv2d_7_188722*&
_output_shapes
:*
dtype0
kernel/Regularizer_7/SquareSquare2kernel/Regularizer_7/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:s
kernel/Regularizer_7/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer_7/SumSumkernel/Regularizer_7/Square:y:0#kernel/Regularizer_7/Const:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_7/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer_7/mulMul#kernel/Regularizer_7/mul/x:output:0!kernel/Regularizer_7/Sum:output:0*
T0*
_output_shapes
: 
*kernel/Regularizer_8/Square/ReadVariableOpReadVariableOpconv2d_8_188734*&
_output_shapes
:*
dtype0
kernel/Regularizer_8/SquareSquare2kernel/Regularizer_8/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:s
kernel/Regularizer_8/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer_8/SumSumkernel/Regularizer_8/Square:y:0#kernel/Regularizer_8/Const:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_8/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer_8/mulMul#kernel/Regularizer_8/mul/x:output:0!kernel/Regularizer_8/Sum:output:0*
T0*
_output_shapes
: w
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall"^conv2d_10/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall)^kernel/Regularizer/Square/ReadVariableOp+^kernel/Regularizer_1/Square/ReadVariableOp+^kernel/Regularizer_2/Square/ReadVariableOp+^kernel/Regularizer_3/Square/ReadVariableOp+^kernel/Regularizer_4/Square/ReadVariableOp+^kernel/Regularizer_5/Square/ReadVariableOp+^kernel/Regularizer_6/Square/ReadVariableOp+^kernel/Regularizer_7/Square/ReadVariableOp+^kernel/Regularizer_8/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*¦
_input_shapes
:ÿÿÿÿÿÿÿÿÿÚ²::: : : : ::: : : : : : ::: : : : : : ::: : : : : : ::: : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp2X
*kernel/Regularizer_1/Square/ReadVariableOp*kernel/Regularizer_1/Square/ReadVariableOp2X
*kernel/Regularizer_2/Square/ReadVariableOp*kernel/Regularizer_2/Square/ReadVariableOp2X
*kernel/Regularizer_3/Square/ReadVariableOp*kernel/Regularizer_3/Square/ReadVariableOp2X
*kernel/Regularizer_4/Square/ReadVariableOp*kernel/Regularizer_4/Square/ReadVariableOp2X
*kernel/Regularizer_5/Square/ReadVariableOp*kernel/Regularizer_5/Square/ReadVariableOp2X
*kernel/Regularizer_6/Square/ReadVariableOp*kernel/Regularizer_6/Square/ReadVariableOp2X
*kernel/Regularizer_7/Square/ReadVariableOp*kernel/Regularizer_7/Square/ReadVariableOp2X
*kernel/Regularizer_8/Square/ReadVariableOp*kernel/Regularizer_8/Square/ReadVariableOp:Z V
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²
!
_user_specified_name	input_1:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::, (
&
_output_shapes
:
È	
ó
A__inference_dense_layer_call_and_return_conditional_losses_190199

inputs1
matmul_readvariableop_resource:	À@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	À@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs

e
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_187440

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ã

(__inference_dense_2_layer_call_fn_190227

inputs
unknown: 0
	unknown_0:0
identity¢StatefulPartitionedCallÛ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_187819o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
æ
3
__inference__traced_save_190783
file_prefix1
-savev2_normalization_mean_read_readvariableop5
1savev2_normalization_variance_read_readvariableop2
.savev2_normalization_count_read_readvariableop	,
(savev2_conv2d_kernel_read_readvariableop*
&savev2_conv2d_bias_read_readvariableop.
*savev2_conv2d_1_kernel_read_readvariableop,
(savev2_conv2d_1_bias_read_readvariableop3
/savev2_normalization_1_mean_read_readvariableop7
3savev2_normalization_1_variance_read_readvariableop4
0savev2_normalization_1_count_read_readvariableop	.
*savev2_conv2d_2_kernel_read_readvariableop,
(savev2_conv2d_2_bias_read_readvariableop.
*savev2_conv2d_3_kernel_read_readvariableop,
(savev2_conv2d_3_bias_read_readvariableop.
*savev2_conv2d_4_kernel_read_readvariableop,
(savev2_conv2d_4_bias_read_readvariableop3
/savev2_normalization_2_mean_read_readvariableop7
3savev2_normalization_2_variance_read_readvariableop4
0savev2_normalization_2_count_read_readvariableop	.
*savev2_conv2d_5_kernel_read_readvariableop,
(savev2_conv2d_5_bias_read_readvariableop.
*savev2_conv2d_6_kernel_read_readvariableop,
(savev2_conv2d_6_bias_read_readvariableop.
*savev2_conv2d_7_kernel_read_readvariableop,
(savev2_conv2d_7_bias_read_readvariableop3
/savev2_normalization_3_mean_read_readvariableop7
3savev2_normalization_3_variance_read_readvariableop4
0savev2_normalization_3_count_read_readvariableop	.
*savev2_conv2d_8_kernel_read_readvariableop,
(savev2_conv2d_8_bias_read_readvariableop.
*savev2_conv2d_9_kernel_read_readvariableop,
(savev2_conv2d_9_bias_read_readvariableop/
+savev2_conv2d_10_kernel_read_readvariableop-
)savev2_conv2d_10_bias_read_readvariableop3
/savev2_normalization_4_mean_read_readvariableop7
3savev2_normalization_4_variance_read_readvariableop4
0savev2_normalization_4_count_read_readvariableop	+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop)
%savev2_nadam_iter_read_readvariableop	+
'savev2_nadam_beta_1_read_readvariableop+
'savev2_nadam_beta_2_read_readvariableop*
&savev2_nadam_decay_read_readvariableop2
.savev2_nadam_learning_rate_read_readvariableop3
/savev2_nadam_momentum_cache_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop-
)savev2_true_positives_read_readvariableop.
*savev2_false_positives_read_readvariableop/
+savev2_true_positives_1_read_readvariableop.
*savev2_false_negatives_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop4
0savev2_nadam_conv2d_kernel_m_read_readvariableop2
.savev2_nadam_conv2d_bias_m_read_readvariableop6
2savev2_nadam_conv2d_1_kernel_m_read_readvariableop4
0savev2_nadam_conv2d_1_bias_m_read_readvariableop6
2savev2_nadam_conv2d_2_kernel_m_read_readvariableop4
0savev2_nadam_conv2d_2_bias_m_read_readvariableop6
2savev2_nadam_conv2d_3_kernel_m_read_readvariableop4
0savev2_nadam_conv2d_3_bias_m_read_readvariableop6
2savev2_nadam_conv2d_4_kernel_m_read_readvariableop4
0savev2_nadam_conv2d_4_bias_m_read_readvariableop6
2savev2_nadam_conv2d_5_kernel_m_read_readvariableop4
0savev2_nadam_conv2d_5_bias_m_read_readvariableop6
2savev2_nadam_conv2d_6_kernel_m_read_readvariableop4
0savev2_nadam_conv2d_6_bias_m_read_readvariableop6
2savev2_nadam_conv2d_7_kernel_m_read_readvariableop4
0savev2_nadam_conv2d_7_bias_m_read_readvariableop6
2savev2_nadam_conv2d_8_kernel_m_read_readvariableop4
0savev2_nadam_conv2d_8_bias_m_read_readvariableop6
2savev2_nadam_conv2d_9_kernel_m_read_readvariableop4
0savev2_nadam_conv2d_9_bias_m_read_readvariableop7
3savev2_nadam_conv2d_10_kernel_m_read_readvariableop5
1savev2_nadam_conv2d_10_bias_m_read_readvariableop3
/savev2_nadam_dense_kernel_m_read_readvariableop1
-savev2_nadam_dense_bias_m_read_readvariableop5
1savev2_nadam_dense_1_kernel_m_read_readvariableop3
/savev2_nadam_dense_1_bias_m_read_readvariableop5
1savev2_nadam_dense_2_kernel_m_read_readvariableop3
/savev2_nadam_dense_2_bias_m_read_readvariableop5
1savev2_nadam_dense_3_kernel_m_read_readvariableop3
/savev2_nadam_dense_3_bias_m_read_readvariableop5
1savev2_nadam_dense_4_kernel_m_read_readvariableop3
/savev2_nadam_dense_4_bias_m_read_readvariableop4
0savev2_nadam_conv2d_kernel_v_read_readvariableop2
.savev2_nadam_conv2d_bias_v_read_readvariableop6
2savev2_nadam_conv2d_1_kernel_v_read_readvariableop4
0savev2_nadam_conv2d_1_bias_v_read_readvariableop6
2savev2_nadam_conv2d_2_kernel_v_read_readvariableop4
0savev2_nadam_conv2d_2_bias_v_read_readvariableop6
2savev2_nadam_conv2d_3_kernel_v_read_readvariableop4
0savev2_nadam_conv2d_3_bias_v_read_readvariableop6
2savev2_nadam_conv2d_4_kernel_v_read_readvariableop4
0savev2_nadam_conv2d_4_bias_v_read_readvariableop6
2savev2_nadam_conv2d_5_kernel_v_read_readvariableop4
0savev2_nadam_conv2d_5_bias_v_read_readvariableop6
2savev2_nadam_conv2d_6_kernel_v_read_readvariableop4
0savev2_nadam_conv2d_6_bias_v_read_readvariableop6
2savev2_nadam_conv2d_7_kernel_v_read_readvariableop4
0savev2_nadam_conv2d_7_bias_v_read_readvariableop6
2savev2_nadam_conv2d_8_kernel_v_read_readvariableop4
0savev2_nadam_conv2d_8_bias_v_read_readvariableop6
2savev2_nadam_conv2d_9_kernel_v_read_readvariableop4
0savev2_nadam_conv2d_9_bias_v_read_readvariableop7
3savev2_nadam_conv2d_10_kernel_v_read_readvariableop5
1savev2_nadam_conv2d_10_bias_v_read_readvariableop3
/savev2_nadam_dense_kernel_v_read_readvariableop1
-savev2_nadam_dense_bias_v_read_readvariableop5
1savev2_nadam_dense_1_kernel_v_read_readvariableop3
/savev2_nadam_dense_1_bias_v_read_readvariableop5
1savev2_nadam_dense_2_kernel_v_read_readvariableop3
/savev2_nadam_dense_2_bias_v_read_readvariableop5
1savev2_nadam_dense_3_kernel_v_read_readvariableop3
/savev2_nadam_dense_3_bias_v_read_readvariableop5
1savev2_nadam_dense_4_kernel_v_read_readvariableop3
/savev2_nadam_dense_4_bias_v_read_readvariableop
savev2_const_10

identity_1¢MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: E
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:~*
dtype0*ÂD
value¸DBµD~B4layer_with_weights-0/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-0/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-0/count/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-3/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/count/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-7/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/count/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/mean/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-11/variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-11/count/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/mean/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-15/variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-15/count/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-17/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-17/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-19/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-19/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-20/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-20/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/momentum_cache/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/1/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/1/false_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHì
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:~*
dtype0*
valueB~B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ó0
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0-savev2_normalization_mean_read_readvariableop1savev2_normalization_variance_read_readvariableop.savev2_normalization_count_read_readvariableop(savev2_conv2d_kernel_read_readvariableop&savev2_conv2d_bias_read_readvariableop*savev2_conv2d_1_kernel_read_readvariableop(savev2_conv2d_1_bias_read_readvariableop/savev2_normalization_1_mean_read_readvariableop3savev2_normalization_1_variance_read_readvariableop0savev2_normalization_1_count_read_readvariableop*savev2_conv2d_2_kernel_read_readvariableop(savev2_conv2d_2_bias_read_readvariableop*savev2_conv2d_3_kernel_read_readvariableop(savev2_conv2d_3_bias_read_readvariableop*savev2_conv2d_4_kernel_read_readvariableop(savev2_conv2d_4_bias_read_readvariableop/savev2_normalization_2_mean_read_readvariableop3savev2_normalization_2_variance_read_readvariableop0savev2_normalization_2_count_read_readvariableop*savev2_conv2d_5_kernel_read_readvariableop(savev2_conv2d_5_bias_read_readvariableop*savev2_conv2d_6_kernel_read_readvariableop(savev2_conv2d_6_bias_read_readvariableop*savev2_conv2d_7_kernel_read_readvariableop(savev2_conv2d_7_bias_read_readvariableop/savev2_normalization_3_mean_read_readvariableop3savev2_normalization_3_variance_read_readvariableop0savev2_normalization_3_count_read_readvariableop*savev2_conv2d_8_kernel_read_readvariableop(savev2_conv2d_8_bias_read_readvariableop*savev2_conv2d_9_kernel_read_readvariableop(savev2_conv2d_9_bias_read_readvariableop+savev2_conv2d_10_kernel_read_readvariableop)savev2_conv2d_10_bias_read_readvariableop/savev2_normalization_4_mean_read_readvariableop3savev2_normalization_4_variance_read_readvariableop0savev2_normalization_4_count_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop%savev2_nadam_iter_read_readvariableop'savev2_nadam_beta_1_read_readvariableop'savev2_nadam_beta_2_read_readvariableop&savev2_nadam_decay_read_readvariableop.savev2_nadam_learning_rate_read_readvariableop/savev2_nadam_momentum_cache_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop)savev2_true_positives_read_readvariableop*savev2_false_positives_read_readvariableop+savev2_true_positives_1_read_readvariableop*savev2_false_negatives_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop0savev2_nadam_conv2d_kernel_m_read_readvariableop.savev2_nadam_conv2d_bias_m_read_readvariableop2savev2_nadam_conv2d_1_kernel_m_read_readvariableop0savev2_nadam_conv2d_1_bias_m_read_readvariableop2savev2_nadam_conv2d_2_kernel_m_read_readvariableop0savev2_nadam_conv2d_2_bias_m_read_readvariableop2savev2_nadam_conv2d_3_kernel_m_read_readvariableop0savev2_nadam_conv2d_3_bias_m_read_readvariableop2savev2_nadam_conv2d_4_kernel_m_read_readvariableop0savev2_nadam_conv2d_4_bias_m_read_readvariableop2savev2_nadam_conv2d_5_kernel_m_read_readvariableop0savev2_nadam_conv2d_5_bias_m_read_readvariableop2savev2_nadam_conv2d_6_kernel_m_read_readvariableop0savev2_nadam_conv2d_6_bias_m_read_readvariableop2savev2_nadam_conv2d_7_kernel_m_read_readvariableop0savev2_nadam_conv2d_7_bias_m_read_readvariableop2savev2_nadam_conv2d_8_kernel_m_read_readvariableop0savev2_nadam_conv2d_8_bias_m_read_readvariableop2savev2_nadam_conv2d_9_kernel_m_read_readvariableop0savev2_nadam_conv2d_9_bias_m_read_readvariableop3savev2_nadam_conv2d_10_kernel_m_read_readvariableop1savev2_nadam_conv2d_10_bias_m_read_readvariableop/savev2_nadam_dense_kernel_m_read_readvariableop-savev2_nadam_dense_bias_m_read_readvariableop1savev2_nadam_dense_1_kernel_m_read_readvariableop/savev2_nadam_dense_1_bias_m_read_readvariableop1savev2_nadam_dense_2_kernel_m_read_readvariableop/savev2_nadam_dense_2_bias_m_read_readvariableop1savev2_nadam_dense_3_kernel_m_read_readvariableop/savev2_nadam_dense_3_bias_m_read_readvariableop1savev2_nadam_dense_4_kernel_m_read_readvariableop/savev2_nadam_dense_4_bias_m_read_readvariableop0savev2_nadam_conv2d_kernel_v_read_readvariableop.savev2_nadam_conv2d_bias_v_read_readvariableop2savev2_nadam_conv2d_1_kernel_v_read_readvariableop0savev2_nadam_conv2d_1_bias_v_read_readvariableop2savev2_nadam_conv2d_2_kernel_v_read_readvariableop0savev2_nadam_conv2d_2_bias_v_read_readvariableop2savev2_nadam_conv2d_3_kernel_v_read_readvariableop0savev2_nadam_conv2d_3_bias_v_read_readvariableop2savev2_nadam_conv2d_4_kernel_v_read_readvariableop0savev2_nadam_conv2d_4_bias_v_read_readvariableop2savev2_nadam_conv2d_5_kernel_v_read_readvariableop0savev2_nadam_conv2d_5_bias_v_read_readvariableop2savev2_nadam_conv2d_6_kernel_v_read_readvariableop0savev2_nadam_conv2d_6_bias_v_read_readvariableop2savev2_nadam_conv2d_7_kernel_v_read_readvariableop0savev2_nadam_conv2d_7_bias_v_read_readvariableop2savev2_nadam_conv2d_8_kernel_v_read_readvariableop0savev2_nadam_conv2d_8_bias_v_read_readvariableop2savev2_nadam_conv2d_9_kernel_v_read_readvariableop0savev2_nadam_conv2d_9_bias_v_read_readvariableop3savev2_nadam_conv2d_10_kernel_v_read_readvariableop1savev2_nadam_conv2d_10_bias_v_read_readvariableop/savev2_nadam_dense_kernel_v_read_readvariableop-savev2_nadam_dense_bias_v_read_readvariableop1savev2_nadam_dense_1_kernel_v_read_readvariableop/savev2_nadam_dense_1_bias_v_read_readvariableop1savev2_nadam_dense_2_kernel_v_read_readvariableop/savev2_nadam_dense_2_bias_v_read_readvariableop1savev2_nadam_dense_3_kernel_v_read_readvariableop/savev2_nadam_dense_3_bias_v_read_readvariableop1savev2_nadam_dense_4_kernel_v_read_readvariableop/savev2_nadam_dense_4_bias_v_read_readvariableopsavev2_const_10"/device:CPU:0*
_output_shapes
 *
dtypes
2~						
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*	
_input_shapes	
	: ::: : : : :::: ::::::::: ::::::::: ::::::::: :	À@:@:@ : : 0:0:0:::: : : : : : : : ::::: : : : : ::::::::::::::::::::	À@:@:@ : : 0:0:0:::: : : ::::::::::::::::::::	À@:@:@ : : 0:0:0:::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 	

_output_shapes
::


_output_shapes
: :,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
::  

_output_shapes
::,!(
&
_output_shapes
:: "

_output_shapes
:: #

_output_shapes
:: $

_output_shapes
::%

_output_shapes
: :%&!

_output_shapes
:	À@: '

_output_shapes
:@:$( 

_output_shapes

:@ : )

_output_shapes
: :$* 

_output_shapes

: 0: +

_output_shapes
:0:$, 

_output_shapes

:0: -

_output_shapes
::$. 

_output_shapes

:: /

_output_shapes
::0

_output_shapes
: :1

_output_shapes
: :2

_output_shapes
: :3

_output_shapes
: :4

_output_shapes
: :5

_output_shapes
: :6

_output_shapes
: :7

_output_shapes
: : 8

_output_shapes
:: 9

_output_shapes
:: :

_output_shapes
:: ;

_output_shapes
::<

_output_shapes
: :=

_output_shapes
: :,>(
&
_output_shapes
: : ?

_output_shapes
: :,@(
&
_output_shapes
: : A

_output_shapes
::,B(
&
_output_shapes
:: C

_output_shapes
::,D(
&
_output_shapes
:: E

_output_shapes
::,F(
&
_output_shapes
:: G

_output_shapes
::,H(
&
_output_shapes
:: I

_output_shapes
::,J(
&
_output_shapes
:: K

_output_shapes
::,L(
&
_output_shapes
:: M

_output_shapes
::,N(
&
_output_shapes
:: O

_output_shapes
::,P(
&
_output_shapes
:: Q

_output_shapes
::,R(
&
_output_shapes
:: S

_output_shapes
::%T!

_output_shapes
:	À@: U

_output_shapes
:@:$V 

_output_shapes

:@ : W

_output_shapes
: :$X 

_output_shapes

: 0: Y

_output_shapes
:0:$Z 

_output_shapes

:0: [

_output_shapes
::$\ 

_output_shapes

:: ]

_output_shapes
::,^(
&
_output_shapes
: : _

_output_shapes
: :,`(
&
_output_shapes
: : a

_output_shapes
::,b(
&
_output_shapes
:: c

_output_shapes
::,d(
&
_output_shapes
:: e

_output_shapes
::,f(
&
_output_shapes
:: g

_output_shapes
::,h(
&
_output_shapes
:: i

_output_shapes
::,j(
&
_output_shapes
:: k

_output_shapes
::,l(
&
_output_shapes
:: m

_output_shapes
::,n(
&
_output_shapes
:: o

_output_shapes
::,p(
&
_output_shapes
:: q

_output_shapes
::,r(
&
_output_shapes
:: s

_output_shapes
::%t!

_output_shapes
:	À@: u

_output_shapes
:@:$v 

_output_shapes

:@ : w

_output_shapes
: :$x 

_output_shapes

: 0: y

_output_shapes
:0:$z 

_output_shapes

:0: {

_output_shapes
::$| 

_output_shapes

:: }

_output_shapes
::~

_output_shapes
: 
±

b
C__inference_dropout_layer_call_and_return_conditional_losses_189888

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmYC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>®
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmYw
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmYq
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmYa
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿmY:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY
 
_user_specified_nameinputs


ô
C__inference_dense_4_layer_call_and_return_conditional_losses_187852

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Æ	
ô
C__inference_dense_1_layer_call_and_return_conditional_losses_190218

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
È
Ê	
$__inference_signature_wrapper_189758
input_1
unknown
	unknown_0#
	unknown_1: 
	unknown_2: #
	unknown_3: 
	unknown_4:
	unknown_5
	unknown_6#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:

unknown_13

unknown_14$

unknown_15:

unknown_16:$

unknown_17:

unknown_18:$

unknown_19:

unknown_20:

unknown_21

unknown_22$

unknown_23:

unknown_24:$

unknown_25:

unknown_26:$

unknown_27:

unknown_28:

unknown_29

unknown_30

unknown_31:	À@

unknown_32:@

unknown_33:@ 

unknown_34: 

unknown_35: 0

unknown_36:0

unknown_37:0

unknown_38:

unknown_39:

unknown_40:
identity¢StatefulPartitionedCall×
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40*6
Tin/
-2+*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*B
_read_only_resource_inputs$
" 	
!"#$%&'()**0
config_proto 

CPU

GPU2*0J 8 **
f%R#
!__inference__wrapped_model_187431o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*¦
_input_shapes
:ÿÿÿÿÿÿÿÿÿÚ²::: : : : ::: : : : : : ::: : : : : : ::: : : : : : ::: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²
!
_user_specified_name	input_1:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::, (
&
_output_shapes
:

g
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_187464

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
É
¨
D__inference_conv2d_7_layer_call_and_return_conditional_losses_190080

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp¢(kernel/Regularizer/Square/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,
(kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:q
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,¢
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ6,: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,
 
_user_specified_nameinputs
Æ	
ô
C__inference_dense_1_layer_call_and_return_conditional_losses_187803

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ñ
Ð	
+__inference_sequential_layer_call_fn_189168

inputs
unknown
	unknown_0#
	unknown_1: 
	unknown_2: #
	unknown_3: 
	unknown_4:
	unknown_5
	unknown_6#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:

unknown_13

unknown_14$

unknown_15:

unknown_16:$

unknown_17:

unknown_18:$

unknown_19:

unknown_20:

unknown_21

unknown_22$

unknown_23:

unknown_24:$

unknown_25:

unknown_26:$

unknown_27:

unknown_28:

unknown_29

unknown_30

unknown_31:	À@

unknown_32:@

unknown_33:@ 

unknown_34: 

unknown_35: 0

unknown_36:0

unknown_37:0

unknown_38:

unknown_39:

unknown_40:
identity¢StatefulPartitionedCallû
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40*6
Tin/
-2+*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*B
_read_only_resource_inputs$
" 	
!"#$%&'()**0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_187913o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*¦
_input_shapes
:ÿÿÿÿÿÿÿÿÿÚ²::: : : : ::: : : : : : ::: : : : : : ::: : : : : : ::: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::, (
&
_output_shapes
:
Ã

(__inference_dense_3_layer_call_fn_190246

inputs
unknown:0
	unknown_0:
identity¢StatefulPartitionedCallÛ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_187835o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ0: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_189991

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
µ

§
__inference_loss_fn_0_190287K
1kernel_regularizer_square_readvariableop_resource: 
identity¢(kernel/Regularizer/Square/ReadVariableOp¢
(kernel/Regularizer/Square/ReadVariableOpReadVariableOp1kernel_regularizer_square_readvariableop_resource*&
_output_shapes
: *
dtype0
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: q
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: X
IdentityIdentitykernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: q
NoOpNoOp)^kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp
©

þ
E__inference_conv2d_10_layer_call_and_return_conditional_losses_190159

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
 
_user_specified_nameinputs

a
(__inference_dropout_layer_call_fn_189871

inputs
identity¢StatefulPartitionedCallÉ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_188179w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿmY22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY
 
_user_specified_nameinputs
Â
F
*__inference_dropout_1_layer_call_fn_189996

inputs
identity»
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_187653h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ6,:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,
 
_user_specified_nameinputs
ÂÊ
ß
F__inference_sequential_layer_call_and_return_conditional_losses_189019
input_1
normalization_sub_y
normalization_sqrt_x'
conv2d_188849: 
conv2d_188851: )
conv2d_1_188854: 
conv2d_1_188856:
normalization_1_sub_y
normalization_1_sqrt_x)
conv2d_2_188866:
conv2d_2_188868:)
conv2d_3_188873:
conv2d_3_188875:)
conv2d_4_188878:
conv2d_4_188880:
normalization_2_sub_y
normalization_2_sqrt_x)
conv2d_5_188890:
conv2d_5_188892:)
conv2d_6_188897:
conv2d_6_188899:)
conv2d_7_188902:
conv2d_7_188904:
normalization_3_sub_y
normalization_3_sqrt_x)
conv2d_8_188914:
conv2d_8_188916:)
conv2d_9_188920:
conv2d_9_188922:*
conv2d_10_188925:
conv2d_10_188927:
normalization_4_sub_y
normalization_4_sqrt_x
dense_188939:	À@
dense_188941:@ 
dense_1_188944:@ 
dense_1_188946:  
dense_2_188949: 0
dense_2_188951:0 
dense_3_188954:0
dense_3_188956: 
dense_4_188959:
dense_4_188961:
identity¢conv2d/StatefulPartitionedCall¢ conv2d_1/StatefulPartitionedCall¢!conv2d_10/StatefulPartitionedCall¢ conv2d_2/StatefulPartitionedCall¢ conv2d_3/StatefulPartitionedCall¢ conv2d_4/StatefulPartitionedCall¢ conv2d_5/StatefulPartitionedCall¢ conv2d_6/StatefulPartitionedCall¢ conv2d_7/StatefulPartitionedCall¢ conv2d_8/StatefulPartitionedCall¢ conv2d_9/StatefulPartitionedCall¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall¢dense_2/StatefulPartitionedCall¢dense_3/StatefulPartitionedCall¢dense_4/StatefulPartitionedCall¢dropout/StatefulPartitionedCall¢!dropout_1/StatefulPartitionedCall¢(kernel/Regularizer/Square/ReadVariableOp¢*kernel/Regularizer_1/Square/ReadVariableOp¢*kernel/Regularizer_2/Square/ReadVariableOp¢*kernel/Regularizer_3/Square/ReadVariableOp¢*kernel/Regularizer_4/Square/ReadVariableOp¢*kernel/Regularizer_5/Square/ReadVariableOp¢*kernel/Regularizer_6/Square/ReadVariableOp¢*kernel/Regularizer_7/Square/ReadVariableOp¢*kernel/Regularizer_8/Square/ReadVariableOpr
normalization/subSubinput_1normalization_sub_y*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²a
normalization/SqrtSqrtnormalization_sqrt_x*
T0*&
_output_shapes
:\
normalization/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *¿Ö3
normalization/MaximumMaximumnormalization/Sqrt:y:0 normalization/Maximum/y:output:0*
T0*&
_output_shapes
:
normalization/truedivRealDivnormalization/sub:z:0normalization/Maximum:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²
conv2d/StatefulPartitionedCallStatefulPartitionedCallnormalization/truediv:z:0conv2d_188849conv2d_188851*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ² *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_187509
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_188854conv2d_1_188856*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_1_layer_call_and_return_conditional_losses_187531
normalization_1/subSub)conv2d_1/StatefulPartitionedCall:output:0normalization_1_sub_y*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²e
normalization_1/SqrtSqrtnormalization_1_sqrt_x*
T0*&
_output_shapes
:^
normalization_1/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *¿Ö3
normalization_1/MaximumMaximumnormalization_1/Sqrt:y:0"normalization_1/Maximum/y:output:0*
T0*&
_output_shapes
:
normalization_1/truedivRealDivnormalization_1/sub:z:0normalization_1/Maximum:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCallnormalization_1/truediv:z:0conv2d_2_188866conv2d_2_188868*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_2_layer_call_and_return_conditional_losses_187560ð
max_pooling2d/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_187440ñ
dropout/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_188179
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0conv2d_3_188873conv2d_3_188875*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_3_layer_call_and_return_conditional_losses_187590
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0conv2d_4_188878conv2d_4_188880*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_187612
normalization_2/subSub)conv2d_4/StatefulPartitionedCall:output:0normalization_2_sub_y*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmYe
normalization_2/SqrtSqrtnormalization_2_sqrt_x*
T0*&
_output_shapes
:^
normalization_2/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *¿Ö3
normalization_2/MaximumMaximumnormalization_2/Sqrt:y:0"normalization_2/Maximum/y:output:0*
T0*&
_output_shapes
:
normalization_2/truedivRealDivnormalization_2/sub:z:0normalization_2/Maximum:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCallnormalization_2/truediv:z:0conv2d_5_188890conv2d_5_188892*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_187641ô
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_187452
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_188126
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0conv2d_6_188897conv2d_6_188899*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_6_layer_call_and_return_conditional_losses_187671
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0conv2d_7_188902conv2d_7_188904*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_7_layer_call_and_return_conditional_losses_187693
normalization_3/subSub)conv2d_7/StatefulPartitionedCall:output:0normalization_3_sub_y*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,e
normalization_3/SqrtSqrtnormalization_3_sqrt_x*
T0*&
_output_shapes
:^
normalization_3/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *¿Ö3
normalization_3/MaximumMaximumnormalization_3/Sqrt:y:0"normalization_3/Maximum/y:output:0*
T0*&
_output_shapes
:
normalization_3/truedivRealDivnormalization_3/sub:z:0normalization_3/Maximum:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCallnormalization_3/truediv:z:0conv2d_8_188914conv2d_8_188916*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_8_layer_call_and_return_conditional_losses_187722ô
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_187464
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0conv2d_9_188920conv2d_9_188922*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_9_layer_call_and_return_conditional_losses_187739¢
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0conv2d_10_188925conv2d_10_188927*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_10_layer_call_and_return_conditional_losses_187755ù
!average_pooling2d/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_average_pooling2d_layer_call_and_return_conditional_losses_187476
normalization_4/subSub*average_pooling2d/PartitionedCall:output:0normalization_4_sub_y*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
normalization_4/SqrtSqrtnormalization_4_sqrt_x*
T0*&
_output_shapes
:^
normalization_4/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *¿Ö3
normalization_4/MaximumMaximumnormalization_4/Sqrt:y:0"normalization_4/Maximum/y:output:0*
T0*&
_output_shapes
:
normalization_4/truedivRealDivnormalization_4/sub:z:0normalization_4/Maximum:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
flatten/PartitionedCallPartitionedCallnormalization_4/truediv:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_187775
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_188939dense_188941*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_187787
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_188944dense_1_188946*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_187803
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_188949dense_2_188951*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_187819
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_188954dense_3_188956*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_187835
dense_4/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0dense_4_188959dense_4_188961*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_187852~
(kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_188849*&
_output_shapes
: *
dtype0
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: q
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
*kernel/Regularizer_1/Square/ReadVariableOpReadVariableOpconv2d_1_188854*&
_output_shapes
: *
dtype0
kernel/Regularizer_1/SquareSquare2kernel/Regularizer_1/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: s
kernel/Regularizer_1/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer_1/SumSumkernel/Regularizer_1/Square:y:0#kernel/Regularizer_1/Const:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer_1/mulMul#kernel/Regularizer_1/mul/x:output:0!kernel/Regularizer_1/Sum:output:0*
T0*
_output_shapes
: 
*kernel/Regularizer_2/Square/ReadVariableOpReadVariableOpconv2d_2_188866*&
_output_shapes
:*
dtype0
kernel/Regularizer_2/SquareSquare2kernel/Regularizer_2/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:s
kernel/Regularizer_2/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer_2/SumSumkernel/Regularizer_2/Square:y:0#kernel/Regularizer_2/Const:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_2/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer_2/mulMul#kernel/Regularizer_2/mul/x:output:0!kernel/Regularizer_2/Sum:output:0*
T0*
_output_shapes
: 
*kernel/Regularizer_3/Square/ReadVariableOpReadVariableOpconv2d_3_188873*&
_output_shapes
:*
dtype0
kernel/Regularizer_3/SquareSquare2kernel/Regularizer_3/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:s
kernel/Regularizer_3/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer_3/SumSumkernel/Regularizer_3/Square:y:0#kernel/Regularizer_3/Const:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_3/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer_3/mulMul#kernel/Regularizer_3/mul/x:output:0!kernel/Regularizer_3/Sum:output:0*
T0*
_output_shapes
: 
*kernel/Regularizer_4/Square/ReadVariableOpReadVariableOpconv2d_4_188878*&
_output_shapes
:*
dtype0
kernel/Regularizer_4/SquareSquare2kernel/Regularizer_4/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:s
kernel/Regularizer_4/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer_4/SumSumkernel/Regularizer_4/Square:y:0#kernel/Regularizer_4/Const:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_4/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer_4/mulMul#kernel/Regularizer_4/mul/x:output:0!kernel/Regularizer_4/Sum:output:0*
T0*
_output_shapes
: 
*kernel/Regularizer_5/Square/ReadVariableOpReadVariableOpconv2d_5_188890*&
_output_shapes
:*
dtype0
kernel/Regularizer_5/SquareSquare2kernel/Regularizer_5/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:s
kernel/Regularizer_5/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer_5/SumSumkernel/Regularizer_5/Square:y:0#kernel/Regularizer_5/Const:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_5/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer_5/mulMul#kernel/Regularizer_5/mul/x:output:0!kernel/Regularizer_5/Sum:output:0*
T0*
_output_shapes
: 
*kernel/Regularizer_6/Square/ReadVariableOpReadVariableOpconv2d_6_188897*&
_output_shapes
:*
dtype0
kernel/Regularizer_6/SquareSquare2kernel/Regularizer_6/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:s
kernel/Regularizer_6/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer_6/SumSumkernel/Regularizer_6/Square:y:0#kernel/Regularizer_6/Const:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_6/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer_6/mulMul#kernel/Regularizer_6/mul/x:output:0!kernel/Regularizer_6/Sum:output:0*
T0*
_output_shapes
: 
*kernel/Regularizer_7/Square/ReadVariableOpReadVariableOpconv2d_7_188902*&
_output_shapes
:*
dtype0
kernel/Regularizer_7/SquareSquare2kernel/Regularizer_7/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:s
kernel/Regularizer_7/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer_7/SumSumkernel/Regularizer_7/Square:y:0#kernel/Regularizer_7/Const:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_7/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer_7/mulMul#kernel/Regularizer_7/mul/x:output:0!kernel/Regularizer_7/Sum:output:0*
T0*
_output_shapes
: 
*kernel/Regularizer_8/Square/ReadVariableOpReadVariableOpconv2d_8_188914*&
_output_shapes
:*
dtype0
kernel/Regularizer_8/SquareSquare2kernel/Regularizer_8/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:s
kernel/Regularizer_8/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer_8/SumSumkernel/Regularizer_8/Square:y:0#kernel/Regularizer_8/Const:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_8/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer_8/mulMul#kernel/Regularizer_8/mul/x:output:0!kernel/Regularizer_8/Sum:output:0*
T0*
_output_shapes
: w
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÇ
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall"^conv2d_10/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall)^kernel/Regularizer/Square/ReadVariableOp+^kernel/Regularizer_1/Square/ReadVariableOp+^kernel/Regularizer_2/Square/ReadVariableOp+^kernel/Regularizer_3/Square/ReadVariableOp+^kernel/Regularizer_4/Square/ReadVariableOp+^kernel/Regularizer_5/Square/ReadVariableOp+^kernel/Regularizer_6/Square/ReadVariableOp+^kernel/Regularizer_7/Square/ReadVariableOp+^kernel/Regularizer_8/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*¦
_input_shapes
:ÿÿÿÿÿÿÿÿÿÚ²::: : : : ::: : : : : : ::: : : : : : ::: : : : : : ::: : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp2X
*kernel/Regularizer_1/Square/ReadVariableOp*kernel/Regularizer_1/Square/ReadVariableOp2X
*kernel/Regularizer_2/Square/ReadVariableOp*kernel/Regularizer_2/Square/ReadVariableOp2X
*kernel/Regularizer_3/Square/ReadVariableOp*kernel/Regularizer_3/Square/ReadVariableOp2X
*kernel/Regularizer_4/Square/ReadVariableOp*kernel/Regularizer_4/Square/ReadVariableOp2X
*kernel/Regularizer_5/Square/ReadVariableOp*kernel/Regularizer_5/Square/ReadVariableOp2X
*kernel/Regularizer_6/Square/ReadVariableOp*kernel/Regularizer_6/Square/ReadVariableOp2X
*kernel/Regularizer_7/Square/ReadVariableOp*kernel/Regularizer_7/Square/ReadVariableOp2X
*kernel/Regularizer_8/Square/ReadVariableOp*kernel/Regularizer_8/Square/ReadVariableOp:Z V
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²
!
_user_specified_name	input_1:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::, (
&
_output_shapes
:
µ

§
__inference_loss_fn_6_190353K
1kernel_regularizer_square_readvariableop_resource:
identity¢(kernel/Regularizer/Square/ReadVariableOp¢
(kernel/Regularizer/Square/ReadVariableOpReadVariableOp1kernel_regularizer_square_readvariableop_resource*&
_output_shapes
:*
dtype0
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:q
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: X
IdentityIdentitykernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: q
NoOpNoOp)^kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp
ñ
Ð	
+__inference_sequential_layer_call_fn_189257

inputs
unknown
	unknown_0#
	unknown_1: 
	unknown_2: #
	unknown_3: 
	unknown_4:
	unknown_5
	unknown_6#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:

unknown_13

unknown_14$

unknown_15:

unknown_16:$

unknown_17:

unknown_18:$

unknown_19:

unknown_20:

unknown_21

unknown_22$

unknown_23:

unknown_24:$

unknown_25:

unknown_26:$

unknown_27:

unknown_28:

unknown_29

unknown_30

unknown_31:	À@

unknown_32:@

unknown_33:@ 

unknown_34: 

unknown_35: 0

unknown_36:0

unknown_37:0

unknown_38:

unknown_39:

unknown_40:
identity¢StatefulPartitionedCallû
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40*6
Tin/
-2+*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*B
_read_only_resource_inputs$
" 	
!"#$%&'()**0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_188483o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*¦
_input_shapes
:ÿÿÿÿÿÿÿÿÿÚ²::: : : : ::: : : : : : ::: : : : : : ::: : : : : : ::: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::, (
&
_output_shapes
:
Ó
¨
D__inference_conv2d_1_layer_call_and_return_conditional_losses_187531

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp¢(kernel/Regularizer/Square/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²
(kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: q
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: i
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²¢
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿÚ² : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ² 
 
_user_specified_nameinputs
»
L
0__inference_max_pooling2d_1_layer_call_fn_189986

inputs
identityÜ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_187452
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ñ
¦
B__inference_conv2d_layer_call_and_return_conditional_losses_189789

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp¢(kernel/Regularizer/Square/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ² *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ² 
(kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: q
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: i
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ² ¢
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿÚ²: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²
 
_user_specified_nameinputs
É
¨
D__inference_conv2d_3_layer_call_and_return_conditional_losses_187590

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp¢(kernel/Regularizer/Square/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY
(kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:q
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY¢
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿmY: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY
 
_user_specified_nameinputs
Æ	
ô
C__inference_dense_3_layer_call_and_return_conditional_losses_190256

inputs0
matmul_readvariableop_resource:0-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:0*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ0: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0
 
_user_specified_nameinputs
Ó
¨
D__inference_conv2d_1_layer_call_and_return_conditional_losses_189820

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp¢(kernel/Regularizer/Square/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²
(kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: q
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: i
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²¢
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿÚ² : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ² 
 
_user_specified_nameinputs
ö
a
C__inference_dropout_layer_call_and_return_conditional_losses_187572

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmYc

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿmY:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY
 
_user_specified_nameinputs
í

)__inference_conv2d_4_layer_call_fn_189934

inputs!
unknown:
	unknown_0:
identity¢StatefulPartitionedCallä
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_187612w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿmY: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY
 
_user_specified_nameinputs
õ

)__inference_conv2d_1_layer_call_fn_189804

inputs!
unknown: 
	unknown_0:
identity¢StatefulPartitionedCallæ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_1_layer_call_and_return_conditional_losses_187531y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿÚ² : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ² 
 
_user_specified_nameinputs
µ

§
__inference_loss_fn_4_190331K
1kernel_regularizer_square_readvariableop_resource:
identity¢(kernel/Regularizer/Square/ReadVariableOp¢
(kernel/Regularizer/Square/ReadVariableOpReadVariableOp1kernel_regularizer_square_readvariableop_resource*&
_output_shapes
:*
dtype0
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:q
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: X
IdentityIdentitykernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: q
NoOpNoOp)^kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp
É
¨
D__inference_conv2d_5_layer_call_and_return_conditional_losses_187641

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp¢(kernel/Regularizer/Square/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY
(kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:q
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY¢
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿmY: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY
 
_user_specified_nameinputs
ÕÇ

F__inference_sequential_layer_call_and_return_conditional_losses_187913

inputs
normalization_sub_y
normalization_sqrt_x'
conv2d_187510: 
conv2d_187512: )
conv2d_1_187532: 
conv2d_1_187534:
normalization_1_sub_y
normalization_1_sqrt_x)
conv2d_2_187561:
conv2d_2_187563:)
conv2d_3_187591:
conv2d_3_187593:)
conv2d_4_187613:
conv2d_4_187615:
normalization_2_sub_y
normalization_2_sqrt_x)
conv2d_5_187642:
conv2d_5_187644:)
conv2d_6_187672:
conv2d_6_187674:)
conv2d_7_187694:
conv2d_7_187696:
normalization_3_sub_y
normalization_3_sqrt_x)
conv2d_8_187723:
conv2d_8_187725:)
conv2d_9_187740:
conv2d_9_187742:*
conv2d_10_187756:
conv2d_10_187758:
normalization_4_sub_y
normalization_4_sqrt_x
dense_187788:	À@
dense_187790:@ 
dense_1_187804:@ 
dense_1_187806:  
dense_2_187820: 0
dense_2_187822:0 
dense_3_187836:0
dense_3_187838: 
dense_4_187853:
dense_4_187855:
identity¢conv2d/StatefulPartitionedCall¢ conv2d_1/StatefulPartitionedCall¢!conv2d_10/StatefulPartitionedCall¢ conv2d_2/StatefulPartitionedCall¢ conv2d_3/StatefulPartitionedCall¢ conv2d_4/StatefulPartitionedCall¢ conv2d_5/StatefulPartitionedCall¢ conv2d_6/StatefulPartitionedCall¢ conv2d_7/StatefulPartitionedCall¢ conv2d_8/StatefulPartitionedCall¢ conv2d_9/StatefulPartitionedCall¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall¢dense_2/StatefulPartitionedCall¢dense_3/StatefulPartitionedCall¢dense_4/StatefulPartitionedCall¢(kernel/Regularizer/Square/ReadVariableOp¢*kernel/Regularizer_1/Square/ReadVariableOp¢*kernel/Regularizer_2/Square/ReadVariableOp¢*kernel/Regularizer_3/Square/ReadVariableOp¢*kernel/Regularizer_4/Square/ReadVariableOp¢*kernel/Regularizer_5/Square/ReadVariableOp¢*kernel/Regularizer_6/Square/ReadVariableOp¢*kernel/Regularizer_7/Square/ReadVariableOp¢*kernel/Regularizer_8/Square/ReadVariableOpq
normalization/subSubinputsnormalization_sub_y*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²a
normalization/SqrtSqrtnormalization_sqrt_x*
T0*&
_output_shapes
:\
normalization/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *¿Ö3
normalization/MaximumMaximumnormalization/Sqrt:y:0 normalization/Maximum/y:output:0*
T0*&
_output_shapes
:
normalization/truedivRealDivnormalization/sub:z:0normalization/Maximum:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²
conv2d/StatefulPartitionedCallStatefulPartitionedCallnormalization/truediv:z:0conv2d_187510conv2d_187512*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ² *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_187509
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_187532conv2d_1_187534*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_1_layer_call_and_return_conditional_losses_187531
normalization_1/subSub)conv2d_1/StatefulPartitionedCall:output:0normalization_1_sub_y*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²e
normalization_1/SqrtSqrtnormalization_1_sqrt_x*
T0*&
_output_shapes
:^
normalization_1/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *¿Ö3
normalization_1/MaximumMaximumnormalization_1/Sqrt:y:0"normalization_1/Maximum/y:output:0*
T0*&
_output_shapes
:
normalization_1/truedivRealDivnormalization_1/sub:z:0normalization_1/Maximum:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCallnormalization_1/truediv:z:0conv2d_2_187561conv2d_2_187563*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_2_layer_call_and_return_conditional_losses_187560ð
max_pooling2d/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_187440á
dropout/PartitionedCallPartitionedCall&max_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_187572
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0conv2d_3_187591conv2d_3_187593*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_3_layer_call_and_return_conditional_losses_187590
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0conv2d_4_187613conv2d_4_187615*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_187612
normalization_2/subSub)conv2d_4/StatefulPartitionedCall:output:0normalization_2_sub_y*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmYe
normalization_2/SqrtSqrtnormalization_2_sqrt_x*
T0*&
_output_shapes
:^
normalization_2/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *¿Ö3
normalization_2/MaximumMaximumnormalization_2/Sqrt:y:0"normalization_2/Maximum/y:output:0*
T0*&
_output_shapes
:
normalization_2/truedivRealDivnormalization_2/sub:z:0normalization_2/Maximum:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCallnormalization_2/truediv:z:0conv2d_5_187642conv2d_5_187644*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_187641ô
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_187452ç
dropout_1/PartitionedCallPartitionedCall(max_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_187653
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0conv2d_6_187672conv2d_6_187674*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_6_layer_call_and_return_conditional_losses_187671
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0conv2d_7_187694conv2d_7_187696*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_7_layer_call_and_return_conditional_losses_187693
normalization_3/subSub)conv2d_7/StatefulPartitionedCall:output:0normalization_3_sub_y*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,e
normalization_3/SqrtSqrtnormalization_3_sqrt_x*
T0*&
_output_shapes
:^
normalization_3/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *¿Ö3
normalization_3/MaximumMaximumnormalization_3/Sqrt:y:0"normalization_3/Maximum/y:output:0*
T0*&
_output_shapes
:
normalization_3/truedivRealDivnormalization_3/sub:z:0normalization_3/Maximum:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCallnormalization_3/truediv:z:0conv2d_8_187723conv2d_8_187725*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_8_layer_call_and_return_conditional_losses_187722ô
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_187464
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0conv2d_9_187740conv2d_9_187742*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_9_layer_call_and_return_conditional_losses_187739¢
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0conv2d_10_187756conv2d_10_187758*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_10_layer_call_and_return_conditional_losses_187755ù
!average_pooling2d/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_average_pooling2d_layer_call_and_return_conditional_losses_187476
normalization_4/subSub*average_pooling2d/PartitionedCall:output:0normalization_4_sub_y*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
normalization_4/SqrtSqrtnormalization_4_sqrt_x*
T0*&
_output_shapes
:^
normalization_4/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *¿Ö3
normalization_4/MaximumMaximumnormalization_4/Sqrt:y:0"normalization_4/Maximum/y:output:0*
T0*&
_output_shapes
:
normalization_4/truedivRealDivnormalization_4/sub:z:0normalization_4/Maximum:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
flatten/PartitionedCallPartitionedCallnormalization_4/truediv:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_187775
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_187788dense_187790*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_187787
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_187804dense_1_187806*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_187803
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_187820dense_2_187822*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_187819
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_187836dense_3_187838*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_187835
dense_4/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0dense_4_187853dense_4_187855*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_187852~
(kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_187510*&
_output_shapes
: *
dtype0
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: q
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
*kernel/Regularizer_1/Square/ReadVariableOpReadVariableOpconv2d_1_187532*&
_output_shapes
: *
dtype0
kernel/Regularizer_1/SquareSquare2kernel/Regularizer_1/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: s
kernel/Regularizer_1/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer_1/SumSumkernel/Regularizer_1/Square:y:0#kernel/Regularizer_1/Const:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer_1/mulMul#kernel/Regularizer_1/mul/x:output:0!kernel/Regularizer_1/Sum:output:0*
T0*
_output_shapes
: 
*kernel/Regularizer_2/Square/ReadVariableOpReadVariableOpconv2d_2_187561*&
_output_shapes
:*
dtype0
kernel/Regularizer_2/SquareSquare2kernel/Regularizer_2/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:s
kernel/Regularizer_2/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer_2/SumSumkernel/Regularizer_2/Square:y:0#kernel/Regularizer_2/Const:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_2/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer_2/mulMul#kernel/Regularizer_2/mul/x:output:0!kernel/Regularizer_2/Sum:output:0*
T0*
_output_shapes
: 
*kernel/Regularizer_3/Square/ReadVariableOpReadVariableOpconv2d_3_187591*&
_output_shapes
:*
dtype0
kernel/Regularizer_3/SquareSquare2kernel/Regularizer_3/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:s
kernel/Regularizer_3/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer_3/SumSumkernel/Regularizer_3/Square:y:0#kernel/Regularizer_3/Const:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_3/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer_3/mulMul#kernel/Regularizer_3/mul/x:output:0!kernel/Regularizer_3/Sum:output:0*
T0*
_output_shapes
: 
*kernel/Regularizer_4/Square/ReadVariableOpReadVariableOpconv2d_4_187613*&
_output_shapes
:*
dtype0
kernel/Regularizer_4/SquareSquare2kernel/Regularizer_4/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:s
kernel/Regularizer_4/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer_4/SumSumkernel/Regularizer_4/Square:y:0#kernel/Regularizer_4/Const:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_4/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer_4/mulMul#kernel/Regularizer_4/mul/x:output:0!kernel/Regularizer_4/Sum:output:0*
T0*
_output_shapes
: 
*kernel/Regularizer_5/Square/ReadVariableOpReadVariableOpconv2d_5_187642*&
_output_shapes
:*
dtype0
kernel/Regularizer_5/SquareSquare2kernel/Regularizer_5/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:s
kernel/Regularizer_5/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer_5/SumSumkernel/Regularizer_5/Square:y:0#kernel/Regularizer_5/Const:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_5/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer_5/mulMul#kernel/Regularizer_5/mul/x:output:0!kernel/Regularizer_5/Sum:output:0*
T0*
_output_shapes
: 
*kernel/Regularizer_6/Square/ReadVariableOpReadVariableOpconv2d_6_187672*&
_output_shapes
:*
dtype0
kernel/Regularizer_6/SquareSquare2kernel/Regularizer_6/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:s
kernel/Regularizer_6/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer_6/SumSumkernel/Regularizer_6/Square:y:0#kernel/Regularizer_6/Const:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_6/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer_6/mulMul#kernel/Regularizer_6/mul/x:output:0!kernel/Regularizer_6/Sum:output:0*
T0*
_output_shapes
: 
*kernel/Regularizer_7/Square/ReadVariableOpReadVariableOpconv2d_7_187694*&
_output_shapes
:*
dtype0
kernel/Regularizer_7/SquareSquare2kernel/Regularizer_7/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:s
kernel/Regularizer_7/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer_7/SumSumkernel/Regularizer_7/Square:y:0#kernel/Regularizer_7/Const:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_7/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer_7/mulMul#kernel/Regularizer_7/mul/x:output:0!kernel/Regularizer_7/Sum:output:0*
T0*
_output_shapes
: 
*kernel/Regularizer_8/Square/ReadVariableOpReadVariableOpconv2d_8_187723*&
_output_shapes
:*
dtype0
kernel/Regularizer_8/SquareSquare2kernel/Regularizer_8/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:s
kernel/Regularizer_8/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer_8/SumSumkernel/Regularizer_8/Square:y:0#kernel/Regularizer_8/Const:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_8/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer_8/mulMul#kernel/Regularizer_8/mul/x:output:0!kernel/Regularizer_8/Sum:output:0*
T0*
_output_shapes
: w
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall"^conv2d_10/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall)^kernel/Regularizer/Square/ReadVariableOp+^kernel/Regularizer_1/Square/ReadVariableOp+^kernel/Regularizer_2/Square/ReadVariableOp+^kernel/Regularizer_3/Square/ReadVariableOp+^kernel/Regularizer_4/Square/ReadVariableOp+^kernel/Regularizer_5/Square/ReadVariableOp+^kernel/Regularizer_6/Square/ReadVariableOp+^kernel/Regularizer_7/Square/ReadVariableOp+^kernel/Regularizer_8/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*¦
_input_shapes
:ÿÿÿÿÿÿÿÿÿÚ²::: : : : ::: : : : : : ::: : : : : : ::: : : : : : ::: : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp2X
*kernel/Regularizer_1/Square/ReadVariableOp*kernel/Regularizer_1/Square/ReadVariableOp2X
*kernel/Regularizer_2/Square/ReadVariableOp*kernel/Regularizer_2/Square/ReadVariableOp2X
*kernel/Regularizer_3/Square/ReadVariableOp*kernel/Regularizer_3/Square/ReadVariableOp2X
*kernel/Regularizer_4/Square/ReadVariableOp*kernel/Regularizer_4/Square/ReadVariableOp2X
*kernel/Regularizer_5/Square/ReadVariableOp*kernel/Regularizer_5/Square/ReadVariableOp2X
*kernel/Regularizer_6/Square/ReadVariableOp*kernel/Regularizer_6/Square/ReadVariableOp2X
*kernel/Regularizer_7/Square/ReadVariableOp*kernel/Regularizer_7/Square/ReadVariableOp2X
*kernel/Regularizer_8/Square/ReadVariableOp*kernel/Regularizer_8/Square/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::, (
&
_output_shapes
:
í

)__inference_conv2d_9_layer_call_fn_190130

inputs!
unknown:
	unknown_0:
identity¢StatefulPartitionedCallä
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_9_layer_call_and_return_conditional_losses_187739w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
µ

§
__inference_loss_fn_7_190364K
1kernel_regularizer_square_readvariableop_resource:
identity¢(kernel/Regularizer/Square/ReadVariableOp¢
(kernel/Regularizer/Square/ReadVariableOpReadVariableOp1kernel_regularizer_square_readvariableop_resource*&
_output_shapes
:*
dtype0
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:q
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: X
IdentityIdentitykernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: q
NoOpNoOp)^kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp


ô
C__inference_dense_4_layer_call_and_return_conditional_losses_190276

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

e
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_189861

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
³

d
E__inference_dropout_1_layer_call_and_return_conditional_losses_188126

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>®
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ6,:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,
 
_user_specified_nameinputs
Æ	
ô
C__inference_dense_3_layer_call_and_return_conditional_losses_187835

inputs0
matmul_readvariableop_resource:0-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:0*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ0: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ0
 
_user_specified_nameinputs
±

b
C__inference_dropout_layer_call_and_return_conditional_losses_188179

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmYC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>®
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmYw
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmYq
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmYa
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿmY:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY
 
_user_specified_nameinputs
»
L
0__inference_max_pooling2d_2_layer_call_fn_190116

inputs
identityÜ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_187464
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
É
¨
D__inference_conv2d_4_layer_call_and_return_conditional_losses_189950

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp¢(kernel/Regularizer/Square/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY
(kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:q
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY¢
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿmY: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmY
 
_user_specified_nameinputs
ø
c
E__inference_dropout_1_layer_call_and_return_conditional_losses_187653

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ6,:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,
 
_user_specified_nameinputs
Ñ
¦
B__inference_conv2d_layer_call_and_return_conditional_losses_187509

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp¢(kernel/Regularizer/Square/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ² *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ² 
(kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: q
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: i
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ² ¢
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿÚ²: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²
 
_user_specified_nameinputs
É
¨
D__inference_conv2d_8_layer_call_and_return_conditional_losses_190111

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp¢(kernel/Regularizer/Square/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,
(kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:q
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,¢
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ6,: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,
 
_user_specified_nameinputs
Ã

(__inference_dense_4_layer_call_fn_190265

inputs
unknown:
	unknown_0:
identity¢StatefulPartitionedCallÛ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_187852o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
õ

)__inference_conv2d_2_layer_call_fn_189835

inputs!
unknown:
	unknown_0:
identity¢StatefulPartitionedCallæ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_2_layer_call_and_return_conditional_losses_187560y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿÚ²: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²
 
_user_specified_nameinputs
É
¨
D__inference_conv2d_7_layer_call_and_return_conditional_losses_187693

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp¢(kernel/Regularizer/Square/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,
(kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:q
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,¢
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ6,: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,
 
_user_specified_nameinputs
Ó
¨
D__inference_conv2d_2_layer_call_and_return_conditional_losses_189851

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp¢(kernel/Regularizer/Square/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²
(kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:q
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: i
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²¢
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿÚ²: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ²
 
_user_specified_nameinputs
È	
ó
A__inference_dense_layer_call_and_return_conditional_losses_187787

inputs1
matmul_readvariableop_resource:	À@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	À@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs
³

d
E__inference_dropout_1_layer_call_and_return_conditional_losses_190018

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>®
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ6,:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ6,
 
_user_specified_nameinputs"ÛL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*´
serving_default 
E
input_1:
serving_default_input_1:0ÿÿÿÿÿÿÿÿÿÚ²;
dense_40
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:¥¼
¶	
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
layer-5
layer-6
layer_with_weights-5
layer-7
	layer_with_weights-6
	layer-8

layer_with_weights-7

layer-9
layer_with_weights-8
layer-10
layer-11
layer-12
layer_with_weights-9
layer-13
layer_with_weights-10
layer-14
layer_with_weights-11
layer-15
layer_with_weights-12
layer-16
layer-17
layer_with_weights-13
layer-18
layer_with_weights-14
layer-19
layer-20
layer_with_weights-15
layer-21
layer-22
layer_with_weights-16
layer-23
layer_with_weights-17
layer-24
layer_with_weights-18
layer-25
layer_with_weights-19
layer-26
layer_with_weights-20
layer-27
	optimizer

signatures
#_self_saveable_object_factories
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses
&_default_save_signature"
_tf_keras_sequential
ã
'
_keep_axis
(_reduce_axis
)_reduce_axis_mask
*_broadcast_shape
+mean
+
adapt_mean
,variance
,adapt_variance
	-count
#._self_saveable_object_factories
/	keras_api"
_tf_keras_layer
à

0kernel
1bias
#2_self_saveable_object_factories
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses"
_tf_keras_layer
à

9kernel
:bias
#;_self_saveable_object_factories
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses"
_tf_keras_layer
ã
B
_keep_axis
C_reduce_axis
D_reduce_axis_mask
E_broadcast_shape
Fmean
F
adapt_mean
Gvariance
Gadapt_variance
	Hcount
#I_self_saveable_object_factories
J	keras_api"
_tf_keras_layer
à

Kkernel
Lbias
#M_self_saveable_object_factories
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses"
_tf_keras_layer
Ê
#T_self_saveable_object_factories
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses"
_tf_keras_layer
á
#[_self_saveable_object_factories
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`_random_generator
a__call__
*b&call_and_return_all_conditional_losses"
_tf_keras_layer
à

ckernel
dbias
#e_self_saveable_object_factories
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j__call__
*k&call_and_return_all_conditional_losses"
_tf_keras_layer
à

lkernel
mbias
#n_self_saveable_object_factories
o	variables
ptrainable_variables
qregularization_losses
r	keras_api
s__call__
*t&call_and_return_all_conditional_losses"
_tf_keras_layer
ã
u
_keep_axis
v_reduce_axis
w_reduce_axis_mask
x_broadcast_shape
ymean
y
adapt_mean
zvariance
zadapt_variance
	{count
#|_self_saveable_object_factories
}	keras_api"
_tf_keras_layer
ç

~kernel
bias
$_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Ñ
$_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
é
$_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
é
kernel
	bias
$_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
é
kernel
	 bias
$¡_self_saveable_object_factories
¢	variables
£trainable_variables
¤regularization_losses
¥	keras_api
¦__call__
+§&call_and_return_all_conditional_losses"
_tf_keras_layer
î
¨
_keep_axis
©_reduce_axis
ª_reduce_axis_mask
«_broadcast_shape
	¬mean
¬
adapt_mean
­variance
­adapt_variance

®count
$¯_self_saveable_object_factories
°	keras_api"
_tf_keras_layer
é
±kernel
	²bias
$³_self_saveable_object_factories
´	variables
µtrainable_variables
¶regularization_losses
·	keras_api
¸__call__
+¹&call_and_return_all_conditional_losses"
_tf_keras_layer
Ñ
$º_self_saveable_object_factories
»	variables
¼trainable_variables
½regularization_losses
¾	keras_api
¿__call__
+À&call_and_return_all_conditional_losses"
_tf_keras_layer
é
Ákernel
	Âbias
$Ã_self_saveable_object_factories
Ä	variables
Åtrainable_variables
Æregularization_losses
Ç	keras_api
È__call__
+É&call_and_return_all_conditional_losses"
_tf_keras_layer
é
Êkernel
	Ëbias
$Ì_self_saveable_object_factories
Í	variables
Îtrainable_variables
Ïregularization_losses
Ð	keras_api
Ñ__call__
+Ò&call_and_return_all_conditional_losses"
_tf_keras_layer
Ñ
$Ó_self_saveable_object_factories
Ô	variables
Õtrainable_variables
Öregularization_losses
×	keras_api
Ø__call__
+Ù&call_and_return_all_conditional_losses"
_tf_keras_layer
î
Ú
_keep_axis
Û_reduce_axis
Ü_reduce_axis_mask
Ý_broadcast_shape
	Þmean
Þ
adapt_mean
ßvariance
ßadapt_variance

àcount
$á_self_saveable_object_factories
â	keras_api"
_tf_keras_layer
Ñ
$ã_self_saveable_object_factories
ä	variables
åtrainable_variables
æregularization_losses
ç	keras_api
è__call__
+é&call_and_return_all_conditional_losses"
_tf_keras_layer
é
êkernel
	ëbias
$ì_self_saveable_object_factories
í	variables
îtrainable_variables
ïregularization_losses
ð	keras_api
ñ__call__
+ò&call_and_return_all_conditional_losses"
_tf_keras_layer
é
ókernel
	ôbias
$õ_self_saveable_object_factories
ö	variables
÷trainable_variables
øregularization_losses
ù	keras_api
ú__call__
+û&call_and_return_all_conditional_losses"
_tf_keras_layer
é
ükernel
	ýbias
$þ_self_saveable_object_factories
ÿ	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
é
kernel
	bias
$_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
é
kernel
	bias
$_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer

	iter
beta_1
beta_2

decay
learning_rate
momentum_cache0m¶1m·9m¸:m¹KmºLm»cm¼dm½lm¾mm¿~mÀmÁ	mÂ	mÃ	mÄ	 mÅ	±mÆ	²mÇ	ÁmÈ	ÂmÉ	ÊmÊ	ËmË	êmÌ	ëmÍ	ómÎ	ômÏ	ümÐ	ýmÑ	mÒ	mÓ	mÔ	mÕ0vÖ1v×9vØ:vÙKvÚLvÛcvÜdvÝlvÞmvß~vàvá	vâ	vã	vä	 vå	±væ	²vç	Ávè	Âvé	Êvê	Ëvë	êvì	ëví	óvî	ôvï	üvð	ývñ	vò	vó	vô	võ"
	optimizer
-
serving_default"
signature_map
 "
trackable_dict_wrapper
¨
+0
,1
-2
03
14
95
:6
F7
G8
H9
K10
L11
c12
d13
l14
m15
y16
z17
{18
~19
20
21
22
23
 24
¬25
­26
®27
±28
²29
Á30
Â31
Ê32
Ë33
Þ34
ß35
à36
ê37
ë38
ó39
ô40
ü41
ý42
43
44
45
46"
trackable_list_wrapper
ª
00
11
92
:3
K4
L5
c6
d7
l8
m9
~10
11
12
13
14
 15
±16
²17
Á18
Â19
Ê20
Ë21
ê22
ë23
ó24
ô25
ü26
ý27
28
29
30
31"
trackable_list_wrapper
h
0
1
 2
¡3
¢4
£5
¤6
¥7
¦8"
trackable_list_wrapper
Ï
§non_trainable_variables
¨layers
©metrics
 ªlayer_regularization_losses
«layer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
&_default_save_signature
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses"
_generic_user_object
ú2÷
+__inference_sequential_layer_call_fn_188000
+__inference_sequential_layer_call_fn_189168
+__inference_sequential_layer_call_fn_189257
+__inference_sequential_layer_call_fn_188659À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
æ2ã
F__inference_sequential_layer_call_and_return_conditional_losses_189455
F__inference_sequential_layer_call_and_return_conditional_losses_189667
F__inference_sequential_layer_call_and_return_conditional_losses_188839
F__inference_sequential_layer_call_and_return_conditional_losses_189019À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ÌBÉ
!__inference__wrapped_model_187431input_1"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
:2normalization/mean
": 2normalization/variance
:	 2normalization/count
 "
trackable_dict_wrapper
"
_generic_user_object
':% 2conv2d/kernel
: 2conv2d/bias
 "
trackable_dict_wrapper
.
00
11"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
(
0"
trackable_list_wrapper
²
¬non_trainable_variables
­layers
®metrics
 ¯layer_regularization_losses
°layer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses"
_generic_user_object
Ñ2Î
'__inference_conv2d_layer_call_fn_189773¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ì2é
B__inference_conv2d_layer_call_and_return_conditional_losses_189789¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
):' 2conv2d_1/kernel
:2conv2d_1/bias
 "
trackable_dict_wrapper
.
90
:1"
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
(
0"
trackable_list_wrapper
²
±non_trainable_variables
²layers
³metrics
 ´layer_regularization_losses
µlayer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
Ó2Ð
)__inference_conv2d_1_layer_call_fn_189804¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_conv2d_1_layer_call_and_return_conditional_losses_189820¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 :2normalization_1/mean
$:"2normalization_1/variance
:	 2normalization_1/count
 "
trackable_dict_wrapper
"
_generic_user_object
):'2conv2d_2/kernel
:2conv2d_2/bias
 "
trackable_dict_wrapper
.
K0
L1"
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
(
 0"
trackable_list_wrapper
²
¶non_trainable_variables
·layers
¸metrics
 ¹layer_regularization_losses
ºlayer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses"
_generic_user_object
Ó2Ð
)__inference_conv2d_2_layer_call_fn_189835¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_conv2d_2_layer_call_and_return_conditional_losses_189851¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
»non_trainable_variables
¼layers
½metrics
 ¾layer_regularization_losses
¿layer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses"
_generic_user_object
Ø2Õ
.__inference_max_pooling2d_layer_call_fn_189856¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ó2ð
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_189861¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ànon_trainable_variables
Álayers
Âmetrics
 Ãlayer_regularization_losses
Älayer_metrics
\	variables
]trainable_variables
^regularization_losses
a__call__
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
(__inference_dropout_layer_call_fn_189866
(__inference_dropout_layer_call_fn_189871´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ä2Á
C__inference_dropout_layer_call_and_return_conditional_losses_189876
C__inference_dropout_layer_call_and_return_conditional_losses_189888´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
):'2conv2d_3/kernel
:2conv2d_3/bias
 "
trackable_dict_wrapper
.
c0
d1"
trackable_list_wrapper
.
c0
d1"
trackable_list_wrapper
(
¡0"
trackable_list_wrapper
²
Ånon_trainable_variables
Ælayers
Çmetrics
 Èlayer_regularization_losses
Élayer_metrics
f	variables
gtrainable_variables
hregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses"
_generic_user_object
Ó2Ð
)__inference_conv2d_3_layer_call_fn_189903¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_conv2d_3_layer_call_and_return_conditional_losses_189919¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
):'2conv2d_4/kernel
:2conv2d_4/bias
 "
trackable_dict_wrapper
.
l0
m1"
trackable_list_wrapper
.
l0
m1"
trackable_list_wrapper
(
¢0"
trackable_list_wrapper
²
Ênon_trainable_variables
Ëlayers
Ìmetrics
 Ílayer_regularization_losses
Îlayer_metrics
o	variables
ptrainable_variables
qregularization_losses
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses"
_generic_user_object
Ó2Ð
)__inference_conv2d_4_layer_call_fn_189934¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_conv2d_4_layer_call_and_return_conditional_losses_189950¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 :2normalization_2/mean
$:"2normalization_2/variance
:	 2normalization_2/count
 "
trackable_dict_wrapper
"
_generic_user_object
):'2conv2d_5/kernel
:2conv2d_5/bias
 "
trackable_dict_wrapper
.
~0
1"
trackable_list_wrapper
.
~0
1"
trackable_list_wrapper
(
£0"
trackable_list_wrapper
¸
Ïnon_trainable_variables
Ðlayers
Ñmetrics
 Òlayer_regularization_losses
Ólayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
Ó2Ð
)__inference_conv2d_5_layer_call_fn_189965¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_conv2d_5_layer_call_and_return_conditional_losses_189981¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ônon_trainable_variables
Õlayers
Ömetrics
 ×layer_regularization_losses
Ølayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
Ú2×
0__inference_max_pooling2d_1_layer_call_fn_189986¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
õ2ò
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_189991¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ùnon_trainable_variables
Úlayers
Ûmetrics
 Ülayer_regularization_losses
Ýlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
*__inference_dropout_1_layer_call_fn_189996
*__inference_dropout_1_layer_call_fn_190001´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
È2Å
E__inference_dropout_1_layer_call_and_return_conditional_losses_190006
E__inference_dropout_1_layer_call_and_return_conditional_losses_190018´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
):'2conv2d_6/kernel
:2conv2d_6/bias
 "
trackable_dict_wrapper
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
(
¤0"
trackable_list_wrapper
¸
Þnon_trainable_variables
ßlayers
àmetrics
 álayer_regularization_losses
âlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
Ó2Ð
)__inference_conv2d_6_layer_call_fn_190033¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_conv2d_6_layer_call_and_return_conditional_losses_190049¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
):'2conv2d_7/kernel
:2conv2d_7/bias
 "
trackable_dict_wrapper
0
0
 1"
trackable_list_wrapper
0
0
 1"
trackable_list_wrapper
(
¥0"
trackable_list_wrapper
¸
ãnon_trainable_variables
älayers
åmetrics
 ælayer_regularization_losses
çlayer_metrics
¢	variables
£trainable_variables
¤regularization_losses
¦__call__
+§&call_and_return_all_conditional_losses
'§"call_and_return_conditional_losses"
_generic_user_object
Ó2Ð
)__inference_conv2d_7_layer_call_fn_190064¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_conv2d_7_layer_call_and_return_conditional_losses_190080¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 :2normalization_3/mean
$:"2normalization_3/variance
:	 2normalization_3/count
 "
trackable_dict_wrapper
"
_generic_user_object
):'2conv2d_8/kernel
:2conv2d_8/bias
 "
trackable_dict_wrapper
0
±0
²1"
trackable_list_wrapper
0
±0
²1"
trackable_list_wrapper
(
¦0"
trackable_list_wrapper
¸
ènon_trainable_variables
élayers
êmetrics
 ëlayer_regularization_losses
ìlayer_metrics
´	variables
µtrainable_variables
¶regularization_losses
¸__call__
+¹&call_and_return_all_conditional_losses
'¹"call_and_return_conditional_losses"
_generic_user_object
Ó2Ð
)__inference_conv2d_8_layer_call_fn_190095¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_conv2d_8_layer_call_and_return_conditional_losses_190111¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ínon_trainable_variables
îlayers
ïmetrics
 ðlayer_regularization_losses
ñlayer_metrics
»	variables
¼trainable_variables
½regularization_losses
¿__call__
+À&call_and_return_all_conditional_losses
'À"call_and_return_conditional_losses"
_generic_user_object
Ú2×
0__inference_max_pooling2d_2_layer_call_fn_190116¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
õ2ò
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_190121¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
):'2conv2d_9/kernel
:2conv2d_9/bias
 "
trackable_dict_wrapper
0
Á0
Â1"
trackable_list_wrapper
0
Á0
Â1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ònon_trainable_variables
ólayers
ômetrics
 õlayer_regularization_losses
ölayer_metrics
Ä	variables
Åtrainable_variables
Æregularization_losses
È__call__
+É&call_and_return_all_conditional_losses
'É"call_and_return_conditional_losses"
_generic_user_object
Ó2Ð
)__inference_conv2d_9_layer_call_fn_190130¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_conv2d_9_layer_call_and_return_conditional_losses_190140¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
*:(2conv2d_10/kernel
:2conv2d_10/bias
 "
trackable_dict_wrapper
0
Ê0
Ë1"
trackable_list_wrapper
0
Ê0
Ë1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
÷non_trainable_variables
ølayers
ùmetrics
 úlayer_regularization_losses
ûlayer_metrics
Í	variables
Îtrainable_variables
Ïregularization_losses
Ñ__call__
+Ò&call_and_return_all_conditional_losses
'Ò"call_and_return_conditional_losses"
_generic_user_object
Ô2Ñ
*__inference_conv2d_10_layer_call_fn_190149¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ï2ì
E__inference_conv2d_10_layer_call_and_return_conditional_losses_190159¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ünon_trainable_variables
ýlayers
þmetrics
 ÿlayer_regularization_losses
layer_metrics
Ô	variables
Õtrainable_variables
Öregularization_losses
Ø__call__
+Ù&call_and_return_all_conditional_losses
'Ù"call_and_return_conditional_losses"
_generic_user_object
Ü2Ù
2__inference_average_pooling2d_layer_call_fn_190164¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
÷2ô
M__inference_average_pooling2d_layer_call_and_return_conditional_losses_190169¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 :2normalization_4/mean
$:"2normalization_4/variance
:	 2normalization_4/count
 "
trackable_dict_wrapper
"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
ä	variables
åtrainable_variables
æregularization_losses
è__call__
+é&call_and_return_all_conditional_losses
'é"call_and_return_conditional_losses"
_generic_user_object
Ò2Ï
(__inference_flatten_layer_call_fn_190174¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
í2ê
C__inference_flatten_layer_call_and_return_conditional_losses_190180¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
:	À@2dense/kernel
:@2
dense/bias
 "
trackable_dict_wrapper
0
ê0
ë1"
trackable_list_wrapper
0
ê0
ë1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
í	variables
îtrainable_variables
ïregularization_losses
ñ__call__
+ò&call_and_return_all_conditional_losses
'ò"call_and_return_conditional_losses"
_generic_user_object
Ð2Í
&__inference_dense_layer_call_fn_190189¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ë2è
A__inference_dense_layer_call_and_return_conditional_losses_190199¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 :@ 2dense_1/kernel
: 2dense_1/bias
 "
trackable_dict_wrapper
0
ó0
ô1"
trackable_list_wrapper
0
ó0
ô1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
ö	variables
÷trainable_variables
øregularization_losses
ú__call__
+û&call_and_return_all_conditional_losses
'û"call_and_return_conditional_losses"
_generic_user_object
Ò2Ï
(__inference_dense_1_layer_call_fn_190208¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
í2ê
C__inference_dense_1_layer_call_and_return_conditional_losses_190218¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 : 02dense_2/kernel
:02dense_2/bias
 "
trackable_dict_wrapper
0
ü0
ý1"
trackable_list_wrapper
0
ü0
ý1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
ÿ	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
Ò2Ï
(__inference_dense_2_layer_call_fn_190227¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
í2ê
C__inference_dense_2_layer_call_and_return_conditional_losses_190237¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 :02dense_3/kernel
:2dense_3/bias
 "
trackable_dict_wrapper
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
Ò2Ï
(__inference_dense_3_layer_call_fn_190246¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
í2ê
C__inference_dense_3_layer_call_and_return_conditional_losses_190256¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 :2dense_4/kernel
:2dense_4/bias
 "
trackable_dict_wrapper
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
Ò2Ï
(__inference_dense_4_layer_call_fn_190265¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
í2ê
C__inference_dense_4_layer_call_and_return_conditional_losses_190276¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
:	 (2
Nadam/iter
: (2Nadam/beta_1
: (2Nadam/beta_2
: (2Nadam/decay
: (2Nadam/learning_rate
: (2Nadam/momentum_cache
ËBÈ
$__inference_signature_wrapper_189758input_1"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
³2°
__inference_loss_fn_0_190287
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
³2°
__inference_loss_fn_1_190298
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
³2°
__inference_loss_fn_2_190309
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
³2°
__inference_loss_fn_3_190320
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
³2°
__inference_loss_fn_4_190331
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
³2°
__inference_loss_fn_5_190342
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
³2°
__inference_loss_fn_6_190353
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
³2°
__inference_loss_fn_7_190364
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
³2°
__inference_loss_fn_8_190375
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 

+0
,1
-2
F3
G4
H5
y6
z7
{8
¬9
­10
®11
Þ12
ß13
à14"
trackable_list_wrapper
ö
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27"
trackable_list_wrapper
@
0
 1
¡2
¢3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
 0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
¡0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
¢0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
£0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
¤0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
¥0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
¦0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
R

£total

¤count
¥	variables
¦	keras_api"
_tf_keras_metric
v
§
thresholds
¨true_positives
©false_positives
ª	variables
«	keras_api"
_tf_keras_metric
v
¬
thresholds
­true_positives
®false_negatives
¯	variables
°	keras_api"
_tf_keras_metric
c

±total

²count
³
_fn_kwargs
´	variables
µ	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
£0
¤1"
trackable_list_wrapper
.
¥	variables"
_generic_user_object
 "
trackable_list_wrapper
: (2true_positives
: (2false_positives
0
¨0
©1"
trackable_list_wrapper
.
ª	variables"
_generic_user_object
 "
trackable_list_wrapper
: (2true_positives
: (2false_negatives
0
­0
®1"
trackable_list_wrapper
.
¯	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
±0
²1"
trackable_list_wrapper
.
´	variables"
_generic_user_object
-:+ 2Nadam/conv2d/kernel/m
: 2Nadam/conv2d/bias/m
/:- 2Nadam/conv2d_1/kernel/m
!:2Nadam/conv2d_1/bias/m
/:-2Nadam/conv2d_2/kernel/m
!:2Nadam/conv2d_2/bias/m
/:-2Nadam/conv2d_3/kernel/m
!:2Nadam/conv2d_3/bias/m
/:-2Nadam/conv2d_4/kernel/m
!:2Nadam/conv2d_4/bias/m
/:-2Nadam/conv2d_5/kernel/m
!:2Nadam/conv2d_5/bias/m
/:-2Nadam/conv2d_6/kernel/m
!:2Nadam/conv2d_6/bias/m
/:-2Nadam/conv2d_7/kernel/m
!:2Nadam/conv2d_7/bias/m
/:-2Nadam/conv2d_8/kernel/m
!:2Nadam/conv2d_8/bias/m
/:-2Nadam/conv2d_9/kernel/m
!:2Nadam/conv2d_9/bias/m
0:.2Nadam/conv2d_10/kernel/m
": 2Nadam/conv2d_10/bias/m
%:#	À@2Nadam/dense/kernel/m
:@2Nadam/dense/bias/m
&:$@ 2Nadam/dense_1/kernel/m
 : 2Nadam/dense_1/bias/m
&:$ 02Nadam/dense_2/kernel/m
 :02Nadam/dense_2/bias/m
&:$02Nadam/dense_3/kernel/m
 :2Nadam/dense_3/bias/m
&:$2Nadam/dense_4/kernel/m
 :2Nadam/dense_4/bias/m
-:+ 2Nadam/conv2d/kernel/v
: 2Nadam/conv2d/bias/v
/:- 2Nadam/conv2d_1/kernel/v
!:2Nadam/conv2d_1/bias/v
/:-2Nadam/conv2d_2/kernel/v
!:2Nadam/conv2d_2/bias/v
/:-2Nadam/conv2d_3/kernel/v
!:2Nadam/conv2d_3/bias/v
/:-2Nadam/conv2d_4/kernel/v
!:2Nadam/conv2d_4/bias/v
/:-2Nadam/conv2d_5/kernel/v
!:2Nadam/conv2d_5/bias/v
/:-2Nadam/conv2d_6/kernel/v
!:2Nadam/conv2d_6/bias/v
/:-2Nadam/conv2d_7/kernel/v
!:2Nadam/conv2d_7/bias/v
/:-2Nadam/conv2d_8/kernel/v
!:2Nadam/conv2d_8/bias/v
/:-2Nadam/conv2d_9/kernel/v
!:2Nadam/conv2d_9/bias/v
0:.2Nadam/conv2d_10/kernel/v
": 2Nadam/conv2d_10/bias/v
%:#	À@2Nadam/dense/kernel/v
:@2Nadam/dense/bias/v
&:$@ 2Nadam/dense_1/kernel/v
 : 2Nadam/dense_1/bias/v
&:$ 02Nadam/dense_2/kernel/v
 :02Nadam/dense_2/bias/v
&:$02Nadam/dense_3/kernel/v
 :2Nadam/dense_3/bias/v
&:$2Nadam/dense_4/kernel/v
 :2Nadam/dense_4/bias/v
	J
Const
J	
Const_1
J	
Const_2
J	
Const_3
J	
Const_4
J	
Const_5
J	
Const_6
J	
Const_7
J	
Const_8
J	
Const_9ß
!__inference__wrapped_model_187431¹Hö÷019:øùKLcdlmúû~ üý±²ÁÂÊËþÿêëóôüý:¢7
0¢-
+(
input_1ÿÿÿÿÿÿÿÿÿÚ²
ª "1ª.
,
dense_4!
dense_4ÿÿÿÿÿÿÿÿÿð
M__inference_average_pooling2d_layer_call_and_return_conditional_losses_190169R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 È
2__inference_average_pooling2d_layer_call_fn_190164R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ·
E__inference_conv2d_10_layer_call_and_return_conditional_losses_190159nÊË7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ	
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ

 
*__inference_conv2d_10_layer_call_fn_190149aÊË7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ	
ª " ÿÿÿÿÿÿÿÿÿ
¸
D__inference_conv2d_1_layer_call_and_return_conditional_losses_189820p9:9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿÚ² 
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿÚ²
 
)__inference_conv2d_1_layer_call_fn_189804c9:9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿÚ² 
ª ""ÿÿÿÿÿÿÿÿÿÚ²¸
D__inference_conv2d_2_layer_call_and_return_conditional_losses_189851pKL9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿÚ²
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿÚ²
 
)__inference_conv2d_2_layer_call_fn_189835cKL9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿÚ²
ª ""ÿÿÿÿÿÿÿÿÿÚ²´
D__inference_conv2d_3_layer_call_and_return_conditional_losses_189919lcd7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿmY
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿmY
 
)__inference_conv2d_3_layer_call_fn_189903_cd7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿmY
ª " ÿÿÿÿÿÿÿÿÿmY´
D__inference_conv2d_4_layer_call_and_return_conditional_losses_189950llm7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿmY
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿmY
 
)__inference_conv2d_4_layer_call_fn_189934_lm7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿmY
ª " ÿÿÿÿÿÿÿÿÿmY´
D__inference_conv2d_5_layer_call_and_return_conditional_losses_189981l~7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿmY
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿmY
 
)__inference_conv2d_5_layer_call_fn_189965_~7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿmY
ª " ÿÿÿÿÿÿÿÿÿmY¶
D__inference_conv2d_6_layer_call_and_return_conditional_losses_190049n7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ6,
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ6,
 
)__inference_conv2d_6_layer_call_fn_190033a7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ6,
ª " ÿÿÿÿÿÿÿÿÿ6,¶
D__inference_conv2d_7_layer_call_and_return_conditional_losses_190080n 7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ6,
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ6,
 
)__inference_conv2d_7_layer_call_fn_190064a 7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ6,
ª " ÿÿÿÿÿÿÿÿÿ6,¶
D__inference_conv2d_8_layer_call_and_return_conditional_losses_190111n±²7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ6,
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ6,
 
)__inference_conv2d_8_layer_call_fn_190095a±²7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ6,
ª " ÿÿÿÿÿÿÿÿÿ6,¶
D__inference_conv2d_9_layer_call_and_return_conditional_losses_190140nÁÂ7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ	
 
)__inference_conv2d_9_layer_call_fn_190130aÁÂ7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª " ÿÿÿÿÿÿÿÿÿ	¶
B__inference_conv2d_layer_call_and_return_conditional_losses_189789p019¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿÚ²
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿÚ² 
 
'__inference_conv2d_layer_call_fn_189773c019¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿÚ²
ª ""ÿÿÿÿÿÿÿÿÿÚ² ¥
C__inference_dense_1_layer_call_and_return_conditional_losses_190218^óô/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 }
(__inference_dense_1_layer_call_fn_190208Qóô/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿ ¥
C__inference_dense_2_layer_call_and_return_conditional_losses_190237^üý/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ0
 }
(__inference_dense_2_layer_call_fn_190227Qüý/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿ0¥
C__inference_dense_3_layer_call_and_return_conditional_losses_190256^/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ0
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 }
(__inference_dense_3_layer_call_fn_190246Q/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ0
ª "ÿÿÿÿÿÿÿÿÿ¥
C__inference_dense_4_layer_call_and_return_conditional_losses_190276^/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 }
(__inference_dense_4_layer_call_fn_190265Q/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¤
A__inference_dense_layer_call_and_return_conditional_losses_190199_êë0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÀ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 |
&__inference_dense_layer_call_fn_190189Rêë0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÀ
ª "ÿÿÿÿÿÿÿÿÿ@µ
E__inference_dropout_1_layer_call_and_return_conditional_losses_190006l;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ6,
p 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ6,
 µ
E__inference_dropout_1_layer_call_and_return_conditional_losses_190018l;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ6,
p
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ6,
 
*__inference_dropout_1_layer_call_fn_189996_;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ6,
p 
ª " ÿÿÿÿÿÿÿÿÿ6,
*__inference_dropout_1_layer_call_fn_190001_;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ6,
p
ª " ÿÿÿÿÿÿÿÿÿ6,³
C__inference_dropout_layer_call_and_return_conditional_losses_189876l;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿmY
p 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿmY
 ³
C__inference_dropout_layer_call_and_return_conditional_losses_189888l;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿmY
p
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿmY
 
(__inference_dropout_layer_call_fn_189866_;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿmY
p 
ª " ÿÿÿÿÿÿÿÿÿmY
(__inference_dropout_layer_call_fn_189871_;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿmY
p
ª " ÿÿÿÿÿÿÿÿÿmY¨
C__inference_flatten_layer_call_and_return_conditional_losses_190180a7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÀ
 
(__inference_flatten_layer_call_fn_190174T7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿÀ;
__inference_loss_fn_0_1902870¢

¢ 
ª " ;
__inference_loss_fn_1_1902989¢

¢ 
ª " ;
__inference_loss_fn_2_190309K¢

¢ 
ª " ;
__inference_loss_fn_3_190320c¢

¢ 
ª " ;
__inference_loss_fn_4_190331l¢

¢ 
ª " ;
__inference_loss_fn_5_190342~¢

¢ 
ª " <
__inference_loss_fn_6_190353¢

¢ 
ª " <
__inference_loss_fn_7_190364¢

¢ 
ª " <
__inference_loss_fn_8_190375±¢

¢ 
ª " î
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_189991R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Æ
0__inference_max_pooling2d_1_layer_call_fn_189986R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿî
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_190121R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Æ
0__inference_max_pooling2d_2_layer_call_fn_190116R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿì
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_189861R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ä
.__inference_max_pooling2d_layer_call_fn_189856R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
F__inference_sequential_layer_call_and_return_conditional_losses_188839µHö÷019:øùKLcdlmúû~ üý±²ÁÂÊËþÿêëóôüýB¢?
8¢5
+(
input_1ÿÿÿÿÿÿÿÿÿÚ²
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
F__inference_sequential_layer_call_and_return_conditional_losses_189019µHö÷019:øùKLcdlmúû~ üý±²ÁÂÊËþÿêëóôüýB¢?
8¢5
+(
input_1ÿÿÿÿÿÿÿÿÿÚ²
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ÿ
F__inference_sequential_layer_call_and_return_conditional_losses_189455´Hö÷019:øùKLcdlmúû~ üý±²ÁÂÊËþÿêëóôüýA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿÚ²
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ÿ
F__inference_sequential_layer_call_and_return_conditional_losses_189667´Hö÷019:øùKLcdlmúû~ üý±²ÁÂÊËþÿêëóôüýA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿÚ²
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Ø
+__inference_sequential_layer_call_fn_188000¨Hö÷019:øùKLcdlmúû~ üý±²ÁÂÊËþÿêëóôüýB¢?
8¢5
+(
input_1ÿÿÿÿÿÿÿÿÿÚ²
p 

 
ª "ÿÿÿÿÿÿÿÿÿØ
+__inference_sequential_layer_call_fn_188659¨Hö÷019:øùKLcdlmúû~ üý±²ÁÂÊËþÿêëóôüýB¢?
8¢5
+(
input_1ÿÿÿÿÿÿÿÿÿÚ²
p

 
ª "ÿÿÿÿÿÿÿÿÿ×
+__inference_sequential_layer_call_fn_189168§Hö÷019:øùKLcdlmúû~ üý±²ÁÂÊËþÿêëóôüýA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿÚ²
p 

 
ª "ÿÿÿÿÿÿÿÿÿ×
+__inference_sequential_layer_call_fn_189257§Hö÷019:øùKLcdlmúû~ üý±²ÁÂÊËþÿêëóôüýA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿÚ²
p

 
ª "ÿÿÿÿÿÿÿÿÿí
$__inference_signature_wrapper_189758ÄHö÷019:øùKLcdlmúû~ üý±²ÁÂÊËþÿêëóôüýE¢B
¢ 
;ª8
6
input_1+(
input_1ÿÿÿÿÿÿÿÿÿÚ²"1ª.
,
dense_4!
dense_4ÿÿÿÿÿÿÿÿÿ