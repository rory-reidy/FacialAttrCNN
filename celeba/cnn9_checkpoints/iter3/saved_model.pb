??$
??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
?
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
?
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
?
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
delete_old_dirsbool(?
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
dtypetype?
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
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
?
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
executor_typestring ??
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
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68?? 
?
normalization_16/meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_namenormalization_16/mean
{
)normalization_16/mean/Read/ReadVariableOpReadVariableOpnormalization_16/mean*
_output_shapes
:*
dtype0
?
normalization_16/varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namenormalization_16/variance
?
-normalization_16/variance/Read/ReadVariableOpReadVariableOpnormalization_16/variance*
_output_shapes
:*
dtype0
?
normalization_16/countVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *'
shared_namenormalization_16/count
y
*normalization_16/count/Read/ReadVariableOpReadVariableOpnormalization_16/count*
_output_shapes
: *
dtype0	
?
conv2d_39/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_39/kernel
}
$conv2d_39/kernel/Read/ReadVariableOpReadVariableOpconv2d_39/kernel*&
_output_shapes
: *
dtype0
t
conv2d_39/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_39/bias
m
"conv2d_39/bias/Read/ReadVariableOpReadVariableOpconv2d_39/bias*
_output_shapes
: *
dtype0
?
conv2d_40/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_40/kernel
}
$conv2d_40/kernel/Read/ReadVariableOpReadVariableOpconv2d_40/kernel*&
_output_shapes
: *
dtype0
t
conv2d_40/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_40/bias
m
"conv2d_40/bias/Read/ReadVariableOpReadVariableOpconv2d_40/bias*
_output_shapes
:*
dtype0
?
normalization_17/meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_namenormalization_17/mean
{
)normalization_17/mean/Read/ReadVariableOpReadVariableOpnormalization_17/mean*
_output_shapes
:*
dtype0
?
normalization_17/varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namenormalization_17/variance
?
-normalization_17/variance/Read/ReadVariableOpReadVariableOpnormalization_17/variance*
_output_shapes
:*
dtype0
?
normalization_17/countVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *'
shared_namenormalization_17/count
y
*normalization_17/count/Read/ReadVariableOpReadVariableOpnormalization_17/count*
_output_shapes
: *
dtype0	
?
conv2d_41/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_41/kernel
}
$conv2d_41/kernel/Read/ReadVariableOpReadVariableOpconv2d_41/kernel*&
_output_shapes
:*
dtype0
t
conv2d_41/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_41/bias
m
"conv2d_41/bias/Read/ReadVariableOpReadVariableOpconv2d_41/bias*
_output_shapes
:*
dtype0
?
conv2d_42/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_42/kernel
}
$conv2d_42/kernel/Read/ReadVariableOpReadVariableOpconv2d_42/kernel*&
_output_shapes
:*
dtype0
t
conv2d_42/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_42/bias
m
"conv2d_42/bias/Read/ReadVariableOpReadVariableOpconv2d_42/bias*
_output_shapes
:*
dtype0
?
conv2d_43/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_43/kernel
}
$conv2d_43/kernel/Read/ReadVariableOpReadVariableOpconv2d_43/kernel*&
_output_shapes
:*
dtype0
t
conv2d_43/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_43/bias
m
"conv2d_43/bias/Read/ReadVariableOpReadVariableOpconv2d_43/bias*
_output_shapes
:*
dtype0
?
normalization_18/meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_namenormalization_18/mean
{
)normalization_18/mean/Read/ReadVariableOpReadVariableOpnormalization_18/mean*
_output_shapes
:*
dtype0
?
normalization_18/varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namenormalization_18/variance
?
-normalization_18/variance/Read/ReadVariableOpReadVariableOpnormalization_18/variance*
_output_shapes
:*
dtype0
?
normalization_18/countVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *'
shared_namenormalization_18/count
y
*normalization_18/count/Read/ReadVariableOpReadVariableOpnormalization_18/count*
_output_shapes
: *
dtype0	
?
conv2d_44/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_44/kernel
}
$conv2d_44/kernel/Read/ReadVariableOpReadVariableOpconv2d_44/kernel*&
_output_shapes
:*
dtype0
t
conv2d_44/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_44/bias
m
"conv2d_44/bias/Read/ReadVariableOpReadVariableOpconv2d_44/bias*
_output_shapes
:*
dtype0
?
conv2d_45/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_45/kernel
}
$conv2d_45/kernel/Read/ReadVariableOpReadVariableOpconv2d_45/kernel*&
_output_shapes
:*
dtype0
t
conv2d_45/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_45/bias
m
"conv2d_45/bias/Read/ReadVariableOpReadVariableOpconv2d_45/bias*
_output_shapes
:*
dtype0
?
conv2d_46/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_46/kernel
}
$conv2d_46/kernel/Read/ReadVariableOpReadVariableOpconv2d_46/kernel*&
_output_shapes
:*
dtype0
t
conv2d_46/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_46/bias
m
"conv2d_46/bias/Read/ReadVariableOpReadVariableOpconv2d_46/bias*
_output_shapes
:*
dtype0
?
normalization_19/meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_namenormalization_19/mean
{
)normalization_19/mean/Read/ReadVariableOpReadVariableOpnormalization_19/mean*
_output_shapes
:*
dtype0
?
normalization_19/varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namenormalization_19/variance
?
-normalization_19/variance/Read/ReadVariableOpReadVariableOpnormalization_19/variance*
_output_shapes
:*
dtype0
?
normalization_19/countVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *'
shared_namenormalization_19/count
y
*normalization_19/count/Read/ReadVariableOpReadVariableOpnormalization_19/count*
_output_shapes
: *
dtype0	
?
conv2d_47/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_47/kernel
}
$conv2d_47/kernel/Read/ReadVariableOpReadVariableOpconv2d_47/kernel*&
_output_shapes
:*
dtype0
t
conv2d_47/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_47/bias
m
"conv2d_47/bias/Read/ReadVariableOpReadVariableOpconv2d_47/bias*
_output_shapes
:*
dtype0
?
conv2d_48/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_48/kernel
}
$conv2d_48/kernel/Read/ReadVariableOpReadVariableOpconv2d_48/kernel*&
_output_shapes
:*
dtype0
t
conv2d_48/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_48/bias
m
"conv2d_48/bias/Read/ReadVariableOpReadVariableOpconv2d_48/bias*
_output_shapes
:*
dtype0
?
conv2d_49/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_49/kernel
}
$conv2d_49/kernel/Read/ReadVariableOpReadVariableOpconv2d_49/kernel*&
_output_shapes
:*
dtype0
t
conv2d_49/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_49/bias
m
"conv2d_49/bias/Read/ReadVariableOpReadVariableOpconv2d_49/bias*
_output_shapes
:*
dtype0
?
normalization_20/meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_namenormalization_20/mean
{
)normalization_20/mean/Read/ReadVariableOpReadVariableOpnormalization_20/mean*
_output_shapes
:*
dtype0
?
normalization_20/varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namenormalization_20/variance
?
-normalization_20/variance/Read/ReadVariableOpReadVariableOpnormalization_20/variance*
_output_shapes
:*
dtype0
?
normalization_20/countVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *'
shared_namenormalization_20/count
y
*normalization_20/count/Read/ReadVariableOpReadVariableOpnormalization_20/count*
_output_shapes
: *
dtype0	
?
conv2d_50/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_50/kernel
}
$conv2d_50/kernel/Read/ReadVariableOpReadVariableOpconv2d_50/kernel*&
_output_shapes
: *
dtype0
t
conv2d_50/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_50/bias
m
"conv2d_50/bias/Read/ReadVariableOpReadVariableOpconv2d_50/bias*
_output_shapes
: *
dtype0
?
conv2d_51/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_51/kernel
}
$conv2d_51/kernel/Read/ReadVariableOpReadVariableOpconv2d_51/kernel*&
_output_shapes
: *
dtype0
t
conv2d_51/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_51/bias
m
"conv2d_51/bias/Read/ReadVariableOpReadVariableOpconv2d_51/bias*
_output_shapes
:*
dtype0
?
conv2d_52/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_52/kernel
}
$conv2d_52/kernel/Read/ReadVariableOpReadVariableOpconv2d_52/kernel*&
_output_shapes
:*
dtype0
t
conv2d_52/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_52/bias
m
"conv2d_52/bias/Read/ReadVariableOpReadVariableOpconv2d_52/bias*
_output_shapes
:*
dtype0
?
conv2d_53/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_53/kernel
}
$conv2d_53/kernel/Read/ReadVariableOpReadVariableOpconv2d_53/kernel*&
_output_shapes
:*
dtype0
t
conv2d_53/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_53/bias
m
"conv2d_53/bias/Read/ReadVariableOpReadVariableOpconv2d_53/bias*
_output_shapes
:*
dtype0
?
normalization_21/meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_namenormalization_21/mean
{
)normalization_21/mean/Read/ReadVariableOpReadVariableOpnormalization_21/mean*
_output_shapes
:*
dtype0
?
normalization_21/varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namenormalization_21/variance
?
-normalization_21/variance/Read/ReadVariableOpReadVariableOpnormalization_21/variance*
_output_shapes
:*
dtype0
?
normalization_21/countVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *'
shared_namenormalization_21/count
y
*normalization_21/count/Read/ReadVariableOpReadVariableOpnormalization_21/count*
_output_shapes
: *
dtype0	
x
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: @*
shared_namedense_5/kernel
q
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel*
_output_shapes

: @*
dtype0
p
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_5/bias
i
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes
:@*
dtype0
x
dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *
shared_namedense_6/kernel
q
"dense_6/kernel/Read/ReadVariableOpReadVariableOpdense_6/kernel*
_output_shapes

:@ *
dtype0
p
dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_6/bias
i
 dense_6/bias/Read/ReadVariableOpReadVariableOpdense_6/bias*
_output_shapes
: *
dtype0
x
dense_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: 0*
shared_namedense_7/kernel
q
"dense_7/kernel/Read/ReadVariableOpReadVariableOpdense_7/kernel*
_output_shapes

: 0*
dtype0
p
dense_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*
shared_namedense_7/bias
i
 dense_7/bias/Read/ReadVariableOpReadVariableOpdense_7/bias*
_output_shapes
:0*
dtype0
x
dense_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:0 *
shared_namedense_8/kernel
q
"dense_8/kernel/Read/ReadVariableOpReadVariableOpdense_8/kernel*
_output_shapes

:0 *
dtype0
p
dense_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_8/bias
i
 dense_8/bias/Read/ReadVariableOpReadVariableOpdense_8/bias*
_output_shapes
: *
dtype0
x
dense_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *
shared_namedense_9/kernel
q
"dense_9/kernel/Read/ReadVariableOpReadVariableOpdense_9/kernel*
_output_shapes

: *
dtype0
p
dense_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_9/bias
i
 dense_9/bias/Read/ReadVariableOpReadVariableOpdense_9/bias*
_output_shapes
:*
dtype0
z
dense_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_10/kernel
s
#dense_10/kernel/Read/ReadVariableOpReadVariableOpdense_10/kernel*
_output_shapes

:*
dtype0
r
dense_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_10/bias
k
!dense_10/bias/Read/ReadVariableOpReadVariableOpdense_10/bias*
_output_shapes
:*
dtype0
n
Adadelta/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameAdadelta/iter
g
!Adadelta/iter/Read/ReadVariableOpReadVariableOpAdadelta/iter*
_output_shapes
: *
dtype0	
p
Adadelta/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdadelta/decay
i
"Adadelta/decay/Read/ReadVariableOpReadVariableOpAdadelta/decay*
_output_shapes
: *
dtype0
?
Adadelta/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdadelta/learning_rate
y
*Adadelta/learning_rate/Read/ReadVariableOpReadVariableOpAdadelta/learning_rate*
_output_shapes
: *
dtype0
l
Adadelta/rhoVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdadelta/rho
e
 Adadelta/rho/Read/ReadVariableOpReadVariableOpAdadelta/rho*
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
?
$Adadelta/conv2d_39/kernel/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape: *5
shared_name&$Adadelta/conv2d_39/kernel/accum_grad
?
8Adadelta/conv2d_39/kernel/accum_grad/Read/ReadVariableOpReadVariableOp$Adadelta/conv2d_39/kernel/accum_grad*&
_output_shapes
: *
dtype0
?
"Adadelta/conv2d_39/bias/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adadelta/conv2d_39/bias/accum_grad
?
6Adadelta/conv2d_39/bias/accum_grad/Read/ReadVariableOpReadVariableOp"Adadelta/conv2d_39/bias/accum_grad*
_output_shapes
: *
dtype0
?
$Adadelta/conv2d_40/kernel/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape: *5
shared_name&$Adadelta/conv2d_40/kernel/accum_grad
?
8Adadelta/conv2d_40/kernel/accum_grad/Read/ReadVariableOpReadVariableOp$Adadelta/conv2d_40/kernel/accum_grad*&
_output_shapes
: *
dtype0
?
"Adadelta/conv2d_40/bias/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adadelta/conv2d_40/bias/accum_grad
?
6Adadelta/conv2d_40/bias/accum_grad/Read/ReadVariableOpReadVariableOp"Adadelta/conv2d_40/bias/accum_grad*
_output_shapes
:*
dtype0
?
$Adadelta/conv2d_41/kernel/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Adadelta/conv2d_41/kernel/accum_grad
?
8Adadelta/conv2d_41/kernel/accum_grad/Read/ReadVariableOpReadVariableOp$Adadelta/conv2d_41/kernel/accum_grad*&
_output_shapes
:*
dtype0
?
"Adadelta/conv2d_41/bias/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adadelta/conv2d_41/bias/accum_grad
?
6Adadelta/conv2d_41/bias/accum_grad/Read/ReadVariableOpReadVariableOp"Adadelta/conv2d_41/bias/accum_grad*
_output_shapes
:*
dtype0
?
$Adadelta/conv2d_42/kernel/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Adadelta/conv2d_42/kernel/accum_grad
?
8Adadelta/conv2d_42/kernel/accum_grad/Read/ReadVariableOpReadVariableOp$Adadelta/conv2d_42/kernel/accum_grad*&
_output_shapes
:*
dtype0
?
"Adadelta/conv2d_42/bias/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adadelta/conv2d_42/bias/accum_grad
?
6Adadelta/conv2d_42/bias/accum_grad/Read/ReadVariableOpReadVariableOp"Adadelta/conv2d_42/bias/accum_grad*
_output_shapes
:*
dtype0
?
$Adadelta/conv2d_43/kernel/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Adadelta/conv2d_43/kernel/accum_grad
?
8Adadelta/conv2d_43/kernel/accum_grad/Read/ReadVariableOpReadVariableOp$Adadelta/conv2d_43/kernel/accum_grad*&
_output_shapes
:*
dtype0
?
"Adadelta/conv2d_43/bias/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adadelta/conv2d_43/bias/accum_grad
?
6Adadelta/conv2d_43/bias/accum_grad/Read/ReadVariableOpReadVariableOp"Adadelta/conv2d_43/bias/accum_grad*
_output_shapes
:*
dtype0
?
$Adadelta/conv2d_44/kernel/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Adadelta/conv2d_44/kernel/accum_grad
?
8Adadelta/conv2d_44/kernel/accum_grad/Read/ReadVariableOpReadVariableOp$Adadelta/conv2d_44/kernel/accum_grad*&
_output_shapes
:*
dtype0
?
"Adadelta/conv2d_44/bias/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adadelta/conv2d_44/bias/accum_grad
?
6Adadelta/conv2d_44/bias/accum_grad/Read/ReadVariableOpReadVariableOp"Adadelta/conv2d_44/bias/accum_grad*
_output_shapes
:*
dtype0
?
$Adadelta/conv2d_45/kernel/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Adadelta/conv2d_45/kernel/accum_grad
?
8Adadelta/conv2d_45/kernel/accum_grad/Read/ReadVariableOpReadVariableOp$Adadelta/conv2d_45/kernel/accum_grad*&
_output_shapes
:*
dtype0
?
"Adadelta/conv2d_45/bias/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adadelta/conv2d_45/bias/accum_grad
?
6Adadelta/conv2d_45/bias/accum_grad/Read/ReadVariableOpReadVariableOp"Adadelta/conv2d_45/bias/accum_grad*
_output_shapes
:*
dtype0
?
$Adadelta/conv2d_46/kernel/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Adadelta/conv2d_46/kernel/accum_grad
?
8Adadelta/conv2d_46/kernel/accum_grad/Read/ReadVariableOpReadVariableOp$Adadelta/conv2d_46/kernel/accum_grad*&
_output_shapes
:*
dtype0
?
"Adadelta/conv2d_46/bias/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adadelta/conv2d_46/bias/accum_grad
?
6Adadelta/conv2d_46/bias/accum_grad/Read/ReadVariableOpReadVariableOp"Adadelta/conv2d_46/bias/accum_grad*
_output_shapes
:*
dtype0
?
$Adadelta/conv2d_47/kernel/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Adadelta/conv2d_47/kernel/accum_grad
?
8Adadelta/conv2d_47/kernel/accum_grad/Read/ReadVariableOpReadVariableOp$Adadelta/conv2d_47/kernel/accum_grad*&
_output_shapes
:*
dtype0
?
"Adadelta/conv2d_47/bias/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adadelta/conv2d_47/bias/accum_grad
?
6Adadelta/conv2d_47/bias/accum_grad/Read/ReadVariableOpReadVariableOp"Adadelta/conv2d_47/bias/accum_grad*
_output_shapes
:*
dtype0
?
$Adadelta/conv2d_48/kernel/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Adadelta/conv2d_48/kernel/accum_grad
?
8Adadelta/conv2d_48/kernel/accum_grad/Read/ReadVariableOpReadVariableOp$Adadelta/conv2d_48/kernel/accum_grad*&
_output_shapes
:*
dtype0
?
"Adadelta/conv2d_48/bias/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adadelta/conv2d_48/bias/accum_grad
?
6Adadelta/conv2d_48/bias/accum_grad/Read/ReadVariableOpReadVariableOp"Adadelta/conv2d_48/bias/accum_grad*
_output_shapes
:*
dtype0
?
$Adadelta/conv2d_49/kernel/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Adadelta/conv2d_49/kernel/accum_grad
?
8Adadelta/conv2d_49/kernel/accum_grad/Read/ReadVariableOpReadVariableOp$Adadelta/conv2d_49/kernel/accum_grad*&
_output_shapes
:*
dtype0
?
"Adadelta/conv2d_49/bias/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adadelta/conv2d_49/bias/accum_grad
?
6Adadelta/conv2d_49/bias/accum_grad/Read/ReadVariableOpReadVariableOp"Adadelta/conv2d_49/bias/accum_grad*
_output_shapes
:*
dtype0
?
$Adadelta/conv2d_50/kernel/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape: *5
shared_name&$Adadelta/conv2d_50/kernel/accum_grad
?
8Adadelta/conv2d_50/kernel/accum_grad/Read/ReadVariableOpReadVariableOp$Adadelta/conv2d_50/kernel/accum_grad*&
_output_shapes
: *
dtype0
?
"Adadelta/conv2d_50/bias/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adadelta/conv2d_50/bias/accum_grad
?
6Adadelta/conv2d_50/bias/accum_grad/Read/ReadVariableOpReadVariableOp"Adadelta/conv2d_50/bias/accum_grad*
_output_shapes
: *
dtype0
?
$Adadelta/conv2d_51/kernel/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape: *5
shared_name&$Adadelta/conv2d_51/kernel/accum_grad
?
8Adadelta/conv2d_51/kernel/accum_grad/Read/ReadVariableOpReadVariableOp$Adadelta/conv2d_51/kernel/accum_grad*&
_output_shapes
: *
dtype0
?
"Adadelta/conv2d_51/bias/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adadelta/conv2d_51/bias/accum_grad
?
6Adadelta/conv2d_51/bias/accum_grad/Read/ReadVariableOpReadVariableOp"Adadelta/conv2d_51/bias/accum_grad*
_output_shapes
:*
dtype0
?
$Adadelta/conv2d_52/kernel/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Adadelta/conv2d_52/kernel/accum_grad
?
8Adadelta/conv2d_52/kernel/accum_grad/Read/ReadVariableOpReadVariableOp$Adadelta/conv2d_52/kernel/accum_grad*&
_output_shapes
:*
dtype0
?
"Adadelta/conv2d_52/bias/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adadelta/conv2d_52/bias/accum_grad
?
6Adadelta/conv2d_52/bias/accum_grad/Read/ReadVariableOpReadVariableOp"Adadelta/conv2d_52/bias/accum_grad*
_output_shapes
:*
dtype0
?
$Adadelta/conv2d_53/kernel/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Adadelta/conv2d_53/kernel/accum_grad
?
8Adadelta/conv2d_53/kernel/accum_grad/Read/ReadVariableOpReadVariableOp$Adadelta/conv2d_53/kernel/accum_grad*&
_output_shapes
:*
dtype0
?
"Adadelta/conv2d_53/bias/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adadelta/conv2d_53/bias/accum_grad
?
6Adadelta/conv2d_53/bias/accum_grad/Read/ReadVariableOpReadVariableOp"Adadelta/conv2d_53/bias/accum_grad*
_output_shapes
:*
dtype0
?
"Adadelta/dense_5/kernel/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape
: @*3
shared_name$"Adadelta/dense_5/kernel/accum_grad
?
6Adadelta/dense_5/kernel/accum_grad/Read/ReadVariableOpReadVariableOp"Adadelta/dense_5/kernel/accum_grad*
_output_shapes

: @*
dtype0
?
 Adadelta/dense_5/bias/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" Adadelta/dense_5/bias/accum_grad
?
4Adadelta/dense_5/bias/accum_grad/Read/ReadVariableOpReadVariableOp Adadelta/dense_5/bias/accum_grad*
_output_shapes
:@*
dtype0
?
"Adadelta/dense_6/kernel/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *3
shared_name$"Adadelta/dense_6/kernel/accum_grad
?
6Adadelta/dense_6/kernel/accum_grad/Read/ReadVariableOpReadVariableOp"Adadelta/dense_6/kernel/accum_grad*
_output_shapes

:@ *
dtype0
?
 Adadelta/dense_6/bias/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" Adadelta/dense_6/bias/accum_grad
?
4Adadelta/dense_6/bias/accum_grad/Read/ReadVariableOpReadVariableOp Adadelta/dense_6/bias/accum_grad*
_output_shapes
: *
dtype0
?
"Adadelta/dense_7/kernel/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape
: 0*3
shared_name$"Adadelta/dense_7/kernel/accum_grad
?
6Adadelta/dense_7/kernel/accum_grad/Read/ReadVariableOpReadVariableOp"Adadelta/dense_7/kernel/accum_grad*
_output_shapes

: 0*
dtype0
?
 Adadelta/dense_7/bias/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*1
shared_name" Adadelta/dense_7/bias/accum_grad
?
4Adadelta/dense_7/bias/accum_grad/Read/ReadVariableOpReadVariableOp Adadelta/dense_7/bias/accum_grad*
_output_shapes
:0*
dtype0
?
"Adadelta/dense_8/kernel/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape
:0 *3
shared_name$"Adadelta/dense_8/kernel/accum_grad
?
6Adadelta/dense_8/kernel/accum_grad/Read/ReadVariableOpReadVariableOp"Adadelta/dense_8/kernel/accum_grad*
_output_shapes

:0 *
dtype0
?
 Adadelta/dense_8/bias/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" Adadelta/dense_8/bias/accum_grad
?
4Adadelta/dense_8/bias/accum_grad/Read/ReadVariableOpReadVariableOp Adadelta/dense_8/bias/accum_grad*
_output_shapes
: *
dtype0
?
"Adadelta/dense_9/kernel/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *3
shared_name$"Adadelta/dense_9/kernel/accum_grad
?
6Adadelta/dense_9/kernel/accum_grad/Read/ReadVariableOpReadVariableOp"Adadelta/dense_9/kernel/accum_grad*
_output_shapes

: *
dtype0
?
 Adadelta/dense_9/bias/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adadelta/dense_9/bias/accum_grad
?
4Adadelta/dense_9/bias/accum_grad/Read/ReadVariableOpReadVariableOp Adadelta/dense_9/bias/accum_grad*
_output_shapes
:*
dtype0
?
#Adadelta/dense_10/kernel/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*4
shared_name%#Adadelta/dense_10/kernel/accum_grad
?
7Adadelta/dense_10/kernel/accum_grad/Read/ReadVariableOpReadVariableOp#Adadelta/dense_10/kernel/accum_grad*
_output_shapes

:*
dtype0
?
!Adadelta/dense_10/bias/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adadelta/dense_10/bias/accum_grad
?
5Adadelta/dense_10/bias/accum_grad/Read/ReadVariableOpReadVariableOp!Adadelta/dense_10/bias/accum_grad*
_output_shapes
:*
dtype0
?
#Adadelta/conv2d_39/kernel/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adadelta/conv2d_39/kernel/accum_var
?
7Adadelta/conv2d_39/kernel/accum_var/Read/ReadVariableOpReadVariableOp#Adadelta/conv2d_39/kernel/accum_var*&
_output_shapes
: *
dtype0
?
!Adadelta/conv2d_39/bias/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adadelta/conv2d_39/bias/accum_var
?
5Adadelta/conv2d_39/bias/accum_var/Read/ReadVariableOpReadVariableOp!Adadelta/conv2d_39/bias/accum_var*
_output_shapes
: *
dtype0
?
#Adadelta/conv2d_40/kernel/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adadelta/conv2d_40/kernel/accum_var
?
7Adadelta/conv2d_40/kernel/accum_var/Read/ReadVariableOpReadVariableOp#Adadelta/conv2d_40/kernel/accum_var*&
_output_shapes
: *
dtype0
?
!Adadelta/conv2d_40/bias/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adadelta/conv2d_40/bias/accum_var
?
5Adadelta/conv2d_40/bias/accum_var/Read/ReadVariableOpReadVariableOp!Adadelta/conv2d_40/bias/accum_var*
_output_shapes
:*
dtype0
?
#Adadelta/conv2d_41/kernel/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adadelta/conv2d_41/kernel/accum_var
?
7Adadelta/conv2d_41/kernel/accum_var/Read/ReadVariableOpReadVariableOp#Adadelta/conv2d_41/kernel/accum_var*&
_output_shapes
:*
dtype0
?
!Adadelta/conv2d_41/bias/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adadelta/conv2d_41/bias/accum_var
?
5Adadelta/conv2d_41/bias/accum_var/Read/ReadVariableOpReadVariableOp!Adadelta/conv2d_41/bias/accum_var*
_output_shapes
:*
dtype0
?
#Adadelta/conv2d_42/kernel/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adadelta/conv2d_42/kernel/accum_var
?
7Adadelta/conv2d_42/kernel/accum_var/Read/ReadVariableOpReadVariableOp#Adadelta/conv2d_42/kernel/accum_var*&
_output_shapes
:*
dtype0
?
!Adadelta/conv2d_42/bias/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adadelta/conv2d_42/bias/accum_var
?
5Adadelta/conv2d_42/bias/accum_var/Read/ReadVariableOpReadVariableOp!Adadelta/conv2d_42/bias/accum_var*
_output_shapes
:*
dtype0
?
#Adadelta/conv2d_43/kernel/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adadelta/conv2d_43/kernel/accum_var
?
7Adadelta/conv2d_43/kernel/accum_var/Read/ReadVariableOpReadVariableOp#Adadelta/conv2d_43/kernel/accum_var*&
_output_shapes
:*
dtype0
?
!Adadelta/conv2d_43/bias/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adadelta/conv2d_43/bias/accum_var
?
5Adadelta/conv2d_43/bias/accum_var/Read/ReadVariableOpReadVariableOp!Adadelta/conv2d_43/bias/accum_var*
_output_shapes
:*
dtype0
?
#Adadelta/conv2d_44/kernel/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adadelta/conv2d_44/kernel/accum_var
?
7Adadelta/conv2d_44/kernel/accum_var/Read/ReadVariableOpReadVariableOp#Adadelta/conv2d_44/kernel/accum_var*&
_output_shapes
:*
dtype0
?
!Adadelta/conv2d_44/bias/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adadelta/conv2d_44/bias/accum_var
?
5Adadelta/conv2d_44/bias/accum_var/Read/ReadVariableOpReadVariableOp!Adadelta/conv2d_44/bias/accum_var*
_output_shapes
:*
dtype0
?
#Adadelta/conv2d_45/kernel/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adadelta/conv2d_45/kernel/accum_var
?
7Adadelta/conv2d_45/kernel/accum_var/Read/ReadVariableOpReadVariableOp#Adadelta/conv2d_45/kernel/accum_var*&
_output_shapes
:*
dtype0
?
!Adadelta/conv2d_45/bias/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adadelta/conv2d_45/bias/accum_var
?
5Adadelta/conv2d_45/bias/accum_var/Read/ReadVariableOpReadVariableOp!Adadelta/conv2d_45/bias/accum_var*
_output_shapes
:*
dtype0
?
#Adadelta/conv2d_46/kernel/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adadelta/conv2d_46/kernel/accum_var
?
7Adadelta/conv2d_46/kernel/accum_var/Read/ReadVariableOpReadVariableOp#Adadelta/conv2d_46/kernel/accum_var*&
_output_shapes
:*
dtype0
?
!Adadelta/conv2d_46/bias/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adadelta/conv2d_46/bias/accum_var
?
5Adadelta/conv2d_46/bias/accum_var/Read/ReadVariableOpReadVariableOp!Adadelta/conv2d_46/bias/accum_var*
_output_shapes
:*
dtype0
?
#Adadelta/conv2d_47/kernel/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adadelta/conv2d_47/kernel/accum_var
?
7Adadelta/conv2d_47/kernel/accum_var/Read/ReadVariableOpReadVariableOp#Adadelta/conv2d_47/kernel/accum_var*&
_output_shapes
:*
dtype0
?
!Adadelta/conv2d_47/bias/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adadelta/conv2d_47/bias/accum_var
?
5Adadelta/conv2d_47/bias/accum_var/Read/ReadVariableOpReadVariableOp!Adadelta/conv2d_47/bias/accum_var*
_output_shapes
:*
dtype0
?
#Adadelta/conv2d_48/kernel/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adadelta/conv2d_48/kernel/accum_var
?
7Adadelta/conv2d_48/kernel/accum_var/Read/ReadVariableOpReadVariableOp#Adadelta/conv2d_48/kernel/accum_var*&
_output_shapes
:*
dtype0
?
!Adadelta/conv2d_48/bias/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adadelta/conv2d_48/bias/accum_var
?
5Adadelta/conv2d_48/bias/accum_var/Read/ReadVariableOpReadVariableOp!Adadelta/conv2d_48/bias/accum_var*
_output_shapes
:*
dtype0
?
#Adadelta/conv2d_49/kernel/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adadelta/conv2d_49/kernel/accum_var
?
7Adadelta/conv2d_49/kernel/accum_var/Read/ReadVariableOpReadVariableOp#Adadelta/conv2d_49/kernel/accum_var*&
_output_shapes
:*
dtype0
?
!Adadelta/conv2d_49/bias/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adadelta/conv2d_49/bias/accum_var
?
5Adadelta/conv2d_49/bias/accum_var/Read/ReadVariableOpReadVariableOp!Adadelta/conv2d_49/bias/accum_var*
_output_shapes
:*
dtype0
?
#Adadelta/conv2d_50/kernel/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adadelta/conv2d_50/kernel/accum_var
?
7Adadelta/conv2d_50/kernel/accum_var/Read/ReadVariableOpReadVariableOp#Adadelta/conv2d_50/kernel/accum_var*&
_output_shapes
: *
dtype0
?
!Adadelta/conv2d_50/bias/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adadelta/conv2d_50/bias/accum_var
?
5Adadelta/conv2d_50/bias/accum_var/Read/ReadVariableOpReadVariableOp!Adadelta/conv2d_50/bias/accum_var*
_output_shapes
: *
dtype0
?
#Adadelta/conv2d_51/kernel/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adadelta/conv2d_51/kernel/accum_var
?
7Adadelta/conv2d_51/kernel/accum_var/Read/ReadVariableOpReadVariableOp#Adadelta/conv2d_51/kernel/accum_var*&
_output_shapes
: *
dtype0
?
!Adadelta/conv2d_51/bias/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adadelta/conv2d_51/bias/accum_var
?
5Adadelta/conv2d_51/bias/accum_var/Read/ReadVariableOpReadVariableOp!Adadelta/conv2d_51/bias/accum_var*
_output_shapes
:*
dtype0
?
#Adadelta/conv2d_52/kernel/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adadelta/conv2d_52/kernel/accum_var
?
7Adadelta/conv2d_52/kernel/accum_var/Read/ReadVariableOpReadVariableOp#Adadelta/conv2d_52/kernel/accum_var*&
_output_shapes
:*
dtype0
?
!Adadelta/conv2d_52/bias/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adadelta/conv2d_52/bias/accum_var
?
5Adadelta/conv2d_52/bias/accum_var/Read/ReadVariableOpReadVariableOp!Adadelta/conv2d_52/bias/accum_var*
_output_shapes
:*
dtype0
?
#Adadelta/conv2d_53/kernel/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adadelta/conv2d_53/kernel/accum_var
?
7Adadelta/conv2d_53/kernel/accum_var/Read/ReadVariableOpReadVariableOp#Adadelta/conv2d_53/kernel/accum_var*&
_output_shapes
:*
dtype0
?
!Adadelta/conv2d_53/bias/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adadelta/conv2d_53/bias/accum_var
?
5Adadelta/conv2d_53/bias/accum_var/Read/ReadVariableOpReadVariableOp!Adadelta/conv2d_53/bias/accum_var*
_output_shapes
:*
dtype0
?
!Adadelta/dense_5/kernel/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape
: @*2
shared_name#!Adadelta/dense_5/kernel/accum_var
?
5Adadelta/dense_5/kernel/accum_var/Read/ReadVariableOpReadVariableOp!Adadelta/dense_5/kernel/accum_var*
_output_shapes

: @*
dtype0
?
Adadelta/dense_5/bias/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adadelta/dense_5/bias/accum_var
?
3Adadelta/dense_5/bias/accum_var/Read/ReadVariableOpReadVariableOpAdadelta/dense_5/bias/accum_var*
_output_shapes
:@*
dtype0
?
!Adadelta/dense_6/kernel/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *2
shared_name#!Adadelta/dense_6/kernel/accum_var
?
5Adadelta/dense_6/kernel/accum_var/Read/ReadVariableOpReadVariableOp!Adadelta/dense_6/kernel/accum_var*
_output_shapes

:@ *
dtype0
?
Adadelta/dense_6/bias/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!Adadelta/dense_6/bias/accum_var
?
3Adadelta/dense_6/bias/accum_var/Read/ReadVariableOpReadVariableOpAdadelta/dense_6/bias/accum_var*
_output_shapes
: *
dtype0
?
!Adadelta/dense_7/kernel/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape
: 0*2
shared_name#!Adadelta/dense_7/kernel/accum_var
?
5Adadelta/dense_7/kernel/accum_var/Read/ReadVariableOpReadVariableOp!Adadelta/dense_7/kernel/accum_var*
_output_shapes

: 0*
dtype0
?
Adadelta/dense_7/bias/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*0
shared_name!Adadelta/dense_7/bias/accum_var
?
3Adadelta/dense_7/bias/accum_var/Read/ReadVariableOpReadVariableOpAdadelta/dense_7/bias/accum_var*
_output_shapes
:0*
dtype0
?
!Adadelta/dense_8/kernel/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape
:0 *2
shared_name#!Adadelta/dense_8/kernel/accum_var
?
5Adadelta/dense_8/kernel/accum_var/Read/ReadVariableOpReadVariableOp!Adadelta/dense_8/kernel/accum_var*
_output_shapes

:0 *
dtype0
?
Adadelta/dense_8/bias/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!Adadelta/dense_8/bias/accum_var
?
3Adadelta/dense_8/bias/accum_var/Read/ReadVariableOpReadVariableOpAdadelta/dense_8/bias/accum_var*
_output_shapes
: *
dtype0
?
!Adadelta/dense_9/kernel/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *2
shared_name#!Adadelta/dense_9/kernel/accum_var
?
5Adadelta/dense_9/kernel/accum_var/Read/ReadVariableOpReadVariableOp!Adadelta/dense_9/kernel/accum_var*
_output_shapes

: *
dtype0
?
Adadelta/dense_9/bias/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adadelta/dense_9/bias/accum_var
?
3Adadelta/dense_9/bias/accum_var/Read/ReadVariableOpReadVariableOpAdadelta/dense_9/bias/accum_var*
_output_shapes
:*
dtype0
?
"Adadelta/dense_10/kernel/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*3
shared_name$"Adadelta/dense_10/kernel/accum_var
?
6Adadelta/dense_10/kernel/accum_var/Read/ReadVariableOpReadVariableOp"Adadelta/dense_10/kernel/accum_var*
_output_shapes

:*
dtype0
?
 Adadelta/dense_10/bias/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adadelta/dense_10/bias/accum_var
?
4Adadelta/dense_10/bias/accum_var/Read/ReadVariableOpReadVariableOp Adadelta/dense_10/bias/accum_var*
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
valueB*  ??
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
valueB*  ??
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
valueB*  ??
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
valueB*  ??
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
valueB*  ??
m
Const_10Const*&
_output_shapes
:*
dtype0*%
valueB*    
m
Const_11Const*&
_output_shapes
:*
dtype0*%
valueB*  ??

NoOpNoOp
??
Const_12Const"/device:CPU:0*
_output_shapes
: *
dtype0*??
value??B?? B??
?
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
layer_with_weights-16
layer-22
layer_with_weights-17
layer-23
layer-24
layer_with_weights-18
layer-25
layer_with_weights-19
layer-26
layer_with_weights-20
layer-27
layer-28
layer_with_weights-21
layer-29
layer_with_weights-22
layer-30
 layer_with_weights-23
 layer-31
!layer_with_weights-24
!layer-32
"layer_with_weights-25
"layer-33
#layer_with_weights-26
#layer-34
$	optimizer
%
signatures
#&_self_saveable_object_factories
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses
-_default_save_signature*
?
.
_keep_axis
/_reduce_axis
0_reduce_axis_mask
1_broadcast_shape
2mean
2
adapt_mean
3variance
3adapt_variance
	4count
#5_self_saveable_object_factories
6	keras_api*
?

7kernel
8bias
#9_self_saveable_object_factories
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses*
?

@kernel
Abias
#B_self_saveable_object_factories
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses*
?
I
_keep_axis
J_reduce_axis
K_reduce_axis_mask
L_broadcast_shape
Mmean
M
adapt_mean
Nvariance
Nadapt_variance
	Ocount
#P_self_saveable_object_factories
Q	keras_api*
?

Rkernel
Sbias
#T_self_saveable_object_factories
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses*
?
#[_self_saveable_object_factories
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses* 
?
#b_self_saveable_object_factories
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g_random_generator
h__call__
*i&call_and_return_all_conditional_losses* 
?

jkernel
kbias
#l_self_saveable_object_factories
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
q__call__
*r&call_and_return_all_conditional_losses*
?

skernel
tbias
#u_self_saveable_object_factories
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
z__call__
*{&call_and_return_all_conditional_losses*
?
|
_keep_axis
}_reduce_axis
~_reduce_axis_mask
_broadcast_shape
	?mean
?
adapt_mean
?variance
?adapt_variance

?count
$?_self_saveable_object_factories
?	keras_api*
?
?kernel
	?bias
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses* 
?
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?_random_generator
?__call__
+?&call_and_return_all_conditional_losses* 
?
?kernel
	?bias
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
?kernel
	?bias
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
?
_keep_axis
?_reduce_axis
?_reduce_axis_mask
?_broadcast_shape
	?mean
?
adapt_mean
?variance
?adapt_variance

?count
$?_self_saveable_object_factories
?	keras_api*
?
?kernel
	?bias
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses* 
?
?kernel
	?bias
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
?kernel
	?bias
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses* 
?
?
_keep_axis
?_reduce_axis
?_reduce_axis_mask
?_broadcast_shape
	?mean
?
adapt_mean
?variance
?adapt_variance

?count
$?_self_saveable_object_factories
?	keras_api*
?
?kernel
	?bias
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
?kernel
	?bias
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses* 
?
?kernel
	?bias
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
?kernel
	?bias
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
?
_keep_axis
?_reduce_axis
?_reduce_axis_mask
?_broadcast_shape
	?mean
?
adapt_mean
?variance
?adapt_variance

?count
$?_self_saveable_object_factories
?	keras_api*
?
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses* 
?
?kernel
	?bias
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
?kernel
	?bias
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
?kernel
	?bias
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
?kernel
	?bias
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
?kernel
	?bias
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
?kernel
	?bias
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
	?iter

?decay
?learning_rate
?rho7
accum_grad?8
accum_grad?@
accum_grad?A
accum_grad?R
accum_grad?S
accum_grad?j
accum_grad?k
accum_grad?s
accum_grad?t
accum_grad??
accum_grad??
accum_grad??
accum_grad??
accum_grad??
accum_grad??
accum_grad??
accum_grad??
accum_grad??
accum_grad??
accum_grad??
accum_grad??
accum_grad??
accum_grad??
accum_grad??
accum_grad??
accum_grad??
accum_grad??
accum_grad??
accum_grad??
accum_grad??
accum_grad??
accum_grad??
accum_grad??
accum_grad??
accum_grad??
accum_grad??
accum_grad??
accum_grad??
accum_grad??
accum_grad??
accum_grad??
accum_grad?7	accum_var?8	accum_var?@	accum_var?A	accum_var?R	accum_var?S	accum_var?j	accum_var?k	accum_var?s	accum_var?t	accum_var??	accum_var??	accum_var??	accum_var??	accum_var??	accum_var??	accum_var??	accum_var??	accum_var??	accum_var??	accum_var??	accum_var??	accum_var??	accum_var??	accum_var??	accum_var??	accum_var??	accum_var??	accum_var??	accum_var??	accum_var??	accum_var??	accum_var??	accum_var??	accum_var??	accum_var??	accum_var??	accum_var??	accum_var??	accum_var??	accum_var??	accum_var??	accum_var?*

?serving_default* 
* 
?
20
31
42
73
84
@5
A6
M7
N8
O9
R10
S11
j12
k13
s14
t15
?16
?17
?18
?19
?20
?21
?22
?23
?24
?25
?26
?27
?28
?29
?30
?31
?32
?33
?34
?35
?36
?37
?38
?39
?40
?41
?42
?43
?44
?45
?46
?47
?48
?49
?50
?51
?52
?53
?54
?55
?56
?57
?58
?59*
?
70
81
@2
A3
R4
S5
j6
k7
s8
t9
?10
?11
?12
?13
?14
?15
?16
?17
?18
?19
?20
?21
?22
?23
?24
?25
?26
?27
?28
?29
?30
?31
?32
?33
?34
?35
?36
?37
?38
?39
?40
?41*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
-_default_save_signature
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
c]
VARIABLE_VALUEnormalization_16/mean4layer_with_weights-0/mean/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUEnormalization_16/variance8layer_with_weights-0/variance/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEnormalization_16/count5layer_with_weights-0/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
`Z
VARIABLE_VALUEconv2d_39/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_39/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

70
81*

70
81*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses*
* 
* 
`Z
VARIABLE_VALUEconv2d_40/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_40/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

@0
A1*

@0
A1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
c]
VARIABLE_VALUEnormalization_17/mean4layer_with_weights-3/mean/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUEnormalization_17/variance8layer_with_weights-3/variance/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEnormalization_17/count5layer_with_weights-3/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
`Z
VARIABLE_VALUEconv2d_41/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_41/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

R0
S1*

R0
S1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
c	variables
dtrainable_variables
eregularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses* 
* 
* 
* 
`Z
VARIABLE_VALUEconv2d_42/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_42/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

j0
k1*

j0
k1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
m	variables
ntrainable_variables
oregularization_losses
q__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses*
* 
* 
`Z
VARIABLE_VALUEconv2d_43/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_43/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

s0
t1*

s0
t1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
v	variables
wtrainable_variables
xregularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
c]
VARIABLE_VALUEnormalization_18/mean4layer_with_weights-7/mean/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUEnormalization_18/variance8layer_with_weights-7/variance/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEnormalization_18/count5layer_with_weights-7/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
`Z
VARIABLE_VALUEconv2d_44/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_44/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
* 
`Z
VARIABLE_VALUEconv2d_45/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_45/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
a[
VARIABLE_VALUEconv2d_46/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_46/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
d^
VARIABLE_VALUEnormalization_19/mean5layer_with_weights-11/mean/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUEnormalization_19/variance9layer_with_weights-11/variance/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEnormalization_19/count6layer_with_weights-11/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
a[
VARIABLE_VALUEconv2d_47/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_47/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
a[
VARIABLE_VALUEconv2d_48/kernel7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_48/bias5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
a[
VARIABLE_VALUEconv2d_49/kernel7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_49/bias5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
d^
VARIABLE_VALUEnormalization_20/mean5layer_with_weights-15/mean/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUEnormalization_20/variance9layer_with_weights-15/variance/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEnormalization_20/count6layer_with_weights-15/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
a[
VARIABLE_VALUEconv2d_50/kernel7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_50/bias5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
a[
VARIABLE_VALUEconv2d_51/kernel7layer_with_weights-17/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_51/bias5layer_with_weights-17/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
a[
VARIABLE_VALUEconv2d_52/kernel7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_52/bias5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
a[
VARIABLE_VALUEconv2d_53/kernel7layer_with_weights-19/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_53/bias5layer_with_weights-19/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
d^
VARIABLE_VALUEnormalization_21/mean5layer_with_weights-20/mean/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUEnormalization_21/variance9layer_with_weights-20/variance/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEnormalization_21/count6layer_with_weights-20/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
_Y
VARIABLE_VALUEdense_5/kernel7layer_with_weights-21/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_5/bias5layer_with_weights-21/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_6/kernel7layer_with_weights-22/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_6/bias5layer_with_weights-22/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_7/kernel7layer_with_weights-23/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_7/bias5layer_with_weights-23/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_8/kernel7layer_with_weights-24/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_8/bias5layer_with_weights-24/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_9/kernel7layer_with_weights-25/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_9/bias5layer_with_weights-25/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
`Z
VARIABLE_VALUEdense_10/kernel7layer_with_weights-26/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_10/bias5layer_with_weights-26/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
PJ
VARIABLE_VALUEAdadelta/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEAdadelta/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdadelta/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEAdadelta/rho(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUE*
* 
?
20
31
42
M3
N4
O5
?6
?7
?8
?9
?10
?11
?12
?13
?14
?15
?16
?17*
?
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
27
28
29
30
 31
!32
"33
#34*
$
?0
?1
?2
?3*
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

?total

?count
?	variables
?	keras_api*
`
?
thresholds
?true_positives
?false_positives
?	variables
?	keras_api*
`
?
thresholds
?true_positives
?false_negatives
?	variables
?	keras_api*
M

?total

?count
?
_fn_kwargs
?	variables
?	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?	variables*
* 
e_
VARIABLE_VALUEtrue_positives=keras_api/metrics/1/true_positives/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEfalse_positives>keras_api/metrics/1/false_positives/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?	variables*
* 
ga
VARIABLE_VALUEtrue_positives_1=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEfalse_negatives>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

?0
?1*

?	variables*
??
VARIABLE_VALUE$Adadelta/conv2d_39/kernel/accum_grad[layer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adadelta/conv2d_39/bias/accum_gradYlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE$Adadelta/conv2d_40/kernel/accum_grad[layer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adadelta/conv2d_40/bias/accum_gradYlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE$Adadelta/conv2d_41/kernel/accum_grad[layer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adadelta/conv2d_41/bias/accum_gradYlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE$Adadelta/conv2d_42/kernel/accum_grad[layer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adadelta/conv2d_42/bias/accum_gradYlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE$Adadelta/conv2d_43/kernel/accum_grad[layer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adadelta/conv2d_43/bias/accum_gradYlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE$Adadelta/conv2d_44/kernel/accum_grad[layer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adadelta/conv2d_44/bias/accum_gradYlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE$Adadelta/conv2d_45/kernel/accum_grad[layer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adadelta/conv2d_45/bias/accum_gradYlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE$Adadelta/conv2d_46/kernel/accum_grad\layer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adadelta/conv2d_46/bias/accum_gradZlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE$Adadelta/conv2d_47/kernel/accum_grad\layer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adadelta/conv2d_47/bias/accum_gradZlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE$Adadelta/conv2d_48/kernel/accum_grad\layer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adadelta/conv2d_48/bias/accum_gradZlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE$Adadelta/conv2d_49/kernel/accum_grad\layer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adadelta/conv2d_49/bias/accum_gradZlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE$Adadelta/conv2d_50/kernel/accum_grad\layer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adadelta/conv2d_50/bias/accum_gradZlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE$Adadelta/conv2d_51/kernel/accum_grad\layer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adadelta/conv2d_51/bias/accum_gradZlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE$Adadelta/conv2d_52/kernel/accum_grad\layer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adadelta/conv2d_52/bias/accum_gradZlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE$Adadelta/conv2d_53/kernel/accum_grad\layer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adadelta/conv2d_53/bias/accum_gradZlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adadelta/dense_5/kernel/accum_grad\layer_with_weights-21/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE Adadelta/dense_5/bias/accum_gradZlayer_with_weights-21/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adadelta/dense_6/kernel/accum_grad\layer_with_weights-22/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE Adadelta/dense_6/bias/accum_gradZlayer_with_weights-22/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adadelta/dense_7/kernel/accum_grad\layer_with_weights-23/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE Adadelta/dense_7/bias/accum_gradZlayer_with_weights-23/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adadelta/dense_8/kernel/accum_grad\layer_with_weights-24/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE Adadelta/dense_8/bias/accum_gradZlayer_with_weights-24/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adadelta/dense_9/kernel/accum_grad\layer_with_weights-25/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE Adadelta/dense_9/bias/accum_gradZlayer_with_weights-25/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE#Adadelta/dense_10/kernel/accum_grad\layer_with_weights-26/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE!Adadelta/dense_10/bias/accum_gradZlayer_with_weights-26/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE#Adadelta/conv2d_39/kernel/accum_varZlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE!Adadelta/conv2d_39/bias/accum_varXlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE#Adadelta/conv2d_40/kernel/accum_varZlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE!Adadelta/conv2d_40/bias/accum_varXlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE#Adadelta/conv2d_41/kernel/accum_varZlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE!Adadelta/conv2d_41/bias/accum_varXlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE#Adadelta/conv2d_42/kernel/accum_varZlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE!Adadelta/conv2d_42/bias/accum_varXlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE#Adadelta/conv2d_43/kernel/accum_varZlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE!Adadelta/conv2d_43/bias/accum_varXlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE#Adadelta/conv2d_44/kernel/accum_varZlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE!Adadelta/conv2d_44/bias/accum_varXlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE#Adadelta/conv2d_45/kernel/accum_varZlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE!Adadelta/conv2d_45/bias/accum_varXlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE#Adadelta/conv2d_46/kernel/accum_var[layer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE!Adadelta/conv2d_46/bias/accum_varYlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE#Adadelta/conv2d_47/kernel/accum_var[layer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE!Adadelta/conv2d_47/bias/accum_varYlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE#Adadelta/conv2d_48/kernel/accum_var[layer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE!Adadelta/conv2d_48/bias/accum_varYlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE#Adadelta/conv2d_49/kernel/accum_var[layer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE!Adadelta/conv2d_49/bias/accum_varYlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE#Adadelta/conv2d_50/kernel/accum_var[layer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE!Adadelta/conv2d_50/bias/accum_varYlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE#Adadelta/conv2d_51/kernel/accum_var[layer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE!Adadelta/conv2d_51/bias/accum_varYlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE#Adadelta/conv2d_52/kernel/accum_var[layer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE!Adadelta/conv2d_52/bias/accum_varYlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE#Adadelta/conv2d_53/kernel/accum_var[layer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE!Adadelta/conv2d_53/bias/accum_varYlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE!Adadelta/dense_5/kernel/accum_var[layer_with_weights-21/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdadelta/dense_5/bias/accum_varYlayer_with_weights-21/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE!Adadelta/dense_6/kernel/accum_var[layer_with_weights-22/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdadelta/dense_6/bias/accum_varYlayer_with_weights-22/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE!Adadelta/dense_7/kernel/accum_var[layer_with_weights-23/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdadelta/dense_7/bias/accum_varYlayer_with_weights-23/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE!Adadelta/dense_8/kernel/accum_var[layer_with_weights-24/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdadelta/dense_8/bias/accum_varYlayer_with_weights-24/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE!Adadelta/dense_9/kernel/accum_var[layer_with_weights-25/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdadelta/dense_9/bias/accum_varYlayer_with_weights-25/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adadelta/dense_10/kernel/accum_var[layer_with_weights-26/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE Adadelta/dense_10/bias/accum_varYlayer_with_weights-26/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE*
?
serving_default_input_3Placeholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?	
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_3ConstConst_1conv2d_39/kernelconv2d_39/biasconv2d_40/kernelconv2d_40/biasConst_2Const_3conv2d_41/kernelconv2d_41/biasconv2d_42/kernelconv2d_42/biasconv2d_43/kernelconv2d_43/biasConst_4Const_5conv2d_44/kernelconv2d_44/biasconv2d_45/kernelconv2d_45/biasconv2d_46/kernelconv2d_46/biasConst_6Const_7conv2d_47/kernelconv2d_47/biasconv2d_48/kernelconv2d_48/biasconv2d_49/kernelconv2d_49/biasConst_8Const_9conv2d_50/kernelconv2d_50/biasconv2d_51/kernelconv2d_51/biasconv2d_52/kernelconv2d_52/biasconv2d_53/kernelconv2d_53/biasConst_10Const_11dense_5/kerneldense_5/biasdense_6/kerneldense_6/biasdense_7/kerneldense_7/biasdense_8/kerneldense_8/biasdense_9/kerneldense_9/biasdense_10/kerneldense_10/bias*B
Tin;
927*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*L
_read_only_resource_inputs.
,*	
!"#$%&'(+,-./0123456*0
config_proto 

CPU

GPU2*0J 8? *.
f)R'
%__inference_signature_wrapper_1815504
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?=
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename)normalization_16/mean/Read/ReadVariableOp-normalization_16/variance/Read/ReadVariableOp*normalization_16/count/Read/ReadVariableOp$conv2d_39/kernel/Read/ReadVariableOp"conv2d_39/bias/Read/ReadVariableOp$conv2d_40/kernel/Read/ReadVariableOp"conv2d_40/bias/Read/ReadVariableOp)normalization_17/mean/Read/ReadVariableOp-normalization_17/variance/Read/ReadVariableOp*normalization_17/count/Read/ReadVariableOp$conv2d_41/kernel/Read/ReadVariableOp"conv2d_41/bias/Read/ReadVariableOp$conv2d_42/kernel/Read/ReadVariableOp"conv2d_42/bias/Read/ReadVariableOp$conv2d_43/kernel/Read/ReadVariableOp"conv2d_43/bias/Read/ReadVariableOp)normalization_18/mean/Read/ReadVariableOp-normalization_18/variance/Read/ReadVariableOp*normalization_18/count/Read/ReadVariableOp$conv2d_44/kernel/Read/ReadVariableOp"conv2d_44/bias/Read/ReadVariableOp$conv2d_45/kernel/Read/ReadVariableOp"conv2d_45/bias/Read/ReadVariableOp$conv2d_46/kernel/Read/ReadVariableOp"conv2d_46/bias/Read/ReadVariableOp)normalization_19/mean/Read/ReadVariableOp-normalization_19/variance/Read/ReadVariableOp*normalization_19/count/Read/ReadVariableOp$conv2d_47/kernel/Read/ReadVariableOp"conv2d_47/bias/Read/ReadVariableOp$conv2d_48/kernel/Read/ReadVariableOp"conv2d_48/bias/Read/ReadVariableOp$conv2d_49/kernel/Read/ReadVariableOp"conv2d_49/bias/Read/ReadVariableOp)normalization_20/mean/Read/ReadVariableOp-normalization_20/variance/Read/ReadVariableOp*normalization_20/count/Read/ReadVariableOp$conv2d_50/kernel/Read/ReadVariableOp"conv2d_50/bias/Read/ReadVariableOp$conv2d_51/kernel/Read/ReadVariableOp"conv2d_51/bias/Read/ReadVariableOp$conv2d_52/kernel/Read/ReadVariableOp"conv2d_52/bias/Read/ReadVariableOp$conv2d_53/kernel/Read/ReadVariableOp"conv2d_53/bias/Read/ReadVariableOp)normalization_21/mean/Read/ReadVariableOp-normalization_21/variance/Read/ReadVariableOp*normalization_21/count/Read/ReadVariableOp"dense_5/kernel/Read/ReadVariableOp dense_5/bias/Read/ReadVariableOp"dense_6/kernel/Read/ReadVariableOp dense_6/bias/Read/ReadVariableOp"dense_7/kernel/Read/ReadVariableOp dense_7/bias/Read/ReadVariableOp"dense_8/kernel/Read/ReadVariableOp dense_8/bias/Read/ReadVariableOp"dense_9/kernel/Read/ReadVariableOp dense_9/bias/Read/ReadVariableOp#dense_10/kernel/Read/ReadVariableOp!dense_10/bias/Read/ReadVariableOp!Adadelta/iter/Read/ReadVariableOp"Adadelta/decay/Read/ReadVariableOp*Adadelta/learning_rate/Read/ReadVariableOp Adadelta/rho/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp"true_positives/Read/ReadVariableOp#false_positives/Read/ReadVariableOp$true_positives_1/Read/ReadVariableOp#false_negatives/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp8Adadelta/conv2d_39/kernel/accum_grad/Read/ReadVariableOp6Adadelta/conv2d_39/bias/accum_grad/Read/ReadVariableOp8Adadelta/conv2d_40/kernel/accum_grad/Read/ReadVariableOp6Adadelta/conv2d_40/bias/accum_grad/Read/ReadVariableOp8Adadelta/conv2d_41/kernel/accum_grad/Read/ReadVariableOp6Adadelta/conv2d_41/bias/accum_grad/Read/ReadVariableOp8Adadelta/conv2d_42/kernel/accum_grad/Read/ReadVariableOp6Adadelta/conv2d_42/bias/accum_grad/Read/ReadVariableOp8Adadelta/conv2d_43/kernel/accum_grad/Read/ReadVariableOp6Adadelta/conv2d_43/bias/accum_grad/Read/ReadVariableOp8Adadelta/conv2d_44/kernel/accum_grad/Read/ReadVariableOp6Adadelta/conv2d_44/bias/accum_grad/Read/ReadVariableOp8Adadelta/conv2d_45/kernel/accum_grad/Read/ReadVariableOp6Adadelta/conv2d_45/bias/accum_grad/Read/ReadVariableOp8Adadelta/conv2d_46/kernel/accum_grad/Read/ReadVariableOp6Adadelta/conv2d_46/bias/accum_grad/Read/ReadVariableOp8Adadelta/conv2d_47/kernel/accum_grad/Read/ReadVariableOp6Adadelta/conv2d_47/bias/accum_grad/Read/ReadVariableOp8Adadelta/conv2d_48/kernel/accum_grad/Read/ReadVariableOp6Adadelta/conv2d_48/bias/accum_grad/Read/ReadVariableOp8Adadelta/conv2d_49/kernel/accum_grad/Read/ReadVariableOp6Adadelta/conv2d_49/bias/accum_grad/Read/ReadVariableOp8Adadelta/conv2d_50/kernel/accum_grad/Read/ReadVariableOp6Adadelta/conv2d_50/bias/accum_grad/Read/ReadVariableOp8Adadelta/conv2d_51/kernel/accum_grad/Read/ReadVariableOp6Adadelta/conv2d_51/bias/accum_grad/Read/ReadVariableOp8Adadelta/conv2d_52/kernel/accum_grad/Read/ReadVariableOp6Adadelta/conv2d_52/bias/accum_grad/Read/ReadVariableOp8Adadelta/conv2d_53/kernel/accum_grad/Read/ReadVariableOp6Adadelta/conv2d_53/bias/accum_grad/Read/ReadVariableOp6Adadelta/dense_5/kernel/accum_grad/Read/ReadVariableOp4Adadelta/dense_5/bias/accum_grad/Read/ReadVariableOp6Adadelta/dense_6/kernel/accum_grad/Read/ReadVariableOp4Adadelta/dense_6/bias/accum_grad/Read/ReadVariableOp6Adadelta/dense_7/kernel/accum_grad/Read/ReadVariableOp4Adadelta/dense_7/bias/accum_grad/Read/ReadVariableOp6Adadelta/dense_8/kernel/accum_grad/Read/ReadVariableOp4Adadelta/dense_8/bias/accum_grad/Read/ReadVariableOp6Adadelta/dense_9/kernel/accum_grad/Read/ReadVariableOp4Adadelta/dense_9/bias/accum_grad/Read/ReadVariableOp7Adadelta/dense_10/kernel/accum_grad/Read/ReadVariableOp5Adadelta/dense_10/bias/accum_grad/Read/ReadVariableOp7Adadelta/conv2d_39/kernel/accum_var/Read/ReadVariableOp5Adadelta/conv2d_39/bias/accum_var/Read/ReadVariableOp7Adadelta/conv2d_40/kernel/accum_var/Read/ReadVariableOp5Adadelta/conv2d_40/bias/accum_var/Read/ReadVariableOp7Adadelta/conv2d_41/kernel/accum_var/Read/ReadVariableOp5Adadelta/conv2d_41/bias/accum_var/Read/ReadVariableOp7Adadelta/conv2d_42/kernel/accum_var/Read/ReadVariableOp5Adadelta/conv2d_42/bias/accum_var/Read/ReadVariableOp7Adadelta/conv2d_43/kernel/accum_var/Read/ReadVariableOp5Adadelta/conv2d_43/bias/accum_var/Read/ReadVariableOp7Adadelta/conv2d_44/kernel/accum_var/Read/ReadVariableOp5Adadelta/conv2d_44/bias/accum_var/Read/ReadVariableOp7Adadelta/conv2d_45/kernel/accum_var/Read/ReadVariableOp5Adadelta/conv2d_45/bias/accum_var/Read/ReadVariableOp7Adadelta/conv2d_46/kernel/accum_var/Read/ReadVariableOp5Adadelta/conv2d_46/bias/accum_var/Read/ReadVariableOp7Adadelta/conv2d_47/kernel/accum_var/Read/ReadVariableOp5Adadelta/conv2d_47/bias/accum_var/Read/ReadVariableOp7Adadelta/conv2d_48/kernel/accum_var/Read/ReadVariableOp5Adadelta/conv2d_48/bias/accum_var/Read/ReadVariableOp7Adadelta/conv2d_49/kernel/accum_var/Read/ReadVariableOp5Adadelta/conv2d_49/bias/accum_var/Read/ReadVariableOp7Adadelta/conv2d_50/kernel/accum_var/Read/ReadVariableOp5Adadelta/conv2d_50/bias/accum_var/Read/ReadVariableOp7Adadelta/conv2d_51/kernel/accum_var/Read/ReadVariableOp5Adadelta/conv2d_51/bias/accum_var/Read/ReadVariableOp7Adadelta/conv2d_52/kernel/accum_var/Read/ReadVariableOp5Adadelta/conv2d_52/bias/accum_var/Read/ReadVariableOp7Adadelta/conv2d_53/kernel/accum_var/Read/ReadVariableOp5Adadelta/conv2d_53/bias/accum_var/Read/ReadVariableOp5Adadelta/dense_5/kernel/accum_var/Read/ReadVariableOp3Adadelta/dense_5/bias/accum_var/Read/ReadVariableOp5Adadelta/dense_6/kernel/accum_var/Read/ReadVariableOp3Adadelta/dense_6/bias/accum_var/Read/ReadVariableOp5Adadelta/dense_7/kernel/accum_var/Read/ReadVariableOp3Adadelta/dense_7/bias/accum_var/Read/ReadVariableOp5Adadelta/dense_8/kernel/accum_var/Read/ReadVariableOp3Adadelta/dense_8/bias/accum_var/Read/ReadVariableOp5Adadelta/dense_9/kernel/accum_var/Read/ReadVariableOp3Adadelta/dense_9/bias/accum_var/Read/ReadVariableOp6Adadelta/dense_10/kernel/accum_var/Read/ReadVariableOp4Adadelta/dense_10/bias/accum_var/Read/ReadVariableOpConst_12*?
Tin?
?2?							*
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
GPU2*0J 8? *)
f$R"
 __inference__traced_save_1816522
?%
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamenormalization_16/meannormalization_16/variancenormalization_16/countconv2d_39/kernelconv2d_39/biasconv2d_40/kernelconv2d_40/biasnormalization_17/meannormalization_17/variancenormalization_17/countconv2d_41/kernelconv2d_41/biasconv2d_42/kernelconv2d_42/biasconv2d_43/kernelconv2d_43/biasnormalization_18/meannormalization_18/variancenormalization_18/countconv2d_44/kernelconv2d_44/biasconv2d_45/kernelconv2d_45/biasconv2d_46/kernelconv2d_46/biasnormalization_19/meannormalization_19/variancenormalization_19/countconv2d_47/kernelconv2d_47/biasconv2d_48/kernelconv2d_48/biasconv2d_49/kernelconv2d_49/biasnormalization_20/meannormalization_20/variancenormalization_20/countconv2d_50/kernelconv2d_50/biasconv2d_51/kernelconv2d_51/biasconv2d_52/kernelconv2d_52/biasconv2d_53/kernelconv2d_53/biasnormalization_21/meannormalization_21/variancenormalization_21/countdense_5/kerneldense_5/biasdense_6/kerneldense_6/biasdense_7/kerneldense_7/biasdense_8/kerneldense_8/biasdense_9/kerneldense_9/biasdense_10/kerneldense_10/biasAdadelta/iterAdadelta/decayAdadelta/learning_rateAdadelta/rhototalcounttrue_positivesfalse_positivestrue_positives_1false_negativestotal_1count_1$Adadelta/conv2d_39/kernel/accum_grad"Adadelta/conv2d_39/bias/accum_grad$Adadelta/conv2d_40/kernel/accum_grad"Adadelta/conv2d_40/bias/accum_grad$Adadelta/conv2d_41/kernel/accum_grad"Adadelta/conv2d_41/bias/accum_grad$Adadelta/conv2d_42/kernel/accum_grad"Adadelta/conv2d_42/bias/accum_grad$Adadelta/conv2d_43/kernel/accum_grad"Adadelta/conv2d_43/bias/accum_grad$Adadelta/conv2d_44/kernel/accum_grad"Adadelta/conv2d_44/bias/accum_grad$Adadelta/conv2d_45/kernel/accum_grad"Adadelta/conv2d_45/bias/accum_grad$Adadelta/conv2d_46/kernel/accum_grad"Adadelta/conv2d_46/bias/accum_grad$Adadelta/conv2d_47/kernel/accum_grad"Adadelta/conv2d_47/bias/accum_grad$Adadelta/conv2d_48/kernel/accum_grad"Adadelta/conv2d_48/bias/accum_grad$Adadelta/conv2d_49/kernel/accum_grad"Adadelta/conv2d_49/bias/accum_grad$Adadelta/conv2d_50/kernel/accum_grad"Adadelta/conv2d_50/bias/accum_grad$Adadelta/conv2d_51/kernel/accum_grad"Adadelta/conv2d_51/bias/accum_grad$Adadelta/conv2d_52/kernel/accum_grad"Adadelta/conv2d_52/bias/accum_grad$Adadelta/conv2d_53/kernel/accum_grad"Adadelta/conv2d_53/bias/accum_grad"Adadelta/dense_5/kernel/accum_grad Adadelta/dense_5/bias/accum_grad"Adadelta/dense_6/kernel/accum_grad Adadelta/dense_6/bias/accum_grad"Adadelta/dense_7/kernel/accum_grad Adadelta/dense_7/bias/accum_grad"Adadelta/dense_8/kernel/accum_grad Adadelta/dense_8/bias/accum_grad"Adadelta/dense_9/kernel/accum_grad Adadelta/dense_9/bias/accum_grad#Adadelta/dense_10/kernel/accum_grad!Adadelta/dense_10/bias/accum_grad#Adadelta/conv2d_39/kernel/accum_var!Adadelta/conv2d_39/bias/accum_var#Adadelta/conv2d_40/kernel/accum_var!Adadelta/conv2d_40/bias/accum_var#Adadelta/conv2d_41/kernel/accum_var!Adadelta/conv2d_41/bias/accum_var#Adadelta/conv2d_42/kernel/accum_var!Adadelta/conv2d_42/bias/accum_var#Adadelta/conv2d_43/kernel/accum_var!Adadelta/conv2d_43/bias/accum_var#Adadelta/conv2d_44/kernel/accum_var!Adadelta/conv2d_44/bias/accum_var#Adadelta/conv2d_45/kernel/accum_var!Adadelta/conv2d_45/bias/accum_var#Adadelta/conv2d_46/kernel/accum_var!Adadelta/conv2d_46/bias/accum_var#Adadelta/conv2d_47/kernel/accum_var!Adadelta/conv2d_47/bias/accum_var#Adadelta/conv2d_48/kernel/accum_var!Adadelta/conv2d_48/bias/accum_var#Adadelta/conv2d_49/kernel/accum_var!Adadelta/conv2d_49/bias/accum_var#Adadelta/conv2d_50/kernel/accum_var!Adadelta/conv2d_50/bias/accum_var#Adadelta/conv2d_51/kernel/accum_var!Adadelta/conv2d_51/bias/accum_var#Adadelta/conv2d_52/kernel/accum_var!Adadelta/conv2d_52/bias/accum_var#Adadelta/conv2d_53/kernel/accum_var!Adadelta/conv2d_53/bias/accum_var!Adadelta/dense_5/kernel/accum_varAdadelta/dense_5/bias/accum_var!Adadelta/dense_6/kernel/accum_varAdadelta/dense_6/bias/accum_var!Adadelta/dense_7/kernel/accum_varAdadelta/dense_7/bias/accum_var!Adadelta/dense_8/kernel/accum_varAdadelta/dense_8/bias/accum_var!Adadelta/dense_9/kernel/accum_varAdadelta/dense_9/bias/accum_var"Adadelta/dense_10/kernel/accum_var Adadelta/dense_10/bias/accum_var*?
Tin?
?2?*
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
GPU2*0J 8? *,
f'R%
#__inference__traced_restore_1817000??
?

e
F__inference_dropout_9_layer_call_and_return_conditional_losses_1815692

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????6,C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????6,*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????6,w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????6,q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????6,a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????6,"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????6,:W S
/
_output_shapes
:?????????6,
 
_user_specified_nameinputs
?	
?
D__inference_dense_7_layer_call_and_return_conditional_losses_1813536

inputs0
matmul_readvariableop_resource: 0-
biasadd_readvariableop_resource:0
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: 0*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????0r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????0_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????0w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
d
F__inference_dropout_9_layer_call_and_return_conditional_losses_1815680

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????6,c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????6,"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????6,:W S
/
_output_shapes
:?????????6,
 
_user_specified_nameinputs
?	
?
D__inference_dense_5_layer_call_and_return_conditional_losses_1813504

inputs0
matmul_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: @*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
G
+__inference_flatten_1_layer_call_fn_1815898

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_1_layer_call_and_return_conditional_losses_1813492`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?

e
F__inference_dropout_8_layer_call_and_return_conditional_losses_1815598

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????mYC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????mY*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????mYw
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????mYq
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????mYa
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????mY"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????mY:W S
/
_output_shapes
:?????????mY
 
_user_specified_nameinputs
?

?
F__inference_conv2d_43_layer_call_and_return_conditional_losses_1815636

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????mY*
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
:?????????mYg
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????mYw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????mY: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????mY
 
_user_specified_nameinputs
?	
?
D__inference_dense_6_layer_call_and_return_conditional_losses_1815942

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
D__inference_dense_9_layer_call_and_return_conditional_losses_1815999

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
)__inference_dense_7_layer_call_fn_1815951

inputs
unknown: 0
	unknown_0:0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_7_layer_call_and_return_conditional_losses_1813536o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????0`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?	
?
D__inference_dense_6_layer_call_and_return_conditional_losses_1813520

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
D__inference_dense_8_layer_call_and_return_conditional_losses_1815980

inputs0
matmul_readvariableop_resource:0 -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:0 *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????0: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????0
 
_user_specified_nameinputs
?
?
+__inference_conv2d_42_layer_call_fn_1815607

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????mY*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_42_layer_call_and_return_conditional_losses_1813265w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????mY`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????mY: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????mY
 
_user_specified_nameinputs
?
Q
5__inference_average_pooling2d_2_layer_call_fn_1815802

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_average_pooling2d_2_layer_call_and_return_conditional_losses_1813163?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
.__inference_sequential_2_layer_call_fn_1815011

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

unknown_30$

unknown_31: 

unknown_32: $

unknown_33: 

unknown_34:$

unknown_35:

unknown_36:$

unknown_37:

unknown_38:

unknown_39

unknown_40

unknown_41: @

unknown_42:@

unknown_43:@ 

unknown_44: 

unknown_45: 0

unknown_46:0

unknown_47:0 

unknown_48: 

unknown_49: 

unknown_50:

unknown_51:

unknown_52:
identity??StatefulPartitionedCall?
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
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52*B
Tin;
927*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*L
_read_only_resource_inputs.
,*	
!"#$%&'(+,-./0123456*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_2_layer_call_and_return_conditional_losses_1814239o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:???????????::: : : : ::: : : : : : ::: : : : : : ::: : : : : : ::: : : : : : : : ::: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
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
::,)(
&
_output_shapes
::,*(
&
_output_shapes
:
?
?
*__inference_dense_10_layer_call_fn_1816008

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_10_layer_call_and_return_conditional_losses_1813585o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
F__inference_conv2d_41_layer_call_and_return_conditional_losses_1815561

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
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
:???????????i
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:???????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
G
+__inference_dropout_8_layer_call_fn_1815576

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????mY* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_8_layer_call_and_return_conditional_losses_1813253h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????mY"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????mY:W S
/
_output_shapes
:?????????mY
 
_user_specified_nameinputs
?

?
F__inference_conv2d_51_layer_call_and_return_conditional_losses_1813440

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
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
:?????????g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?

e
F__inference_dropout_9_layer_call_and_return_conditional_losses_1813879

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????6,C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????6,*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????6,w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????6,q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????6,a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????6,"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????6,:W S
/
_output_shapes
:?????????6,
 
_user_specified_nameinputs
?
N
2__inference_max_pooling2d_13_layer_call_fn_1815754

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_1813151?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

?
F__inference_conv2d_44_layer_call_and_return_conditional_losses_1815655

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????mY*
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
:?????????mYg
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????mYw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????mY: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????mY
 
_user_specified_nameinputs
?
l
P__inference_average_pooling2d_2_layer_call_and_return_conditional_losses_1815807

inputs
identity?
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
d
+__inference_dropout_9_layer_call_fn_1815675

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????6,* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_9_layer_call_and_return_conditional_losses_1813879w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????6,`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????6,22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????6,
 
_user_specified_nameinputs
?
?
+__inference_conv2d_53_layer_call_fn_1815883

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_53_layer_call_and_return_conditional_losses_1813473w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
i
M__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_1815855

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

?
E__inference_dense_10_layer_call_and_return_conditional_losses_1816019

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
+__inference_conv2d_47_layer_call_fn_1815739

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????6,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_47_layer_call_and_return_conditional_losses_1813367w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????6,`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????6,: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????6,
 
_user_specified_nameinputs
?
d
F__inference_dropout_8_layer_call_and_return_conditional_losses_1815586

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????mYc

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????mY"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????mY:W S
/
_output_shapes
:?????????mY
 
_user_specified_nameinputs
?
?
+__inference_conv2d_40_layer_call_fn_1815532

inputs!
unknown: 
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_40_layer_call_and_return_conditional_losses_1813218y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:??????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:??????????? 
 
_user_specified_nameinputs
?
N
2__inference_max_pooling2d_12_layer_call_fn_1815660

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_1813139?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

?
F__inference_conv2d_39_layer_call_and_return_conditional_losses_1815523

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
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
:??????????? i
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:??????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
+__inference_conv2d_46_layer_call_fn_1815720

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????6,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_46_layer_call_and_return_conditional_losses_1813344w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????6,`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????6,: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????6,
 
_user_specified_nameinputs
?	
?
D__inference_dense_9_layer_call_and_return_conditional_losses_1813568

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
G
+__inference_dropout_9_layer_call_fn_1815670

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????6,* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_9_layer_call_and_return_conditional_losses_1813316h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????6,"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????6,:W S
/
_output_shapes
:?????????6,
 
_user_specified_nameinputs
?
i
M__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_1815571

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
??
?
I__inference_sequential_2_layer_call_and_return_conditional_losses_1814622
input_3
normalization_16_sub_y
normalization_16_sqrt_x+
conv2d_39_1814473: 
conv2d_39_1814475: +
conv2d_40_1814478: 
conv2d_40_1814480:
normalization_17_sub_y
normalization_17_sqrt_x+
conv2d_41_1814490:
conv2d_41_1814492:+
conv2d_42_1814497:
conv2d_42_1814499:+
conv2d_43_1814502:
conv2d_43_1814504:
normalization_18_sub_y
normalization_18_sqrt_x+
conv2d_44_1814514:
conv2d_44_1814516:+
conv2d_45_1814521:
conv2d_45_1814523:+
conv2d_46_1814526:
conv2d_46_1814528:
normalization_19_sub_y
normalization_19_sqrt_x+
conv2d_47_1814538:
conv2d_47_1814540:+
conv2d_48_1814544:
conv2d_48_1814546:+
conv2d_49_1814549:
conv2d_49_1814551:
normalization_20_sub_y
normalization_20_sqrt_x+
conv2d_50_1814562: 
conv2d_50_1814564: +
conv2d_51_1814567: 
conv2d_51_1814569:+
conv2d_52_1814573:
conv2d_52_1814575:+
conv2d_53_1814578:
conv2d_53_1814580:
normalization_21_sub_y
normalization_21_sqrt_x!
dense_5_1814591: @
dense_5_1814593:@!
dense_6_1814596:@ 
dense_6_1814598: !
dense_7_1814601: 0
dense_7_1814603:0!
dense_8_1814606:0 
dense_8_1814608: !
dense_9_1814611: 
dense_9_1814613:"
dense_10_1814616:
dense_10_1814618:
identity??!conv2d_39/StatefulPartitionedCall?!conv2d_40/StatefulPartitionedCall?!conv2d_41/StatefulPartitionedCall?!conv2d_42/StatefulPartitionedCall?!conv2d_43/StatefulPartitionedCall?!conv2d_44/StatefulPartitionedCall?!conv2d_45/StatefulPartitionedCall?!conv2d_46/StatefulPartitionedCall?!conv2d_47/StatefulPartitionedCall?!conv2d_48/StatefulPartitionedCall?!conv2d_49/StatefulPartitionedCall?!conv2d_50/StatefulPartitionedCall?!conv2d_51/StatefulPartitionedCall?!conv2d_52/StatefulPartitionedCall?!conv2d_53/StatefulPartitionedCall? dense_10/StatefulPartitionedCall?dense_5/StatefulPartitionedCall?dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?dense_8/StatefulPartitionedCall?dense_9/StatefulPartitionedCallx
normalization_16/subSubinput_3normalization_16_sub_y*
T0*1
_output_shapes
:???????????g
normalization_16/SqrtSqrtnormalization_16_sqrt_x*
T0*&
_output_shapes
:_
normalization_16/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_16/MaximumMaximumnormalization_16/Sqrt:y:0#normalization_16/Maximum/y:output:0*
T0*&
_output_shapes
:?
normalization_16/truedivRealDivnormalization_16/sub:z:0normalization_16/Maximum:z:0*
T0*1
_output_shapes
:????????????
!conv2d_39/StatefulPartitionedCallStatefulPartitionedCallnormalization_16/truediv:z:0conv2d_39_1814473conv2d_39_1814475*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_39_layer_call_and_return_conditional_losses_1813202?
!conv2d_40/StatefulPartitionedCallStatefulPartitionedCall*conv2d_39/StatefulPartitionedCall:output:0conv2d_40_1814478conv2d_40_1814480*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_40_layer_call_and_return_conditional_losses_1813218?
normalization_17/subSub*conv2d_40/StatefulPartitionedCall:output:0normalization_17_sub_y*
T0*1
_output_shapes
:???????????g
normalization_17/SqrtSqrtnormalization_17_sqrt_x*
T0*&
_output_shapes
:_
normalization_17/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_17/MaximumMaximumnormalization_17/Sqrt:y:0#normalization_17/Maximum/y:output:0*
T0*&
_output_shapes
:?
normalization_17/truedivRealDivnormalization_17/sub:z:0normalization_17/Maximum:z:0*
T0*1
_output_shapes
:????????????
!conv2d_41/StatefulPartitionedCallStatefulPartitionedCallnormalization_17/truediv:z:0conv2d_41_1814490conv2d_41_1814492*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_41_layer_call_and_return_conditional_losses_1813241?
 max_pooling2d_11/PartitionedCallPartitionedCall*conv2d_41/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????mY* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_1813127?
dropout_8/PartitionedCallPartitionedCall)max_pooling2d_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????mY* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_8_layer_call_and_return_conditional_losses_1813253?
!conv2d_42/StatefulPartitionedCallStatefulPartitionedCall"dropout_8/PartitionedCall:output:0conv2d_42_1814497conv2d_42_1814499*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????mY*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_42_layer_call_and_return_conditional_losses_1813265?
!conv2d_43/StatefulPartitionedCallStatefulPartitionedCall*conv2d_42/StatefulPartitionedCall:output:0conv2d_43_1814502conv2d_43_1814504*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????mY*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_43_layer_call_and_return_conditional_losses_1813281?
normalization_18/subSub*conv2d_43/StatefulPartitionedCall:output:0normalization_18_sub_y*
T0*/
_output_shapes
:?????????mYg
normalization_18/SqrtSqrtnormalization_18_sqrt_x*
T0*&
_output_shapes
:_
normalization_18/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_18/MaximumMaximumnormalization_18/Sqrt:y:0#normalization_18/Maximum/y:output:0*
T0*&
_output_shapes
:?
normalization_18/truedivRealDivnormalization_18/sub:z:0normalization_18/Maximum:z:0*
T0*/
_output_shapes
:?????????mY?
!conv2d_44/StatefulPartitionedCallStatefulPartitionedCallnormalization_18/truediv:z:0conv2d_44_1814514conv2d_44_1814516*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????mY*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_44_layer_call_and_return_conditional_losses_1813304?
 max_pooling2d_12/PartitionedCallPartitionedCall*conv2d_44/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????6,* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_1813139?
dropout_9/PartitionedCallPartitionedCall)max_pooling2d_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????6,* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_9_layer_call_and_return_conditional_losses_1813316?
!conv2d_45/StatefulPartitionedCallStatefulPartitionedCall"dropout_9/PartitionedCall:output:0conv2d_45_1814521conv2d_45_1814523*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????6,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_45_layer_call_and_return_conditional_losses_1813328?
!conv2d_46/StatefulPartitionedCallStatefulPartitionedCall*conv2d_45/StatefulPartitionedCall:output:0conv2d_46_1814526conv2d_46_1814528*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????6,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_46_layer_call_and_return_conditional_losses_1813344?
normalization_19/subSub*conv2d_46/StatefulPartitionedCall:output:0normalization_19_sub_y*
T0*/
_output_shapes
:?????????6,g
normalization_19/SqrtSqrtnormalization_19_sqrt_x*
T0*&
_output_shapes
:_
normalization_19/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_19/MaximumMaximumnormalization_19/Sqrt:y:0#normalization_19/Maximum/y:output:0*
T0*&
_output_shapes
:?
normalization_19/truedivRealDivnormalization_19/sub:z:0normalization_19/Maximum:z:0*
T0*/
_output_shapes
:?????????6,?
!conv2d_47/StatefulPartitionedCallStatefulPartitionedCallnormalization_19/truediv:z:0conv2d_47_1814538conv2d_47_1814540*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????6,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_47_layer_call_and_return_conditional_losses_1813367?
 max_pooling2d_13/PartitionedCallPartitionedCall*conv2d_47/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_1813151?
!conv2d_48/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_13/PartitionedCall:output:0conv2d_48_1814544conv2d_48_1814546*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_48_layer_call_and_return_conditional_losses_1813384?
!conv2d_49/StatefulPartitionedCallStatefulPartitionedCall*conv2d_48/StatefulPartitionedCall:output:0conv2d_49_1814549conv2d_49_1814551*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_49_layer_call_and_return_conditional_losses_1813400?
#average_pooling2d_2/PartitionedCallPartitionedCall*conv2d_49/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_average_pooling2d_2_layer_call_and_return_conditional_losses_1813163?
normalization_20/subSub,average_pooling2d_2/PartitionedCall:output:0normalization_20_sub_y*
T0*/
_output_shapes
:?????????g
normalization_20/SqrtSqrtnormalization_20_sqrt_x*
T0*&
_output_shapes
:_
normalization_20/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_20/MaximumMaximumnormalization_20/Sqrt:y:0#normalization_20/Maximum/y:output:0*
T0*&
_output_shapes
:?
normalization_20/truedivRealDivnormalization_20/sub:z:0normalization_20/Maximum:z:0*
T0*/
_output_shapes
:??????????
!conv2d_50/StatefulPartitionedCallStatefulPartitionedCallnormalization_20/truediv:z:0conv2d_50_1814562conv2d_50_1814564*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_50_layer_call_and_return_conditional_losses_1813424?
!conv2d_51/StatefulPartitionedCallStatefulPartitionedCall*conv2d_50/StatefulPartitionedCall:output:0conv2d_51_1814567conv2d_51_1814569*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_51_layer_call_and_return_conditional_losses_1813440?
 max_pooling2d_14/PartitionedCallPartitionedCall*conv2d_51/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_1813175?
!conv2d_52/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_14/PartitionedCall:output:0conv2d_52_1814573conv2d_52_1814575*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_52_layer_call_and_return_conditional_losses_1813457?
!conv2d_53/StatefulPartitionedCallStatefulPartitionedCall*conv2d_52/StatefulPartitionedCall:output:0conv2d_53_1814578conv2d_53_1814580*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_53_layer_call_and_return_conditional_losses_1813473?
normalization_21/subSub*conv2d_53/StatefulPartitionedCall:output:0normalization_21_sub_y*
T0*/
_output_shapes
:?????????g
normalization_21/SqrtSqrtnormalization_21_sqrt_x*
T0*&
_output_shapes
:_
normalization_21/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_21/MaximumMaximumnormalization_21/Sqrt:y:0#normalization_21/Maximum/y:output:0*
T0*&
_output_shapes
:?
normalization_21/truedivRealDivnormalization_21/sub:z:0normalization_21/Maximum:z:0*
T0*/
_output_shapes
:??????????
flatten_1/PartitionedCallPartitionedCallnormalization_21/truediv:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_1_layer_call_and_return_conditional_losses_1813492?
dense_5/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_5_1814591dense_5_1814593*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_5_layer_call_and_return_conditional_losses_1813504?
dense_6/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0dense_6_1814596dense_6_1814598*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_6_layer_call_and_return_conditional_losses_1813520?
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_1814601dense_7_1814603*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_7_layer_call_and_return_conditional_losses_1813536?
dense_8/StatefulPartitionedCallStatefulPartitionedCall(dense_7/StatefulPartitionedCall:output:0dense_8_1814606dense_8_1814608*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_8_layer_call_and_return_conditional_losses_1813552?
dense_9/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0dense_9_1814611dense_9_1814613*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_1813568?
 dense_10/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0dense_10_1814616dense_10_1814618*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_10_layer_call_and_return_conditional_losses_1813585x
IdentityIdentity)dense_10/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv2d_39/StatefulPartitionedCall"^conv2d_40/StatefulPartitionedCall"^conv2d_41/StatefulPartitionedCall"^conv2d_42/StatefulPartitionedCall"^conv2d_43/StatefulPartitionedCall"^conv2d_44/StatefulPartitionedCall"^conv2d_45/StatefulPartitionedCall"^conv2d_46/StatefulPartitionedCall"^conv2d_47/StatefulPartitionedCall"^conv2d_48/StatefulPartitionedCall"^conv2d_49/StatefulPartitionedCall"^conv2d_50/StatefulPartitionedCall"^conv2d_51/StatefulPartitionedCall"^conv2d_52/StatefulPartitionedCall"^conv2d_53/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:???????????::: : : : ::: : : : : : ::: : : : : : ::: : : : : : ::: : : : : : : : ::: : : : : : : : : : : : 2F
!conv2d_39/StatefulPartitionedCall!conv2d_39/StatefulPartitionedCall2F
!conv2d_40/StatefulPartitionedCall!conv2d_40/StatefulPartitionedCall2F
!conv2d_41/StatefulPartitionedCall!conv2d_41/StatefulPartitionedCall2F
!conv2d_42/StatefulPartitionedCall!conv2d_42/StatefulPartitionedCall2F
!conv2d_43/StatefulPartitionedCall!conv2d_43/StatefulPartitionedCall2F
!conv2d_44/StatefulPartitionedCall!conv2d_44/StatefulPartitionedCall2F
!conv2d_45/StatefulPartitionedCall!conv2d_45/StatefulPartitionedCall2F
!conv2d_46/StatefulPartitionedCall!conv2d_46/StatefulPartitionedCall2F
!conv2d_47/StatefulPartitionedCall!conv2d_47/StatefulPartitionedCall2F
!conv2d_48/StatefulPartitionedCall!conv2d_48/StatefulPartitionedCall2F
!conv2d_49/StatefulPartitionedCall!conv2d_49/StatefulPartitionedCall2F
!conv2d_50/StatefulPartitionedCall!conv2d_50/StatefulPartitionedCall2F
!conv2d_51/StatefulPartitionedCall!conv2d_51/StatefulPartitionedCall2F
!conv2d_52/StatefulPartitionedCall!conv2d_52/StatefulPartitionedCall2F
!conv2d_53/StatefulPartitionedCall!conv2d_53/StatefulPartitionedCall2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_3:,(
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
::,)(
&
_output_shapes
::,*(
&
_output_shapes
:
??
?
I__inference_sequential_2_layer_call_and_return_conditional_losses_1814781
input_3
normalization_16_sub_y
normalization_16_sqrt_x+
conv2d_39_1814632: 
conv2d_39_1814634: +
conv2d_40_1814637: 
conv2d_40_1814639:
normalization_17_sub_y
normalization_17_sqrt_x+
conv2d_41_1814649:
conv2d_41_1814651:+
conv2d_42_1814656:
conv2d_42_1814658:+
conv2d_43_1814661:
conv2d_43_1814663:
normalization_18_sub_y
normalization_18_sqrt_x+
conv2d_44_1814673:
conv2d_44_1814675:+
conv2d_45_1814680:
conv2d_45_1814682:+
conv2d_46_1814685:
conv2d_46_1814687:
normalization_19_sub_y
normalization_19_sqrt_x+
conv2d_47_1814697:
conv2d_47_1814699:+
conv2d_48_1814703:
conv2d_48_1814705:+
conv2d_49_1814708:
conv2d_49_1814710:
normalization_20_sub_y
normalization_20_sqrt_x+
conv2d_50_1814721: 
conv2d_50_1814723: +
conv2d_51_1814726: 
conv2d_51_1814728:+
conv2d_52_1814732:
conv2d_52_1814734:+
conv2d_53_1814737:
conv2d_53_1814739:
normalization_21_sub_y
normalization_21_sqrt_x!
dense_5_1814750: @
dense_5_1814752:@!
dense_6_1814755:@ 
dense_6_1814757: !
dense_7_1814760: 0
dense_7_1814762:0!
dense_8_1814765:0 
dense_8_1814767: !
dense_9_1814770: 
dense_9_1814772:"
dense_10_1814775:
dense_10_1814777:
identity??!conv2d_39/StatefulPartitionedCall?!conv2d_40/StatefulPartitionedCall?!conv2d_41/StatefulPartitionedCall?!conv2d_42/StatefulPartitionedCall?!conv2d_43/StatefulPartitionedCall?!conv2d_44/StatefulPartitionedCall?!conv2d_45/StatefulPartitionedCall?!conv2d_46/StatefulPartitionedCall?!conv2d_47/StatefulPartitionedCall?!conv2d_48/StatefulPartitionedCall?!conv2d_49/StatefulPartitionedCall?!conv2d_50/StatefulPartitionedCall?!conv2d_51/StatefulPartitionedCall?!conv2d_52/StatefulPartitionedCall?!conv2d_53/StatefulPartitionedCall? dense_10/StatefulPartitionedCall?dense_5/StatefulPartitionedCall?dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?dense_8/StatefulPartitionedCall?dense_9/StatefulPartitionedCall?!dropout_8/StatefulPartitionedCall?!dropout_9/StatefulPartitionedCallx
normalization_16/subSubinput_3normalization_16_sub_y*
T0*1
_output_shapes
:???????????g
normalization_16/SqrtSqrtnormalization_16_sqrt_x*
T0*&
_output_shapes
:_
normalization_16/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_16/MaximumMaximumnormalization_16/Sqrt:y:0#normalization_16/Maximum/y:output:0*
T0*&
_output_shapes
:?
normalization_16/truedivRealDivnormalization_16/sub:z:0normalization_16/Maximum:z:0*
T0*1
_output_shapes
:????????????
!conv2d_39/StatefulPartitionedCallStatefulPartitionedCallnormalization_16/truediv:z:0conv2d_39_1814632conv2d_39_1814634*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_39_layer_call_and_return_conditional_losses_1813202?
!conv2d_40/StatefulPartitionedCallStatefulPartitionedCall*conv2d_39/StatefulPartitionedCall:output:0conv2d_40_1814637conv2d_40_1814639*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_40_layer_call_and_return_conditional_losses_1813218?
normalization_17/subSub*conv2d_40/StatefulPartitionedCall:output:0normalization_17_sub_y*
T0*1
_output_shapes
:???????????g
normalization_17/SqrtSqrtnormalization_17_sqrt_x*
T0*&
_output_shapes
:_
normalization_17/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_17/MaximumMaximumnormalization_17/Sqrt:y:0#normalization_17/Maximum/y:output:0*
T0*&
_output_shapes
:?
normalization_17/truedivRealDivnormalization_17/sub:z:0normalization_17/Maximum:z:0*
T0*1
_output_shapes
:????????????
!conv2d_41/StatefulPartitionedCallStatefulPartitionedCallnormalization_17/truediv:z:0conv2d_41_1814649conv2d_41_1814651*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_41_layer_call_and_return_conditional_losses_1813241?
 max_pooling2d_11/PartitionedCallPartitionedCall*conv2d_41/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????mY* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_1813127?
!dropout_8/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????mY* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_8_layer_call_and_return_conditional_losses_1813932?
!conv2d_42/StatefulPartitionedCallStatefulPartitionedCall*dropout_8/StatefulPartitionedCall:output:0conv2d_42_1814656conv2d_42_1814658*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????mY*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_42_layer_call_and_return_conditional_losses_1813265?
!conv2d_43/StatefulPartitionedCallStatefulPartitionedCall*conv2d_42/StatefulPartitionedCall:output:0conv2d_43_1814661conv2d_43_1814663*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????mY*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_43_layer_call_and_return_conditional_losses_1813281?
normalization_18/subSub*conv2d_43/StatefulPartitionedCall:output:0normalization_18_sub_y*
T0*/
_output_shapes
:?????????mYg
normalization_18/SqrtSqrtnormalization_18_sqrt_x*
T0*&
_output_shapes
:_
normalization_18/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_18/MaximumMaximumnormalization_18/Sqrt:y:0#normalization_18/Maximum/y:output:0*
T0*&
_output_shapes
:?
normalization_18/truedivRealDivnormalization_18/sub:z:0normalization_18/Maximum:z:0*
T0*/
_output_shapes
:?????????mY?
!conv2d_44/StatefulPartitionedCallStatefulPartitionedCallnormalization_18/truediv:z:0conv2d_44_1814673conv2d_44_1814675*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????mY*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_44_layer_call_and_return_conditional_losses_1813304?
 max_pooling2d_12/PartitionedCallPartitionedCall*conv2d_44/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????6,* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_1813139?
!dropout_9/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_12/PartitionedCall:output:0"^dropout_8/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????6,* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_9_layer_call_and_return_conditional_losses_1813879?
!conv2d_45/StatefulPartitionedCallStatefulPartitionedCall*dropout_9/StatefulPartitionedCall:output:0conv2d_45_1814680conv2d_45_1814682*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????6,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_45_layer_call_and_return_conditional_losses_1813328?
!conv2d_46/StatefulPartitionedCallStatefulPartitionedCall*conv2d_45/StatefulPartitionedCall:output:0conv2d_46_1814685conv2d_46_1814687*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????6,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_46_layer_call_and_return_conditional_losses_1813344?
normalization_19/subSub*conv2d_46/StatefulPartitionedCall:output:0normalization_19_sub_y*
T0*/
_output_shapes
:?????????6,g
normalization_19/SqrtSqrtnormalization_19_sqrt_x*
T0*&
_output_shapes
:_
normalization_19/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_19/MaximumMaximumnormalization_19/Sqrt:y:0#normalization_19/Maximum/y:output:0*
T0*&
_output_shapes
:?
normalization_19/truedivRealDivnormalization_19/sub:z:0normalization_19/Maximum:z:0*
T0*/
_output_shapes
:?????????6,?
!conv2d_47/StatefulPartitionedCallStatefulPartitionedCallnormalization_19/truediv:z:0conv2d_47_1814697conv2d_47_1814699*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????6,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_47_layer_call_and_return_conditional_losses_1813367?
 max_pooling2d_13/PartitionedCallPartitionedCall*conv2d_47/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_1813151?
!conv2d_48/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_13/PartitionedCall:output:0conv2d_48_1814703conv2d_48_1814705*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_48_layer_call_and_return_conditional_losses_1813384?
!conv2d_49/StatefulPartitionedCallStatefulPartitionedCall*conv2d_48/StatefulPartitionedCall:output:0conv2d_49_1814708conv2d_49_1814710*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_49_layer_call_and_return_conditional_losses_1813400?
#average_pooling2d_2/PartitionedCallPartitionedCall*conv2d_49/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_average_pooling2d_2_layer_call_and_return_conditional_losses_1813163?
normalization_20/subSub,average_pooling2d_2/PartitionedCall:output:0normalization_20_sub_y*
T0*/
_output_shapes
:?????????g
normalization_20/SqrtSqrtnormalization_20_sqrt_x*
T0*&
_output_shapes
:_
normalization_20/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_20/MaximumMaximumnormalization_20/Sqrt:y:0#normalization_20/Maximum/y:output:0*
T0*&
_output_shapes
:?
normalization_20/truedivRealDivnormalization_20/sub:z:0normalization_20/Maximum:z:0*
T0*/
_output_shapes
:??????????
!conv2d_50/StatefulPartitionedCallStatefulPartitionedCallnormalization_20/truediv:z:0conv2d_50_1814721conv2d_50_1814723*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_50_layer_call_and_return_conditional_losses_1813424?
!conv2d_51/StatefulPartitionedCallStatefulPartitionedCall*conv2d_50/StatefulPartitionedCall:output:0conv2d_51_1814726conv2d_51_1814728*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_51_layer_call_and_return_conditional_losses_1813440?
 max_pooling2d_14/PartitionedCallPartitionedCall*conv2d_51/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_1813175?
!conv2d_52/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_14/PartitionedCall:output:0conv2d_52_1814732conv2d_52_1814734*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_52_layer_call_and_return_conditional_losses_1813457?
!conv2d_53/StatefulPartitionedCallStatefulPartitionedCall*conv2d_52/StatefulPartitionedCall:output:0conv2d_53_1814737conv2d_53_1814739*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_53_layer_call_and_return_conditional_losses_1813473?
normalization_21/subSub*conv2d_53/StatefulPartitionedCall:output:0normalization_21_sub_y*
T0*/
_output_shapes
:?????????g
normalization_21/SqrtSqrtnormalization_21_sqrt_x*
T0*&
_output_shapes
:_
normalization_21/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_21/MaximumMaximumnormalization_21/Sqrt:y:0#normalization_21/Maximum/y:output:0*
T0*&
_output_shapes
:?
normalization_21/truedivRealDivnormalization_21/sub:z:0normalization_21/Maximum:z:0*
T0*/
_output_shapes
:??????????
flatten_1/PartitionedCallPartitionedCallnormalization_21/truediv:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_1_layer_call_and_return_conditional_losses_1813492?
dense_5/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_5_1814750dense_5_1814752*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_5_layer_call_and_return_conditional_losses_1813504?
dense_6/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0dense_6_1814755dense_6_1814757*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_6_layer_call_and_return_conditional_losses_1813520?
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_1814760dense_7_1814762*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_7_layer_call_and_return_conditional_losses_1813536?
dense_8/StatefulPartitionedCallStatefulPartitionedCall(dense_7/StatefulPartitionedCall:output:0dense_8_1814765dense_8_1814767*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_8_layer_call_and_return_conditional_losses_1813552?
dense_9/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0dense_9_1814770dense_9_1814772*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_1813568?
 dense_10/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0dense_10_1814775dense_10_1814777*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_10_layer_call_and_return_conditional_losses_1813585x
IdentityIdentity)dense_10/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv2d_39/StatefulPartitionedCall"^conv2d_40/StatefulPartitionedCall"^conv2d_41/StatefulPartitionedCall"^conv2d_42/StatefulPartitionedCall"^conv2d_43/StatefulPartitionedCall"^conv2d_44/StatefulPartitionedCall"^conv2d_45/StatefulPartitionedCall"^conv2d_46/StatefulPartitionedCall"^conv2d_47/StatefulPartitionedCall"^conv2d_48/StatefulPartitionedCall"^conv2d_49/StatefulPartitionedCall"^conv2d_50/StatefulPartitionedCall"^conv2d_51/StatefulPartitionedCall"^conv2d_52/StatefulPartitionedCall"^conv2d_53/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall"^dropout_8/StatefulPartitionedCall"^dropout_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:???????????::: : : : ::: : : : : : ::: : : : : : ::: : : : : : ::: : : : : : : : ::: : : : : : : : : : : : 2F
!conv2d_39/StatefulPartitionedCall!conv2d_39/StatefulPartitionedCall2F
!conv2d_40/StatefulPartitionedCall!conv2d_40/StatefulPartitionedCall2F
!conv2d_41/StatefulPartitionedCall!conv2d_41/StatefulPartitionedCall2F
!conv2d_42/StatefulPartitionedCall!conv2d_42/StatefulPartitionedCall2F
!conv2d_43/StatefulPartitionedCall!conv2d_43/StatefulPartitionedCall2F
!conv2d_44/StatefulPartitionedCall!conv2d_44/StatefulPartitionedCall2F
!conv2d_45/StatefulPartitionedCall!conv2d_45/StatefulPartitionedCall2F
!conv2d_46/StatefulPartitionedCall!conv2d_46/StatefulPartitionedCall2F
!conv2d_47/StatefulPartitionedCall!conv2d_47/StatefulPartitionedCall2F
!conv2d_48/StatefulPartitionedCall!conv2d_48/StatefulPartitionedCall2F
!conv2d_49/StatefulPartitionedCall!conv2d_49/StatefulPartitionedCall2F
!conv2d_50/StatefulPartitionedCall!conv2d_50/StatefulPartitionedCall2F
!conv2d_51/StatefulPartitionedCall!conv2d_51/StatefulPartitionedCall2F
!conv2d_52/StatefulPartitionedCall!conv2d_52/StatefulPartitionedCall2F
!conv2d_53/StatefulPartitionedCall!conv2d_53/StatefulPartitionedCall2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2F
!dropout_8/StatefulPartitionedCall!dropout_8/StatefulPartitionedCall2F
!dropout_9/StatefulPartitionedCall!dropout_9/StatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_3:,(
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
::,)(
&
_output_shapes
::,*(
&
_output_shapes
:
?
i
M__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_1815759

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

?
F__inference_conv2d_43_layer_call_and_return_conditional_losses_1813281

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????mY*
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
:?????????mYg
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????mYw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????mY: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????mY
 
_user_specified_nameinputs
?

?
F__inference_conv2d_46_layer_call_and_return_conditional_losses_1815730

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????6,*
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
:?????????6,g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????6,w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????6,: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????6,
 
_user_specified_nameinputs
?

?
F__inference_conv2d_45_layer_call_and_return_conditional_losses_1815711

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????6,*
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
:?????????6,g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????6,w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????6,: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????6,
 
_user_specified_nameinputs
?
l
P__inference_average_pooling2d_2_layer_call_and_return_conditional_losses_1813163

inputs
identity?
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
+__inference_conv2d_52_layer_call_fn_1815864

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_52_layer_call_and_return_conditional_losses_1813457w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
d
F__inference_dropout_9_layer_call_and_return_conditional_losses_1813316

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????6,c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????6,"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????6,:W S
/
_output_shapes
:?????????6,
 
_user_specified_nameinputs
?
?
+__inference_conv2d_51_layer_call_fn_1815835

inputs!
unknown: 
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_51_layer_call_and_return_conditional_losses_1813440w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?

?
F__inference_conv2d_40_layer_call_and_return_conditional_losses_1815542

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
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
:???????????i
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:???????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:??????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:??????????? 
 
_user_specified_nameinputs
?
i
M__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_1813175

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
.__inference_sequential_2_layer_call_fn_1813703
input_3
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

unknown_30$

unknown_31: 

unknown_32: $

unknown_33: 

unknown_34:$

unknown_35:

unknown_36:$

unknown_37:

unknown_38:

unknown_39

unknown_40

unknown_41: @

unknown_42:@

unknown_43:@ 

unknown_44: 

unknown_45: 0

unknown_46:0

unknown_47:0 

unknown_48: 

unknown_49: 

unknown_50:

unknown_51:

unknown_52:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52*B
Tin;
927*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*L
_read_only_resource_inputs.
,*	
!"#$%&'(+,-./0123456*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_2_layer_call_and_return_conditional_losses_1813592o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:???????????::: : : : ::: : : : : : ::: : : : : : ::: : : : : : ::: : : : : : : : ::: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_3:,(
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
::,)(
&
_output_shapes
::,*(
&
_output_shapes
:
?

?
F__inference_conv2d_47_layer_call_and_return_conditional_losses_1813367

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????6,*
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
:?????????6,g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????6,w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????6,: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????6,
 
_user_specified_nameinputs
?

?
F__inference_conv2d_45_layer_call_and_return_conditional_losses_1813328

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????6,*
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
:?????????6,g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????6,w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????6,: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????6,
 
_user_specified_nameinputs
?

?
F__inference_conv2d_39_layer_call_and_return_conditional_losses_1813202

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
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
:??????????? i
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:??????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
)__inference_dense_8_layer_call_fn_1815970

inputs
unknown:0 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_8_layer_call_and_return_conditional_losses_1813552o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????0: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????0
 
_user_specified_nameinputs
?
?
)__inference_dense_6_layer_call_fn_1815932

inputs
unknown:@ 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_6_layer_call_and_return_conditional_losses_1813520o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

?
F__inference_conv2d_47_layer_call_and_return_conditional_losses_1815749

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????6,*
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
:?????????6,g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????6,w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????6,: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????6,
 
_user_specified_nameinputs
?
?
+__inference_conv2d_45_layer_call_fn_1815701

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????6,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_45_layer_call_and_return_conditional_losses_1813328w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????6,`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????6,: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????6,
 
_user_specified_nameinputs
?
?
)__inference_dense_9_layer_call_fn_1815989

inputs
unknown: 
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_1813568o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
+__inference_conv2d_49_layer_call_fn_1815787

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_49_layer_call_and_return_conditional_losses_1813400w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????	: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
?
+__inference_conv2d_39_layer_call_fn_1815513

inputs!
unknown: 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_39_layer_call_and_return_conditional_losses_1813202y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:??????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
??
?k
#__inference__traced_restore_1817000
file_prefix4
&assignvariableop_normalization_16_mean::
,assignvariableop_1_normalization_16_variance:3
)assignvariableop_2_normalization_16_count:	 =
#assignvariableop_3_conv2d_39_kernel: /
!assignvariableop_4_conv2d_39_bias: =
#assignvariableop_5_conv2d_40_kernel: /
!assignvariableop_6_conv2d_40_bias:6
(assignvariableop_7_normalization_17_mean::
,assignvariableop_8_normalization_17_variance:3
)assignvariableop_9_normalization_17_count:	 >
$assignvariableop_10_conv2d_41_kernel:0
"assignvariableop_11_conv2d_41_bias:>
$assignvariableop_12_conv2d_42_kernel:0
"assignvariableop_13_conv2d_42_bias:>
$assignvariableop_14_conv2d_43_kernel:0
"assignvariableop_15_conv2d_43_bias:7
)assignvariableop_16_normalization_18_mean:;
-assignvariableop_17_normalization_18_variance:4
*assignvariableop_18_normalization_18_count:	 >
$assignvariableop_19_conv2d_44_kernel:0
"assignvariableop_20_conv2d_44_bias:>
$assignvariableop_21_conv2d_45_kernel:0
"assignvariableop_22_conv2d_45_bias:>
$assignvariableop_23_conv2d_46_kernel:0
"assignvariableop_24_conv2d_46_bias:7
)assignvariableop_25_normalization_19_mean:;
-assignvariableop_26_normalization_19_variance:4
*assignvariableop_27_normalization_19_count:	 >
$assignvariableop_28_conv2d_47_kernel:0
"assignvariableop_29_conv2d_47_bias:>
$assignvariableop_30_conv2d_48_kernel:0
"assignvariableop_31_conv2d_48_bias:>
$assignvariableop_32_conv2d_49_kernel:0
"assignvariableop_33_conv2d_49_bias:7
)assignvariableop_34_normalization_20_mean:;
-assignvariableop_35_normalization_20_variance:4
*assignvariableop_36_normalization_20_count:	 >
$assignvariableop_37_conv2d_50_kernel: 0
"assignvariableop_38_conv2d_50_bias: >
$assignvariableop_39_conv2d_51_kernel: 0
"assignvariableop_40_conv2d_51_bias:>
$assignvariableop_41_conv2d_52_kernel:0
"assignvariableop_42_conv2d_52_bias:>
$assignvariableop_43_conv2d_53_kernel:0
"assignvariableop_44_conv2d_53_bias:7
)assignvariableop_45_normalization_21_mean:;
-assignvariableop_46_normalization_21_variance:4
*assignvariableop_47_normalization_21_count:	 4
"assignvariableop_48_dense_5_kernel: @.
 assignvariableop_49_dense_5_bias:@4
"assignvariableop_50_dense_6_kernel:@ .
 assignvariableop_51_dense_6_bias: 4
"assignvariableop_52_dense_7_kernel: 0.
 assignvariableop_53_dense_7_bias:04
"assignvariableop_54_dense_8_kernel:0 .
 assignvariableop_55_dense_8_bias: 4
"assignvariableop_56_dense_9_kernel: .
 assignvariableop_57_dense_9_bias:5
#assignvariableop_58_dense_10_kernel:/
!assignvariableop_59_dense_10_bias:+
!assignvariableop_60_adadelta_iter:	 ,
"assignvariableop_61_adadelta_decay: 4
*assignvariableop_62_adadelta_learning_rate: *
 assignvariableop_63_adadelta_rho: #
assignvariableop_64_total: #
assignvariableop_65_count: 0
"assignvariableop_66_true_positives:1
#assignvariableop_67_false_positives:2
$assignvariableop_68_true_positives_1:1
#assignvariableop_69_false_negatives:%
assignvariableop_70_total_1: %
assignvariableop_71_count_1: R
8assignvariableop_72_adadelta_conv2d_39_kernel_accum_grad: D
6assignvariableop_73_adadelta_conv2d_39_bias_accum_grad: R
8assignvariableop_74_adadelta_conv2d_40_kernel_accum_grad: D
6assignvariableop_75_adadelta_conv2d_40_bias_accum_grad:R
8assignvariableop_76_adadelta_conv2d_41_kernel_accum_grad:D
6assignvariableop_77_adadelta_conv2d_41_bias_accum_grad:R
8assignvariableop_78_adadelta_conv2d_42_kernel_accum_grad:D
6assignvariableop_79_adadelta_conv2d_42_bias_accum_grad:R
8assignvariableop_80_adadelta_conv2d_43_kernel_accum_grad:D
6assignvariableop_81_adadelta_conv2d_43_bias_accum_grad:R
8assignvariableop_82_adadelta_conv2d_44_kernel_accum_grad:D
6assignvariableop_83_adadelta_conv2d_44_bias_accum_grad:R
8assignvariableop_84_adadelta_conv2d_45_kernel_accum_grad:D
6assignvariableop_85_adadelta_conv2d_45_bias_accum_grad:R
8assignvariableop_86_adadelta_conv2d_46_kernel_accum_grad:D
6assignvariableop_87_adadelta_conv2d_46_bias_accum_grad:R
8assignvariableop_88_adadelta_conv2d_47_kernel_accum_grad:D
6assignvariableop_89_adadelta_conv2d_47_bias_accum_grad:R
8assignvariableop_90_adadelta_conv2d_48_kernel_accum_grad:D
6assignvariableop_91_adadelta_conv2d_48_bias_accum_grad:R
8assignvariableop_92_adadelta_conv2d_49_kernel_accum_grad:D
6assignvariableop_93_adadelta_conv2d_49_bias_accum_grad:R
8assignvariableop_94_adadelta_conv2d_50_kernel_accum_grad: D
6assignvariableop_95_adadelta_conv2d_50_bias_accum_grad: R
8assignvariableop_96_adadelta_conv2d_51_kernel_accum_grad: D
6assignvariableop_97_adadelta_conv2d_51_bias_accum_grad:R
8assignvariableop_98_adadelta_conv2d_52_kernel_accum_grad:D
6assignvariableop_99_adadelta_conv2d_52_bias_accum_grad:S
9assignvariableop_100_adadelta_conv2d_53_kernel_accum_grad:E
7assignvariableop_101_adadelta_conv2d_53_bias_accum_grad:I
7assignvariableop_102_adadelta_dense_5_kernel_accum_grad: @C
5assignvariableop_103_adadelta_dense_5_bias_accum_grad:@I
7assignvariableop_104_adadelta_dense_6_kernel_accum_grad:@ C
5assignvariableop_105_adadelta_dense_6_bias_accum_grad: I
7assignvariableop_106_adadelta_dense_7_kernel_accum_grad: 0C
5assignvariableop_107_adadelta_dense_7_bias_accum_grad:0I
7assignvariableop_108_adadelta_dense_8_kernel_accum_grad:0 C
5assignvariableop_109_adadelta_dense_8_bias_accum_grad: I
7assignvariableop_110_adadelta_dense_9_kernel_accum_grad: C
5assignvariableop_111_adadelta_dense_9_bias_accum_grad:J
8assignvariableop_112_adadelta_dense_10_kernel_accum_grad:D
6assignvariableop_113_adadelta_dense_10_bias_accum_grad:R
8assignvariableop_114_adadelta_conv2d_39_kernel_accum_var: D
6assignvariableop_115_adadelta_conv2d_39_bias_accum_var: R
8assignvariableop_116_adadelta_conv2d_40_kernel_accum_var: D
6assignvariableop_117_adadelta_conv2d_40_bias_accum_var:R
8assignvariableop_118_adadelta_conv2d_41_kernel_accum_var:D
6assignvariableop_119_adadelta_conv2d_41_bias_accum_var:R
8assignvariableop_120_adadelta_conv2d_42_kernel_accum_var:D
6assignvariableop_121_adadelta_conv2d_42_bias_accum_var:R
8assignvariableop_122_adadelta_conv2d_43_kernel_accum_var:D
6assignvariableop_123_adadelta_conv2d_43_bias_accum_var:R
8assignvariableop_124_adadelta_conv2d_44_kernel_accum_var:D
6assignvariableop_125_adadelta_conv2d_44_bias_accum_var:R
8assignvariableop_126_adadelta_conv2d_45_kernel_accum_var:D
6assignvariableop_127_adadelta_conv2d_45_bias_accum_var:R
8assignvariableop_128_adadelta_conv2d_46_kernel_accum_var:D
6assignvariableop_129_adadelta_conv2d_46_bias_accum_var:R
8assignvariableop_130_adadelta_conv2d_47_kernel_accum_var:D
6assignvariableop_131_adadelta_conv2d_47_bias_accum_var:R
8assignvariableop_132_adadelta_conv2d_48_kernel_accum_var:D
6assignvariableop_133_adadelta_conv2d_48_bias_accum_var:R
8assignvariableop_134_adadelta_conv2d_49_kernel_accum_var:D
6assignvariableop_135_adadelta_conv2d_49_bias_accum_var:R
8assignvariableop_136_adadelta_conv2d_50_kernel_accum_var: D
6assignvariableop_137_adadelta_conv2d_50_bias_accum_var: R
8assignvariableop_138_adadelta_conv2d_51_kernel_accum_var: D
6assignvariableop_139_adadelta_conv2d_51_bias_accum_var:R
8assignvariableop_140_adadelta_conv2d_52_kernel_accum_var:D
6assignvariableop_141_adadelta_conv2d_52_bias_accum_var:R
8assignvariableop_142_adadelta_conv2d_53_kernel_accum_var:D
6assignvariableop_143_adadelta_conv2d_53_bias_accum_var:H
6assignvariableop_144_adadelta_dense_5_kernel_accum_var: @B
4assignvariableop_145_adadelta_dense_5_bias_accum_var:@H
6assignvariableop_146_adadelta_dense_6_kernel_accum_var:@ B
4assignvariableop_147_adadelta_dense_6_bias_accum_var: H
6assignvariableop_148_adadelta_dense_7_kernel_accum_var: 0B
4assignvariableop_149_adadelta_dense_7_bias_accum_var:0H
6assignvariableop_150_adadelta_dense_8_kernel_accum_var:0 B
4assignvariableop_151_adadelta_dense_8_bias_accum_var: H
6assignvariableop_152_adadelta_dense_9_kernel_accum_var: B
4assignvariableop_153_adadelta_dense_9_bias_accum_var:I
7assignvariableop_154_adadelta_dense_10_kernel_accum_var:C
5assignvariableop_155_adadelta_dense_10_bias_accum_var:
identity_157??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_100?AssignVariableOp_101?AssignVariableOp_102?AssignVariableOp_103?AssignVariableOp_104?AssignVariableOp_105?AssignVariableOp_106?AssignVariableOp_107?AssignVariableOp_108?AssignVariableOp_109?AssignVariableOp_11?AssignVariableOp_110?AssignVariableOp_111?AssignVariableOp_112?AssignVariableOp_113?AssignVariableOp_114?AssignVariableOp_115?AssignVariableOp_116?AssignVariableOp_117?AssignVariableOp_118?AssignVariableOp_119?AssignVariableOp_12?AssignVariableOp_120?AssignVariableOp_121?AssignVariableOp_122?AssignVariableOp_123?AssignVariableOp_124?AssignVariableOp_125?AssignVariableOp_126?AssignVariableOp_127?AssignVariableOp_128?AssignVariableOp_129?AssignVariableOp_13?AssignVariableOp_130?AssignVariableOp_131?AssignVariableOp_132?AssignVariableOp_133?AssignVariableOp_134?AssignVariableOp_135?AssignVariableOp_136?AssignVariableOp_137?AssignVariableOp_138?AssignVariableOp_139?AssignVariableOp_14?AssignVariableOp_140?AssignVariableOp_141?AssignVariableOp_142?AssignVariableOp_143?AssignVariableOp_144?AssignVariableOp_145?AssignVariableOp_146?AssignVariableOp_147?AssignVariableOp_148?AssignVariableOp_149?AssignVariableOp_15?AssignVariableOp_150?AssignVariableOp_151?AssignVariableOp_152?AssignVariableOp_153?AssignVariableOp_154?AssignVariableOp_155?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_61?AssignVariableOp_62?AssignVariableOp_63?AssignVariableOp_64?AssignVariableOp_65?AssignVariableOp_66?AssignVariableOp_67?AssignVariableOp_68?AssignVariableOp_69?AssignVariableOp_7?AssignVariableOp_70?AssignVariableOp_71?AssignVariableOp_72?AssignVariableOp_73?AssignVariableOp_74?AssignVariableOp_75?AssignVariableOp_76?AssignVariableOp_77?AssignVariableOp_78?AssignVariableOp_79?AssignVariableOp_8?AssignVariableOp_80?AssignVariableOp_81?AssignVariableOp_82?AssignVariableOp_83?AssignVariableOp_84?AssignVariableOp_85?AssignVariableOp_86?AssignVariableOp_87?AssignVariableOp_88?AssignVariableOp_89?AssignVariableOp_9?AssignVariableOp_90?AssignVariableOp_91?AssignVariableOp_92?AssignVariableOp_93?AssignVariableOp_94?AssignVariableOp_95?AssignVariableOp_96?AssignVariableOp_97?AssignVariableOp_98?AssignVariableOp_99?\
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes	
:?*
dtype0*?\
value?\B?\?B4layer_with_weights-0/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-0/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-0/count/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-3/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/count/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-7/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/count/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/mean/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-11/variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-11/count/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/mean/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-15/variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-15/count/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-17/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-17/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-19/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-19/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-20/mean/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-20/variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-20/count/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-21/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-21/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-22/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-22/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-23/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-23/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-24/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-24/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-25/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-25/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-26/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-26/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/1/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/1/false_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-21/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-21/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-22/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-22/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-23/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-23/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-24/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-24/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-25/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-25/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-26/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-26/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-21/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-21/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-22/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-22/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-23/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-23/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-24/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-24/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-25/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-25/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-26/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-26/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:?*
dtype0*?
value?B??B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*?
dtypes?
?2?							[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp&assignvariableop_normalization_16_meanIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp,assignvariableop_1_normalization_16_varianceIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp)assignvariableop_2_normalization_16_countIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp#assignvariableop_3_conv2d_39_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp!assignvariableop_4_conv2d_39_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp#assignvariableop_5_conv2d_40_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp!assignvariableop_6_conv2d_40_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp(assignvariableop_7_normalization_17_meanIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp,assignvariableop_8_normalization_17_varianceIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp)assignvariableop_9_normalization_17_countIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp$assignvariableop_10_conv2d_41_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp"assignvariableop_11_conv2d_41_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp$assignvariableop_12_conv2d_42_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp"assignvariableop_13_conv2d_42_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp$assignvariableop_14_conv2d_43_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp"assignvariableop_15_conv2d_43_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOp)assignvariableop_16_normalization_18_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp-assignvariableop_17_normalization_18_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp*assignvariableop_18_normalization_18_countIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp$assignvariableop_19_conv2d_44_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp"assignvariableop_20_conv2d_44_biasIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp$assignvariableop_21_conv2d_45_kernelIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp"assignvariableop_22_conv2d_45_biasIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp$assignvariableop_23_conv2d_46_kernelIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp"assignvariableop_24_conv2d_46_biasIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp)assignvariableop_25_normalization_19_meanIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp-assignvariableop_26_normalization_19_varianceIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_27AssignVariableOp*assignvariableop_27_normalization_19_countIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp$assignvariableop_28_conv2d_47_kernelIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp"assignvariableop_29_conv2d_47_biasIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp$assignvariableop_30_conv2d_48_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp"assignvariableop_31_conv2d_48_biasIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOp$assignvariableop_32_conv2d_49_kernelIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp"assignvariableop_33_conv2d_49_biasIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp)assignvariableop_34_normalization_20_meanIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOp-assignvariableop_35_normalization_20_varianceIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp*assignvariableop_36_normalization_20_countIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp$assignvariableop_37_conv2d_50_kernelIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOp"assignvariableop_38_conv2d_50_biasIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp$assignvariableop_39_conv2d_51_kernelIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_40AssignVariableOp"assignvariableop_40_conv2d_51_biasIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_41AssignVariableOp$assignvariableop_41_conv2d_52_kernelIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_42AssignVariableOp"assignvariableop_42_conv2d_52_biasIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_43AssignVariableOp$assignvariableop_43_conv2d_53_kernelIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_44AssignVariableOp"assignvariableop_44_conv2d_53_biasIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_45AssignVariableOp)assignvariableop_45_normalization_21_meanIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_46AssignVariableOp-assignvariableop_46_normalization_21_varianceIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_47AssignVariableOp*assignvariableop_47_normalization_21_countIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_48AssignVariableOp"assignvariableop_48_dense_5_kernelIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_49AssignVariableOp assignvariableop_49_dense_5_biasIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_50AssignVariableOp"assignvariableop_50_dense_6_kernelIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_51AssignVariableOp assignvariableop_51_dense_6_biasIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_52AssignVariableOp"assignvariableop_52_dense_7_kernelIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_53AssignVariableOp assignvariableop_53_dense_7_biasIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_54AssignVariableOp"assignvariableop_54_dense_8_kernelIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_55AssignVariableOp assignvariableop_55_dense_8_biasIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_56AssignVariableOp"assignvariableop_56_dense_9_kernelIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_57AssignVariableOp assignvariableop_57_dense_9_biasIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_58AssignVariableOp#assignvariableop_58_dense_10_kernelIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_59AssignVariableOp!assignvariableop_59_dense_10_biasIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_60AssignVariableOp!assignvariableop_60_adadelta_iterIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_61AssignVariableOp"assignvariableop_61_adadelta_decayIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_62AssignVariableOp*assignvariableop_62_adadelta_learning_rateIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_63AssignVariableOp assignvariableop_63_adadelta_rhoIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_64AssignVariableOpassignvariableop_64_totalIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_65AssignVariableOpassignvariableop_65_countIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_66AssignVariableOp"assignvariableop_66_true_positivesIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_67AssignVariableOp#assignvariableop_67_false_positivesIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_68AssignVariableOp$assignvariableop_68_true_positives_1Identity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_69AssignVariableOp#assignvariableop_69_false_negativesIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_70AssignVariableOpassignvariableop_70_total_1Identity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_71AssignVariableOpassignvariableop_71_count_1Identity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_72AssignVariableOp8assignvariableop_72_adadelta_conv2d_39_kernel_accum_gradIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_73AssignVariableOp6assignvariableop_73_adadelta_conv2d_39_bias_accum_gradIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_74AssignVariableOp8assignvariableop_74_adadelta_conv2d_40_kernel_accum_gradIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_75AssignVariableOp6assignvariableop_75_adadelta_conv2d_40_bias_accum_gradIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_76AssignVariableOp8assignvariableop_76_adadelta_conv2d_41_kernel_accum_gradIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_77AssignVariableOp6assignvariableop_77_adadelta_conv2d_41_bias_accum_gradIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_78AssignVariableOp8assignvariableop_78_adadelta_conv2d_42_kernel_accum_gradIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_79AssignVariableOp6assignvariableop_79_adadelta_conv2d_42_bias_accum_gradIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_80AssignVariableOp8assignvariableop_80_adadelta_conv2d_43_kernel_accum_gradIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_81AssignVariableOp6assignvariableop_81_adadelta_conv2d_43_bias_accum_gradIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_82AssignVariableOp8assignvariableop_82_adadelta_conv2d_44_kernel_accum_gradIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_83AssignVariableOp6assignvariableop_83_adadelta_conv2d_44_bias_accum_gradIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_84AssignVariableOp8assignvariableop_84_adadelta_conv2d_45_kernel_accum_gradIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_85AssignVariableOp6assignvariableop_85_adadelta_conv2d_45_bias_accum_gradIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_86AssignVariableOp8assignvariableop_86_adadelta_conv2d_46_kernel_accum_gradIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_87AssignVariableOp6assignvariableop_87_adadelta_conv2d_46_bias_accum_gradIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_88AssignVariableOp8assignvariableop_88_adadelta_conv2d_47_kernel_accum_gradIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_89AssignVariableOp6assignvariableop_89_adadelta_conv2d_47_bias_accum_gradIdentity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_90AssignVariableOp8assignvariableop_90_adadelta_conv2d_48_kernel_accum_gradIdentity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_91AssignVariableOp6assignvariableop_91_adadelta_conv2d_48_bias_accum_gradIdentity_91:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_92AssignVariableOp8assignvariableop_92_adadelta_conv2d_49_kernel_accum_gradIdentity_92:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_93AssignVariableOp6assignvariableop_93_adadelta_conv2d_49_bias_accum_gradIdentity_93:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_94AssignVariableOp8assignvariableop_94_adadelta_conv2d_50_kernel_accum_gradIdentity_94:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_95AssignVariableOp6assignvariableop_95_adadelta_conv2d_50_bias_accum_gradIdentity_95:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_96AssignVariableOp8assignvariableop_96_adadelta_conv2d_51_kernel_accum_gradIdentity_96:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_97AssignVariableOp6assignvariableop_97_adadelta_conv2d_51_bias_accum_gradIdentity_97:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_98AssignVariableOp8assignvariableop_98_adadelta_conv2d_52_kernel_accum_gradIdentity_98:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_99IdentityRestoreV2:tensors:99"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_99AssignVariableOp6assignvariableop_99_adadelta_conv2d_52_bias_accum_gradIdentity_99:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_100IdentityRestoreV2:tensors:100"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_100AssignVariableOp9assignvariableop_100_adadelta_conv2d_53_kernel_accum_gradIdentity_100:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_101IdentityRestoreV2:tensors:101"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_101AssignVariableOp7assignvariableop_101_adadelta_conv2d_53_bias_accum_gradIdentity_101:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_102IdentityRestoreV2:tensors:102"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_102AssignVariableOp7assignvariableop_102_adadelta_dense_5_kernel_accum_gradIdentity_102:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_103IdentityRestoreV2:tensors:103"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_103AssignVariableOp5assignvariableop_103_adadelta_dense_5_bias_accum_gradIdentity_103:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_104IdentityRestoreV2:tensors:104"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_104AssignVariableOp7assignvariableop_104_adadelta_dense_6_kernel_accum_gradIdentity_104:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_105IdentityRestoreV2:tensors:105"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_105AssignVariableOp5assignvariableop_105_adadelta_dense_6_bias_accum_gradIdentity_105:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_106IdentityRestoreV2:tensors:106"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_106AssignVariableOp7assignvariableop_106_adadelta_dense_7_kernel_accum_gradIdentity_106:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_107IdentityRestoreV2:tensors:107"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_107AssignVariableOp5assignvariableop_107_adadelta_dense_7_bias_accum_gradIdentity_107:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_108IdentityRestoreV2:tensors:108"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_108AssignVariableOp7assignvariableop_108_adadelta_dense_8_kernel_accum_gradIdentity_108:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_109IdentityRestoreV2:tensors:109"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_109AssignVariableOp5assignvariableop_109_adadelta_dense_8_bias_accum_gradIdentity_109:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_110IdentityRestoreV2:tensors:110"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_110AssignVariableOp7assignvariableop_110_adadelta_dense_9_kernel_accum_gradIdentity_110:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_111IdentityRestoreV2:tensors:111"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_111AssignVariableOp5assignvariableop_111_adadelta_dense_9_bias_accum_gradIdentity_111:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_112IdentityRestoreV2:tensors:112"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_112AssignVariableOp8assignvariableop_112_adadelta_dense_10_kernel_accum_gradIdentity_112:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_113IdentityRestoreV2:tensors:113"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_113AssignVariableOp6assignvariableop_113_adadelta_dense_10_bias_accum_gradIdentity_113:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_114IdentityRestoreV2:tensors:114"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_114AssignVariableOp8assignvariableop_114_adadelta_conv2d_39_kernel_accum_varIdentity_114:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_115IdentityRestoreV2:tensors:115"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_115AssignVariableOp6assignvariableop_115_adadelta_conv2d_39_bias_accum_varIdentity_115:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_116IdentityRestoreV2:tensors:116"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_116AssignVariableOp8assignvariableop_116_adadelta_conv2d_40_kernel_accum_varIdentity_116:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_117IdentityRestoreV2:tensors:117"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_117AssignVariableOp6assignvariableop_117_adadelta_conv2d_40_bias_accum_varIdentity_117:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_118IdentityRestoreV2:tensors:118"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_118AssignVariableOp8assignvariableop_118_adadelta_conv2d_41_kernel_accum_varIdentity_118:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_119IdentityRestoreV2:tensors:119"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_119AssignVariableOp6assignvariableop_119_adadelta_conv2d_41_bias_accum_varIdentity_119:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_120IdentityRestoreV2:tensors:120"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_120AssignVariableOp8assignvariableop_120_adadelta_conv2d_42_kernel_accum_varIdentity_120:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_121IdentityRestoreV2:tensors:121"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_121AssignVariableOp6assignvariableop_121_adadelta_conv2d_42_bias_accum_varIdentity_121:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_122IdentityRestoreV2:tensors:122"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_122AssignVariableOp8assignvariableop_122_adadelta_conv2d_43_kernel_accum_varIdentity_122:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_123IdentityRestoreV2:tensors:123"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_123AssignVariableOp6assignvariableop_123_adadelta_conv2d_43_bias_accum_varIdentity_123:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_124IdentityRestoreV2:tensors:124"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_124AssignVariableOp8assignvariableop_124_adadelta_conv2d_44_kernel_accum_varIdentity_124:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_125IdentityRestoreV2:tensors:125"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_125AssignVariableOp6assignvariableop_125_adadelta_conv2d_44_bias_accum_varIdentity_125:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_126IdentityRestoreV2:tensors:126"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_126AssignVariableOp8assignvariableop_126_adadelta_conv2d_45_kernel_accum_varIdentity_126:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_127IdentityRestoreV2:tensors:127"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_127AssignVariableOp6assignvariableop_127_adadelta_conv2d_45_bias_accum_varIdentity_127:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_128IdentityRestoreV2:tensors:128"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_128AssignVariableOp8assignvariableop_128_adadelta_conv2d_46_kernel_accum_varIdentity_128:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_129IdentityRestoreV2:tensors:129"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_129AssignVariableOp6assignvariableop_129_adadelta_conv2d_46_bias_accum_varIdentity_129:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_130IdentityRestoreV2:tensors:130"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_130AssignVariableOp8assignvariableop_130_adadelta_conv2d_47_kernel_accum_varIdentity_130:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_131IdentityRestoreV2:tensors:131"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_131AssignVariableOp6assignvariableop_131_adadelta_conv2d_47_bias_accum_varIdentity_131:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_132IdentityRestoreV2:tensors:132"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_132AssignVariableOp8assignvariableop_132_adadelta_conv2d_48_kernel_accum_varIdentity_132:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_133IdentityRestoreV2:tensors:133"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_133AssignVariableOp6assignvariableop_133_adadelta_conv2d_48_bias_accum_varIdentity_133:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_134IdentityRestoreV2:tensors:134"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_134AssignVariableOp8assignvariableop_134_adadelta_conv2d_49_kernel_accum_varIdentity_134:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_135IdentityRestoreV2:tensors:135"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_135AssignVariableOp6assignvariableop_135_adadelta_conv2d_49_bias_accum_varIdentity_135:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_136IdentityRestoreV2:tensors:136"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_136AssignVariableOp8assignvariableop_136_adadelta_conv2d_50_kernel_accum_varIdentity_136:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_137IdentityRestoreV2:tensors:137"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_137AssignVariableOp6assignvariableop_137_adadelta_conv2d_50_bias_accum_varIdentity_137:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_138IdentityRestoreV2:tensors:138"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_138AssignVariableOp8assignvariableop_138_adadelta_conv2d_51_kernel_accum_varIdentity_138:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_139IdentityRestoreV2:tensors:139"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_139AssignVariableOp6assignvariableop_139_adadelta_conv2d_51_bias_accum_varIdentity_139:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_140IdentityRestoreV2:tensors:140"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_140AssignVariableOp8assignvariableop_140_adadelta_conv2d_52_kernel_accum_varIdentity_140:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_141IdentityRestoreV2:tensors:141"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_141AssignVariableOp6assignvariableop_141_adadelta_conv2d_52_bias_accum_varIdentity_141:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_142IdentityRestoreV2:tensors:142"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_142AssignVariableOp8assignvariableop_142_adadelta_conv2d_53_kernel_accum_varIdentity_142:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_143IdentityRestoreV2:tensors:143"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_143AssignVariableOp6assignvariableop_143_adadelta_conv2d_53_bias_accum_varIdentity_143:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_144IdentityRestoreV2:tensors:144"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_144AssignVariableOp6assignvariableop_144_adadelta_dense_5_kernel_accum_varIdentity_144:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_145IdentityRestoreV2:tensors:145"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_145AssignVariableOp4assignvariableop_145_adadelta_dense_5_bias_accum_varIdentity_145:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_146IdentityRestoreV2:tensors:146"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_146AssignVariableOp6assignvariableop_146_adadelta_dense_6_kernel_accum_varIdentity_146:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_147IdentityRestoreV2:tensors:147"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_147AssignVariableOp4assignvariableop_147_adadelta_dense_6_bias_accum_varIdentity_147:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_148IdentityRestoreV2:tensors:148"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_148AssignVariableOp6assignvariableop_148_adadelta_dense_7_kernel_accum_varIdentity_148:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_149IdentityRestoreV2:tensors:149"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_149AssignVariableOp4assignvariableop_149_adadelta_dense_7_bias_accum_varIdentity_149:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_150IdentityRestoreV2:tensors:150"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_150AssignVariableOp6assignvariableop_150_adadelta_dense_8_kernel_accum_varIdentity_150:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_151IdentityRestoreV2:tensors:151"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_151AssignVariableOp4assignvariableop_151_adadelta_dense_8_bias_accum_varIdentity_151:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_152IdentityRestoreV2:tensors:152"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_152AssignVariableOp6assignvariableop_152_adadelta_dense_9_kernel_accum_varIdentity_152:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_153IdentityRestoreV2:tensors:153"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_153AssignVariableOp4assignvariableop_153_adadelta_dense_9_bias_accum_varIdentity_153:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_154IdentityRestoreV2:tensors:154"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_154AssignVariableOp7assignvariableop_154_adadelta_dense_10_kernel_accum_varIdentity_154:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_155IdentityRestoreV2:tensors:155"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_155AssignVariableOp5assignvariableop_155_adadelta_dense_10_bias_accum_varIdentity_155:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_156Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_124^AssignVariableOp_125^AssignVariableOp_126^AssignVariableOp_127^AssignVariableOp_128^AssignVariableOp_129^AssignVariableOp_13^AssignVariableOp_130^AssignVariableOp_131^AssignVariableOp_132^AssignVariableOp_133^AssignVariableOp_134^AssignVariableOp_135^AssignVariableOp_136^AssignVariableOp_137^AssignVariableOp_138^AssignVariableOp_139^AssignVariableOp_14^AssignVariableOp_140^AssignVariableOp_141^AssignVariableOp_142^AssignVariableOp_143^AssignVariableOp_144^AssignVariableOp_145^AssignVariableOp_146^AssignVariableOp_147^AssignVariableOp_148^AssignVariableOp_149^AssignVariableOp_15^AssignVariableOp_150^AssignVariableOp_151^AssignVariableOp_152^AssignVariableOp_153^AssignVariableOp_154^AssignVariableOp_155^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99^NoOp"/device:CPU:0*
T0*
_output_shapes
: Y
Identity_157IdentityIdentity_156:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_124^AssignVariableOp_125^AssignVariableOp_126^AssignVariableOp_127^AssignVariableOp_128^AssignVariableOp_129^AssignVariableOp_13^AssignVariableOp_130^AssignVariableOp_131^AssignVariableOp_132^AssignVariableOp_133^AssignVariableOp_134^AssignVariableOp_135^AssignVariableOp_136^AssignVariableOp_137^AssignVariableOp_138^AssignVariableOp_139^AssignVariableOp_14^AssignVariableOp_140^AssignVariableOp_141^AssignVariableOp_142^AssignVariableOp_143^AssignVariableOp_144^AssignVariableOp_145^AssignVariableOp_146^AssignVariableOp_147^AssignVariableOp_148^AssignVariableOp_149^AssignVariableOp_15^AssignVariableOp_150^AssignVariableOp_151^AssignVariableOp_152^AssignVariableOp_153^AssignVariableOp_154^AssignVariableOp_155^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99*"
_acd_function_control_output(*
_output_shapes
 "%
identity_157Identity_157:output:0*?
_input_shapes?
?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_124AssignVariableOp_1242,
AssignVariableOp_125AssignVariableOp_1252,
AssignVariableOp_126AssignVariableOp_1262,
AssignVariableOp_127AssignVariableOp_1272,
AssignVariableOp_128AssignVariableOp_1282,
AssignVariableOp_129AssignVariableOp_1292*
AssignVariableOp_13AssignVariableOp_132,
AssignVariableOp_130AssignVariableOp_1302,
AssignVariableOp_131AssignVariableOp_1312,
AssignVariableOp_132AssignVariableOp_1322,
AssignVariableOp_133AssignVariableOp_1332,
AssignVariableOp_134AssignVariableOp_1342,
AssignVariableOp_135AssignVariableOp_1352,
AssignVariableOp_136AssignVariableOp_1362,
AssignVariableOp_137AssignVariableOp_1372,
AssignVariableOp_138AssignVariableOp_1382,
AssignVariableOp_139AssignVariableOp_1392*
AssignVariableOp_14AssignVariableOp_142,
AssignVariableOp_140AssignVariableOp_1402,
AssignVariableOp_141AssignVariableOp_1412,
AssignVariableOp_142AssignVariableOp_1422,
AssignVariableOp_143AssignVariableOp_1432,
AssignVariableOp_144AssignVariableOp_1442,
AssignVariableOp_145AssignVariableOp_1452,
AssignVariableOp_146AssignVariableOp_1462,
AssignVariableOp_147AssignVariableOp_1472,
AssignVariableOp_148AssignVariableOp_1482,
AssignVariableOp_149AssignVariableOp_1492*
AssignVariableOp_15AssignVariableOp_152,
AssignVariableOp_150AssignVariableOp_1502,
AssignVariableOp_151AssignVariableOp_1512,
AssignVariableOp_152AssignVariableOp_1522,
AssignVariableOp_153AssignVariableOp_1532,
AssignVariableOp_154AssignVariableOp_1542,
AssignVariableOp_155AssignVariableOp_1552*
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
??
?
I__inference_sequential_2_layer_call_and_return_conditional_losses_1813592

inputs
normalization_16_sub_y
normalization_16_sqrt_x+
conv2d_39_1813203: 
conv2d_39_1813205: +
conv2d_40_1813219: 
conv2d_40_1813221:
normalization_17_sub_y
normalization_17_sqrt_x+
conv2d_41_1813242:
conv2d_41_1813244:+
conv2d_42_1813266:
conv2d_42_1813268:+
conv2d_43_1813282:
conv2d_43_1813284:
normalization_18_sub_y
normalization_18_sqrt_x+
conv2d_44_1813305:
conv2d_44_1813307:+
conv2d_45_1813329:
conv2d_45_1813331:+
conv2d_46_1813345:
conv2d_46_1813347:
normalization_19_sub_y
normalization_19_sqrt_x+
conv2d_47_1813368:
conv2d_47_1813370:+
conv2d_48_1813385:
conv2d_48_1813387:+
conv2d_49_1813401:
conv2d_49_1813403:
normalization_20_sub_y
normalization_20_sqrt_x+
conv2d_50_1813425: 
conv2d_50_1813427: +
conv2d_51_1813441: 
conv2d_51_1813443:+
conv2d_52_1813458:
conv2d_52_1813460:+
conv2d_53_1813474:
conv2d_53_1813476:
normalization_21_sub_y
normalization_21_sqrt_x!
dense_5_1813505: @
dense_5_1813507:@!
dense_6_1813521:@ 
dense_6_1813523: !
dense_7_1813537: 0
dense_7_1813539:0!
dense_8_1813553:0 
dense_8_1813555: !
dense_9_1813569: 
dense_9_1813571:"
dense_10_1813586:
dense_10_1813588:
identity??!conv2d_39/StatefulPartitionedCall?!conv2d_40/StatefulPartitionedCall?!conv2d_41/StatefulPartitionedCall?!conv2d_42/StatefulPartitionedCall?!conv2d_43/StatefulPartitionedCall?!conv2d_44/StatefulPartitionedCall?!conv2d_45/StatefulPartitionedCall?!conv2d_46/StatefulPartitionedCall?!conv2d_47/StatefulPartitionedCall?!conv2d_48/StatefulPartitionedCall?!conv2d_49/StatefulPartitionedCall?!conv2d_50/StatefulPartitionedCall?!conv2d_51/StatefulPartitionedCall?!conv2d_52/StatefulPartitionedCall?!conv2d_53/StatefulPartitionedCall? dense_10/StatefulPartitionedCall?dense_5/StatefulPartitionedCall?dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?dense_8/StatefulPartitionedCall?dense_9/StatefulPartitionedCallw
normalization_16/subSubinputsnormalization_16_sub_y*
T0*1
_output_shapes
:???????????g
normalization_16/SqrtSqrtnormalization_16_sqrt_x*
T0*&
_output_shapes
:_
normalization_16/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_16/MaximumMaximumnormalization_16/Sqrt:y:0#normalization_16/Maximum/y:output:0*
T0*&
_output_shapes
:?
normalization_16/truedivRealDivnormalization_16/sub:z:0normalization_16/Maximum:z:0*
T0*1
_output_shapes
:????????????
!conv2d_39/StatefulPartitionedCallStatefulPartitionedCallnormalization_16/truediv:z:0conv2d_39_1813203conv2d_39_1813205*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_39_layer_call_and_return_conditional_losses_1813202?
!conv2d_40/StatefulPartitionedCallStatefulPartitionedCall*conv2d_39/StatefulPartitionedCall:output:0conv2d_40_1813219conv2d_40_1813221*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_40_layer_call_and_return_conditional_losses_1813218?
normalization_17/subSub*conv2d_40/StatefulPartitionedCall:output:0normalization_17_sub_y*
T0*1
_output_shapes
:???????????g
normalization_17/SqrtSqrtnormalization_17_sqrt_x*
T0*&
_output_shapes
:_
normalization_17/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_17/MaximumMaximumnormalization_17/Sqrt:y:0#normalization_17/Maximum/y:output:0*
T0*&
_output_shapes
:?
normalization_17/truedivRealDivnormalization_17/sub:z:0normalization_17/Maximum:z:0*
T0*1
_output_shapes
:????????????
!conv2d_41/StatefulPartitionedCallStatefulPartitionedCallnormalization_17/truediv:z:0conv2d_41_1813242conv2d_41_1813244*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_41_layer_call_and_return_conditional_losses_1813241?
 max_pooling2d_11/PartitionedCallPartitionedCall*conv2d_41/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????mY* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_1813127?
dropout_8/PartitionedCallPartitionedCall)max_pooling2d_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????mY* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_8_layer_call_and_return_conditional_losses_1813253?
!conv2d_42/StatefulPartitionedCallStatefulPartitionedCall"dropout_8/PartitionedCall:output:0conv2d_42_1813266conv2d_42_1813268*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????mY*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_42_layer_call_and_return_conditional_losses_1813265?
!conv2d_43/StatefulPartitionedCallStatefulPartitionedCall*conv2d_42/StatefulPartitionedCall:output:0conv2d_43_1813282conv2d_43_1813284*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????mY*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_43_layer_call_and_return_conditional_losses_1813281?
normalization_18/subSub*conv2d_43/StatefulPartitionedCall:output:0normalization_18_sub_y*
T0*/
_output_shapes
:?????????mYg
normalization_18/SqrtSqrtnormalization_18_sqrt_x*
T0*&
_output_shapes
:_
normalization_18/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_18/MaximumMaximumnormalization_18/Sqrt:y:0#normalization_18/Maximum/y:output:0*
T0*&
_output_shapes
:?
normalization_18/truedivRealDivnormalization_18/sub:z:0normalization_18/Maximum:z:0*
T0*/
_output_shapes
:?????????mY?
!conv2d_44/StatefulPartitionedCallStatefulPartitionedCallnormalization_18/truediv:z:0conv2d_44_1813305conv2d_44_1813307*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????mY*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_44_layer_call_and_return_conditional_losses_1813304?
 max_pooling2d_12/PartitionedCallPartitionedCall*conv2d_44/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????6,* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_1813139?
dropout_9/PartitionedCallPartitionedCall)max_pooling2d_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????6,* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_9_layer_call_and_return_conditional_losses_1813316?
!conv2d_45/StatefulPartitionedCallStatefulPartitionedCall"dropout_9/PartitionedCall:output:0conv2d_45_1813329conv2d_45_1813331*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????6,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_45_layer_call_and_return_conditional_losses_1813328?
!conv2d_46/StatefulPartitionedCallStatefulPartitionedCall*conv2d_45/StatefulPartitionedCall:output:0conv2d_46_1813345conv2d_46_1813347*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????6,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_46_layer_call_and_return_conditional_losses_1813344?
normalization_19/subSub*conv2d_46/StatefulPartitionedCall:output:0normalization_19_sub_y*
T0*/
_output_shapes
:?????????6,g
normalization_19/SqrtSqrtnormalization_19_sqrt_x*
T0*&
_output_shapes
:_
normalization_19/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_19/MaximumMaximumnormalization_19/Sqrt:y:0#normalization_19/Maximum/y:output:0*
T0*&
_output_shapes
:?
normalization_19/truedivRealDivnormalization_19/sub:z:0normalization_19/Maximum:z:0*
T0*/
_output_shapes
:?????????6,?
!conv2d_47/StatefulPartitionedCallStatefulPartitionedCallnormalization_19/truediv:z:0conv2d_47_1813368conv2d_47_1813370*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????6,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_47_layer_call_and_return_conditional_losses_1813367?
 max_pooling2d_13/PartitionedCallPartitionedCall*conv2d_47/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_1813151?
!conv2d_48/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_13/PartitionedCall:output:0conv2d_48_1813385conv2d_48_1813387*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_48_layer_call_and_return_conditional_losses_1813384?
!conv2d_49/StatefulPartitionedCallStatefulPartitionedCall*conv2d_48/StatefulPartitionedCall:output:0conv2d_49_1813401conv2d_49_1813403*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_49_layer_call_and_return_conditional_losses_1813400?
#average_pooling2d_2/PartitionedCallPartitionedCall*conv2d_49/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_average_pooling2d_2_layer_call_and_return_conditional_losses_1813163?
normalization_20/subSub,average_pooling2d_2/PartitionedCall:output:0normalization_20_sub_y*
T0*/
_output_shapes
:?????????g
normalization_20/SqrtSqrtnormalization_20_sqrt_x*
T0*&
_output_shapes
:_
normalization_20/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_20/MaximumMaximumnormalization_20/Sqrt:y:0#normalization_20/Maximum/y:output:0*
T0*&
_output_shapes
:?
normalization_20/truedivRealDivnormalization_20/sub:z:0normalization_20/Maximum:z:0*
T0*/
_output_shapes
:??????????
!conv2d_50/StatefulPartitionedCallStatefulPartitionedCallnormalization_20/truediv:z:0conv2d_50_1813425conv2d_50_1813427*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_50_layer_call_and_return_conditional_losses_1813424?
!conv2d_51/StatefulPartitionedCallStatefulPartitionedCall*conv2d_50/StatefulPartitionedCall:output:0conv2d_51_1813441conv2d_51_1813443*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_51_layer_call_and_return_conditional_losses_1813440?
 max_pooling2d_14/PartitionedCallPartitionedCall*conv2d_51/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_1813175?
!conv2d_52/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_14/PartitionedCall:output:0conv2d_52_1813458conv2d_52_1813460*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_52_layer_call_and_return_conditional_losses_1813457?
!conv2d_53/StatefulPartitionedCallStatefulPartitionedCall*conv2d_52/StatefulPartitionedCall:output:0conv2d_53_1813474conv2d_53_1813476*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_53_layer_call_and_return_conditional_losses_1813473?
normalization_21/subSub*conv2d_53/StatefulPartitionedCall:output:0normalization_21_sub_y*
T0*/
_output_shapes
:?????????g
normalization_21/SqrtSqrtnormalization_21_sqrt_x*
T0*&
_output_shapes
:_
normalization_21/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_21/MaximumMaximumnormalization_21/Sqrt:y:0#normalization_21/Maximum/y:output:0*
T0*&
_output_shapes
:?
normalization_21/truedivRealDivnormalization_21/sub:z:0normalization_21/Maximum:z:0*
T0*/
_output_shapes
:??????????
flatten_1/PartitionedCallPartitionedCallnormalization_21/truediv:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_1_layer_call_and_return_conditional_losses_1813492?
dense_5/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_5_1813505dense_5_1813507*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_5_layer_call_and_return_conditional_losses_1813504?
dense_6/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0dense_6_1813521dense_6_1813523*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_6_layer_call_and_return_conditional_losses_1813520?
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_1813537dense_7_1813539*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_7_layer_call_and_return_conditional_losses_1813536?
dense_8/StatefulPartitionedCallStatefulPartitionedCall(dense_7/StatefulPartitionedCall:output:0dense_8_1813553dense_8_1813555*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_8_layer_call_and_return_conditional_losses_1813552?
dense_9/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0dense_9_1813569dense_9_1813571*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_1813568?
 dense_10/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0dense_10_1813586dense_10_1813588*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_10_layer_call_and_return_conditional_losses_1813585x
IdentityIdentity)dense_10/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv2d_39/StatefulPartitionedCall"^conv2d_40/StatefulPartitionedCall"^conv2d_41/StatefulPartitionedCall"^conv2d_42/StatefulPartitionedCall"^conv2d_43/StatefulPartitionedCall"^conv2d_44/StatefulPartitionedCall"^conv2d_45/StatefulPartitionedCall"^conv2d_46/StatefulPartitionedCall"^conv2d_47/StatefulPartitionedCall"^conv2d_48/StatefulPartitionedCall"^conv2d_49/StatefulPartitionedCall"^conv2d_50/StatefulPartitionedCall"^conv2d_51/StatefulPartitionedCall"^conv2d_52/StatefulPartitionedCall"^conv2d_53/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:???????????::: : : : ::: : : : : : ::: : : : : : ::: : : : : : ::: : : : : : : : ::: : : : : : : : : : : : 2F
!conv2d_39/StatefulPartitionedCall!conv2d_39/StatefulPartitionedCall2F
!conv2d_40/StatefulPartitionedCall!conv2d_40/StatefulPartitionedCall2F
!conv2d_41/StatefulPartitionedCall!conv2d_41/StatefulPartitionedCall2F
!conv2d_42/StatefulPartitionedCall!conv2d_42/StatefulPartitionedCall2F
!conv2d_43/StatefulPartitionedCall!conv2d_43/StatefulPartitionedCall2F
!conv2d_44/StatefulPartitionedCall!conv2d_44/StatefulPartitionedCall2F
!conv2d_45/StatefulPartitionedCall!conv2d_45/StatefulPartitionedCall2F
!conv2d_46/StatefulPartitionedCall!conv2d_46/StatefulPartitionedCall2F
!conv2d_47/StatefulPartitionedCall!conv2d_47/StatefulPartitionedCall2F
!conv2d_48/StatefulPartitionedCall!conv2d_48/StatefulPartitionedCall2F
!conv2d_49/StatefulPartitionedCall!conv2d_49/StatefulPartitionedCall2F
!conv2d_50/StatefulPartitionedCall!conv2d_50/StatefulPartitionedCall2F
!conv2d_51/StatefulPartitionedCall!conv2d_51/StatefulPartitionedCall2F
!conv2d_52/StatefulPartitionedCall!conv2d_52/StatefulPartitionedCall2F
!conv2d_53/StatefulPartitionedCall!conv2d_53/StatefulPartitionedCall2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
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
::,)(
&
_output_shapes
::,*(
&
_output_shapes
:
?
i
M__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_1813127

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
+__inference_conv2d_50_layer_call_fn_1815816

inputs!
unknown: 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_50_layer_call_and_return_conditional_losses_1813424w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
+__inference_conv2d_48_layer_call_fn_1815768

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_48_layer_call_and_return_conditional_losses_1813384w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
.__inference_sequential_2_layer_call_fn_1814463
input_3
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

unknown_30$

unknown_31: 

unknown_32: $

unknown_33: 

unknown_34:$

unknown_35:

unknown_36:$

unknown_37:

unknown_38:

unknown_39

unknown_40

unknown_41: @

unknown_42:@

unknown_43:@ 

unknown_44: 

unknown_45: 0

unknown_46:0

unknown_47:0 

unknown_48: 

unknown_49: 

unknown_50:

unknown_51:

unknown_52:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52*B
Tin;
927*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*L
_read_only_resource_inputs.
,*	
!"#$%&'(+,-./0123456*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_2_layer_call_and_return_conditional_losses_1814239o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:???????????::: : : : ::: : : : : : ::: : : : : : ::: : : : : : ::: : : : : : : : ::: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_3:,(
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
::,)(
&
_output_shapes
::,*(
&
_output_shapes
:
?	
?
D__inference_dense_8_layer_call_and_return_conditional_losses_1813552

inputs0
matmul_readvariableop_resource:0 -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:0 *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????0: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????0
 
_user_specified_nameinputs
?
?
+__inference_conv2d_44_layer_call_fn_1815645

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????mY*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_44_layer_call_and_return_conditional_losses_1813304w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????mY`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????mY: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????mY
 
_user_specified_nameinputs
?
?
+__inference_conv2d_43_layer_call_fn_1815626

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????mY*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_43_layer_call_and_return_conditional_losses_1813281w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????mY`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????mY: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????mY
 
_user_specified_nameinputs
?

?
F__inference_conv2d_40_layer_call_and_return_conditional_losses_1813218

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
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
:???????????i
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:???????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:??????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:??????????? 
 
_user_specified_nameinputs
?

?
F__inference_conv2d_49_layer_call_and_return_conditional_losses_1813400

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????
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
:?????????
g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????
w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????	
 
_user_specified_nameinputs
??
?"
I__inference_sequential_2_layer_call_and_return_conditional_losses_1815193

inputs
normalization_16_sub_y
normalization_16_sqrt_xB
(conv2d_39_conv2d_readvariableop_resource: 7
)conv2d_39_biasadd_readvariableop_resource: B
(conv2d_40_conv2d_readvariableop_resource: 7
)conv2d_40_biasadd_readvariableop_resource:
normalization_17_sub_y
normalization_17_sqrt_xB
(conv2d_41_conv2d_readvariableop_resource:7
)conv2d_41_biasadd_readvariableop_resource:B
(conv2d_42_conv2d_readvariableop_resource:7
)conv2d_42_biasadd_readvariableop_resource:B
(conv2d_43_conv2d_readvariableop_resource:7
)conv2d_43_biasadd_readvariableop_resource:
normalization_18_sub_y
normalization_18_sqrt_xB
(conv2d_44_conv2d_readvariableop_resource:7
)conv2d_44_biasadd_readvariableop_resource:B
(conv2d_45_conv2d_readvariableop_resource:7
)conv2d_45_biasadd_readvariableop_resource:B
(conv2d_46_conv2d_readvariableop_resource:7
)conv2d_46_biasadd_readvariableop_resource:
normalization_19_sub_y
normalization_19_sqrt_xB
(conv2d_47_conv2d_readvariableop_resource:7
)conv2d_47_biasadd_readvariableop_resource:B
(conv2d_48_conv2d_readvariableop_resource:7
)conv2d_48_biasadd_readvariableop_resource:B
(conv2d_49_conv2d_readvariableop_resource:7
)conv2d_49_biasadd_readvariableop_resource:
normalization_20_sub_y
normalization_20_sqrt_xB
(conv2d_50_conv2d_readvariableop_resource: 7
)conv2d_50_biasadd_readvariableop_resource: B
(conv2d_51_conv2d_readvariableop_resource: 7
)conv2d_51_biasadd_readvariableop_resource:B
(conv2d_52_conv2d_readvariableop_resource:7
)conv2d_52_biasadd_readvariableop_resource:B
(conv2d_53_conv2d_readvariableop_resource:7
)conv2d_53_biasadd_readvariableop_resource:
normalization_21_sub_y
normalization_21_sqrt_x8
&dense_5_matmul_readvariableop_resource: @5
'dense_5_biasadd_readvariableop_resource:@8
&dense_6_matmul_readvariableop_resource:@ 5
'dense_6_biasadd_readvariableop_resource: 8
&dense_7_matmul_readvariableop_resource: 05
'dense_7_biasadd_readvariableop_resource:08
&dense_8_matmul_readvariableop_resource:0 5
'dense_8_biasadd_readvariableop_resource: 8
&dense_9_matmul_readvariableop_resource: 5
'dense_9_biasadd_readvariableop_resource:9
'dense_10_matmul_readvariableop_resource:6
(dense_10_biasadd_readvariableop_resource:
identity?? conv2d_39/BiasAdd/ReadVariableOp?conv2d_39/Conv2D/ReadVariableOp? conv2d_40/BiasAdd/ReadVariableOp?conv2d_40/Conv2D/ReadVariableOp? conv2d_41/BiasAdd/ReadVariableOp?conv2d_41/Conv2D/ReadVariableOp? conv2d_42/BiasAdd/ReadVariableOp?conv2d_42/Conv2D/ReadVariableOp? conv2d_43/BiasAdd/ReadVariableOp?conv2d_43/Conv2D/ReadVariableOp? conv2d_44/BiasAdd/ReadVariableOp?conv2d_44/Conv2D/ReadVariableOp? conv2d_45/BiasAdd/ReadVariableOp?conv2d_45/Conv2D/ReadVariableOp? conv2d_46/BiasAdd/ReadVariableOp?conv2d_46/Conv2D/ReadVariableOp? conv2d_47/BiasAdd/ReadVariableOp?conv2d_47/Conv2D/ReadVariableOp? conv2d_48/BiasAdd/ReadVariableOp?conv2d_48/Conv2D/ReadVariableOp? conv2d_49/BiasAdd/ReadVariableOp?conv2d_49/Conv2D/ReadVariableOp? conv2d_50/BiasAdd/ReadVariableOp?conv2d_50/Conv2D/ReadVariableOp? conv2d_51/BiasAdd/ReadVariableOp?conv2d_51/Conv2D/ReadVariableOp? conv2d_52/BiasAdd/ReadVariableOp?conv2d_52/Conv2D/ReadVariableOp? conv2d_53/BiasAdd/ReadVariableOp?conv2d_53/Conv2D/ReadVariableOp?dense_10/BiasAdd/ReadVariableOp?dense_10/MatMul/ReadVariableOp?dense_5/BiasAdd/ReadVariableOp?dense_5/MatMul/ReadVariableOp?dense_6/BiasAdd/ReadVariableOp?dense_6/MatMul/ReadVariableOp?dense_7/BiasAdd/ReadVariableOp?dense_7/MatMul/ReadVariableOp?dense_8/BiasAdd/ReadVariableOp?dense_8/MatMul/ReadVariableOp?dense_9/BiasAdd/ReadVariableOp?dense_9/MatMul/ReadVariableOpw
normalization_16/subSubinputsnormalization_16_sub_y*
T0*1
_output_shapes
:???????????g
normalization_16/SqrtSqrtnormalization_16_sqrt_x*
T0*&
_output_shapes
:_
normalization_16/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_16/MaximumMaximumnormalization_16/Sqrt:y:0#normalization_16/Maximum/y:output:0*
T0*&
_output_shapes
:?
normalization_16/truedivRealDivnormalization_16/sub:z:0normalization_16/Maximum:z:0*
T0*1
_output_shapes
:????????????
conv2d_39/Conv2D/ReadVariableOpReadVariableOp(conv2d_39_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_39/Conv2DConv2Dnormalization_16/truediv:z:0'conv2d_39/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingSAME*
strides
?
 conv2d_39/BiasAdd/ReadVariableOpReadVariableOp)conv2d_39_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_39/BiasAddBiasAddconv2d_39/Conv2D:output:0(conv2d_39/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? ?
conv2d_40/Conv2D/ReadVariableOpReadVariableOp(conv2d_40_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_40/Conv2DConv2Dconv2d_39/BiasAdd:output:0'conv2d_40/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
 conv2d_40/BiasAdd/ReadVariableOpReadVariableOp)conv2d_40_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_40/BiasAddBiasAddconv2d_40/Conv2D:output:0(conv2d_40/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:????????????
normalization_17/subSubconv2d_40/BiasAdd:output:0normalization_17_sub_y*
T0*1
_output_shapes
:???????????g
normalization_17/SqrtSqrtnormalization_17_sqrt_x*
T0*&
_output_shapes
:_
normalization_17/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_17/MaximumMaximumnormalization_17/Sqrt:y:0#normalization_17/Maximum/y:output:0*
T0*&
_output_shapes
:?
normalization_17/truedivRealDivnormalization_17/sub:z:0normalization_17/Maximum:z:0*
T0*1
_output_shapes
:????????????
conv2d_41/Conv2D/ReadVariableOpReadVariableOp(conv2d_41_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_41/Conv2DConv2Dnormalization_17/truediv:z:0'conv2d_41/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
 conv2d_41/BiasAdd/ReadVariableOpReadVariableOp)conv2d_41_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_41/BiasAddBiasAddconv2d_41/Conv2D:output:0(conv2d_41/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:????????????
max_pooling2d_11/MaxPoolMaxPoolconv2d_41/BiasAdd:output:0*/
_output_shapes
:?????????mY*
ksize
*
paddingVALID*
strides
{
dropout_8/IdentityIdentity!max_pooling2d_11/MaxPool:output:0*
T0*/
_output_shapes
:?????????mY?
conv2d_42/Conv2D/ReadVariableOpReadVariableOp(conv2d_42_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_42/Conv2DConv2Ddropout_8/Identity:output:0'conv2d_42/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????mY*
paddingSAME*
strides
?
 conv2d_42/BiasAdd/ReadVariableOpReadVariableOp)conv2d_42_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_42/BiasAddBiasAddconv2d_42/Conv2D:output:0(conv2d_42/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????mY?
conv2d_43/Conv2D/ReadVariableOpReadVariableOp(conv2d_43_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_43/Conv2DConv2Dconv2d_42/BiasAdd:output:0'conv2d_43/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????mY*
paddingSAME*
strides
?
 conv2d_43/BiasAdd/ReadVariableOpReadVariableOp)conv2d_43_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_43/BiasAddBiasAddconv2d_43/Conv2D:output:0(conv2d_43/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????mY?
normalization_18/subSubconv2d_43/BiasAdd:output:0normalization_18_sub_y*
T0*/
_output_shapes
:?????????mYg
normalization_18/SqrtSqrtnormalization_18_sqrt_x*
T0*&
_output_shapes
:_
normalization_18/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_18/MaximumMaximumnormalization_18/Sqrt:y:0#normalization_18/Maximum/y:output:0*
T0*&
_output_shapes
:?
normalization_18/truedivRealDivnormalization_18/sub:z:0normalization_18/Maximum:z:0*
T0*/
_output_shapes
:?????????mY?
conv2d_44/Conv2D/ReadVariableOpReadVariableOp(conv2d_44_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_44/Conv2DConv2Dnormalization_18/truediv:z:0'conv2d_44/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????mY*
paddingSAME*
strides
?
 conv2d_44/BiasAdd/ReadVariableOpReadVariableOp)conv2d_44_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_44/BiasAddBiasAddconv2d_44/Conv2D:output:0(conv2d_44/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????mY?
max_pooling2d_12/MaxPoolMaxPoolconv2d_44/BiasAdd:output:0*/
_output_shapes
:?????????6,*
ksize
*
paddingVALID*
strides
{
dropout_9/IdentityIdentity!max_pooling2d_12/MaxPool:output:0*
T0*/
_output_shapes
:?????????6,?
conv2d_45/Conv2D/ReadVariableOpReadVariableOp(conv2d_45_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_45/Conv2DConv2Ddropout_9/Identity:output:0'conv2d_45/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????6,*
paddingSAME*
strides
?
 conv2d_45/BiasAdd/ReadVariableOpReadVariableOp)conv2d_45_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_45/BiasAddBiasAddconv2d_45/Conv2D:output:0(conv2d_45/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????6,?
conv2d_46/Conv2D/ReadVariableOpReadVariableOp(conv2d_46_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_46/Conv2DConv2Dconv2d_45/BiasAdd:output:0'conv2d_46/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????6,*
paddingSAME*
strides
?
 conv2d_46/BiasAdd/ReadVariableOpReadVariableOp)conv2d_46_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_46/BiasAddBiasAddconv2d_46/Conv2D:output:0(conv2d_46/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????6,?
normalization_19/subSubconv2d_46/BiasAdd:output:0normalization_19_sub_y*
T0*/
_output_shapes
:?????????6,g
normalization_19/SqrtSqrtnormalization_19_sqrt_x*
T0*&
_output_shapes
:_
normalization_19/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_19/MaximumMaximumnormalization_19/Sqrt:y:0#normalization_19/Maximum/y:output:0*
T0*&
_output_shapes
:?
normalization_19/truedivRealDivnormalization_19/sub:z:0normalization_19/Maximum:z:0*
T0*/
_output_shapes
:?????????6,?
conv2d_47/Conv2D/ReadVariableOpReadVariableOp(conv2d_47_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_47/Conv2DConv2Dnormalization_19/truediv:z:0'conv2d_47/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????6,*
paddingSAME*
strides
?
 conv2d_47/BiasAdd/ReadVariableOpReadVariableOp)conv2d_47_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_47/BiasAddBiasAddconv2d_47/Conv2D:output:0(conv2d_47/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????6,?
max_pooling2d_13/MaxPoolMaxPoolconv2d_47/BiasAdd:output:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
?
conv2d_48/Conv2D/ReadVariableOpReadVariableOp(conv2d_48_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_48/Conv2DConv2D!max_pooling2d_13/MaxPool:output:0'conv2d_48/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????	*
paddingVALID*
strides
?
 conv2d_48/BiasAdd/ReadVariableOpReadVariableOp)conv2d_48_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_48/BiasAddBiasAddconv2d_48/Conv2D:output:0(conv2d_48/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????	?
conv2d_49/Conv2D/ReadVariableOpReadVariableOp(conv2d_49_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_49/Conv2DConv2Dconv2d_48/BiasAdd:output:0'conv2d_49/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????
*
paddingVALID*
strides
?
 conv2d_49/BiasAdd/ReadVariableOpReadVariableOp)conv2d_49_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_49/BiasAddBiasAddconv2d_49/Conv2D:output:0(conv2d_49/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????
?
average_pooling2d_2/AvgPoolAvgPoolconv2d_49/BiasAdd:output:0*
T0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
?
normalization_20/subSub$average_pooling2d_2/AvgPool:output:0normalization_20_sub_y*
T0*/
_output_shapes
:?????????g
normalization_20/SqrtSqrtnormalization_20_sqrt_x*
T0*&
_output_shapes
:_
normalization_20/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_20/MaximumMaximumnormalization_20/Sqrt:y:0#normalization_20/Maximum/y:output:0*
T0*&
_output_shapes
:?
normalization_20/truedivRealDivnormalization_20/sub:z:0normalization_20/Maximum:z:0*
T0*/
_output_shapes
:??????????
conv2d_50/Conv2D/ReadVariableOpReadVariableOp(conv2d_50_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_50/Conv2DConv2Dnormalization_20/truediv:z:0'conv2d_50/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
?
 conv2d_50/BiasAdd/ReadVariableOpReadVariableOp)conv2d_50_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_50/BiasAddBiasAddconv2d_50/Conv2D:output:0(conv2d_50/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? ?
conv2d_51/Conv2D/ReadVariableOpReadVariableOp(conv2d_51_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_51/Conv2DConv2Dconv2d_50/BiasAdd:output:0'conv2d_51/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
?
 conv2d_51/BiasAdd/ReadVariableOpReadVariableOp)conv2d_51_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_51/BiasAddBiasAddconv2d_51/Conv2D:output:0(conv2d_51/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:??????????
max_pooling2d_14/MaxPoolMaxPoolconv2d_51/BiasAdd:output:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
?
conv2d_52/Conv2D/ReadVariableOpReadVariableOp(conv2d_52_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_52/Conv2DConv2D!max_pooling2d_14/MaxPool:output:0'conv2d_52/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
?
 conv2d_52/BiasAdd/ReadVariableOpReadVariableOp)conv2d_52_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_52/BiasAddBiasAddconv2d_52/Conv2D:output:0(conv2d_52/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:??????????
conv2d_53/Conv2D/ReadVariableOpReadVariableOp(conv2d_53_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_53/Conv2DConv2Dconv2d_52/BiasAdd:output:0'conv2d_53/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
?
 conv2d_53/BiasAdd/ReadVariableOpReadVariableOp)conv2d_53_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_53/BiasAddBiasAddconv2d_53/Conv2D:output:0(conv2d_53/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:??????????
normalization_21/subSubconv2d_53/BiasAdd:output:0normalization_21_sub_y*
T0*/
_output_shapes
:?????????g
normalization_21/SqrtSqrtnormalization_21_sqrt_x*
T0*&
_output_shapes
:_
normalization_21/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_21/MaximumMaximumnormalization_21/Sqrt:y:0#normalization_21/Maximum/y:output:0*
T0*&
_output_shapes
:?
normalization_21/truedivRealDivnormalization_21/sub:z:0normalization_21/Maximum:z:0*
T0*/
_output_shapes
:?????????`
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"????    ?
flatten_1/ReshapeReshapenormalization_21/truediv:z:0flatten_1/Const:output:0*
T0*'
_output_shapes
:????????? ?
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes

: @*
dtype0?
dense_5/MatMulMatMulflatten_1/Reshape:output:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0?
dense_6/MatMulMatMuldense_5/BiasAdd:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

: 0*
dtype0?
dense_7/MatMulMatMuldense_6/BiasAdd:output:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????0?
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0?
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????0?
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes

:0 *
dtype0?
dense_8/MatMulMatMuldense_7/BiasAdd:output:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes

: *
dtype0?
dense_9/MatMulMatMuldense_8/BiasAdd:output:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_10/MatMulMatMuldense_9/BiasAdd:output:0&dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_10/BiasAddBiasAdddense_10/MatMul:product:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
dense_10/SigmoidSigmoiddense_10/BiasAdd:output:0*
T0*'
_output_shapes
:?????????c
IdentityIdentitydense_10/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^conv2d_39/BiasAdd/ReadVariableOp ^conv2d_39/Conv2D/ReadVariableOp!^conv2d_40/BiasAdd/ReadVariableOp ^conv2d_40/Conv2D/ReadVariableOp!^conv2d_41/BiasAdd/ReadVariableOp ^conv2d_41/Conv2D/ReadVariableOp!^conv2d_42/BiasAdd/ReadVariableOp ^conv2d_42/Conv2D/ReadVariableOp!^conv2d_43/BiasAdd/ReadVariableOp ^conv2d_43/Conv2D/ReadVariableOp!^conv2d_44/BiasAdd/ReadVariableOp ^conv2d_44/Conv2D/ReadVariableOp!^conv2d_45/BiasAdd/ReadVariableOp ^conv2d_45/Conv2D/ReadVariableOp!^conv2d_46/BiasAdd/ReadVariableOp ^conv2d_46/Conv2D/ReadVariableOp!^conv2d_47/BiasAdd/ReadVariableOp ^conv2d_47/Conv2D/ReadVariableOp!^conv2d_48/BiasAdd/ReadVariableOp ^conv2d_48/Conv2D/ReadVariableOp!^conv2d_49/BiasAdd/ReadVariableOp ^conv2d_49/Conv2D/ReadVariableOp!^conv2d_50/BiasAdd/ReadVariableOp ^conv2d_50/Conv2D/ReadVariableOp!^conv2d_51/BiasAdd/ReadVariableOp ^conv2d_51/Conv2D/ReadVariableOp!^conv2d_52/BiasAdd/ReadVariableOp ^conv2d_52/Conv2D/ReadVariableOp!^conv2d_53/BiasAdd/ReadVariableOp ^conv2d_53/Conv2D/ReadVariableOp ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:???????????::: : : : ::: : : : : : ::: : : : : : ::: : : : : : ::: : : : : : : : ::: : : : : : : : : : : : 2D
 conv2d_39/BiasAdd/ReadVariableOp conv2d_39/BiasAdd/ReadVariableOp2B
conv2d_39/Conv2D/ReadVariableOpconv2d_39/Conv2D/ReadVariableOp2D
 conv2d_40/BiasAdd/ReadVariableOp conv2d_40/BiasAdd/ReadVariableOp2B
conv2d_40/Conv2D/ReadVariableOpconv2d_40/Conv2D/ReadVariableOp2D
 conv2d_41/BiasAdd/ReadVariableOp conv2d_41/BiasAdd/ReadVariableOp2B
conv2d_41/Conv2D/ReadVariableOpconv2d_41/Conv2D/ReadVariableOp2D
 conv2d_42/BiasAdd/ReadVariableOp conv2d_42/BiasAdd/ReadVariableOp2B
conv2d_42/Conv2D/ReadVariableOpconv2d_42/Conv2D/ReadVariableOp2D
 conv2d_43/BiasAdd/ReadVariableOp conv2d_43/BiasAdd/ReadVariableOp2B
conv2d_43/Conv2D/ReadVariableOpconv2d_43/Conv2D/ReadVariableOp2D
 conv2d_44/BiasAdd/ReadVariableOp conv2d_44/BiasAdd/ReadVariableOp2B
conv2d_44/Conv2D/ReadVariableOpconv2d_44/Conv2D/ReadVariableOp2D
 conv2d_45/BiasAdd/ReadVariableOp conv2d_45/BiasAdd/ReadVariableOp2B
conv2d_45/Conv2D/ReadVariableOpconv2d_45/Conv2D/ReadVariableOp2D
 conv2d_46/BiasAdd/ReadVariableOp conv2d_46/BiasAdd/ReadVariableOp2B
conv2d_46/Conv2D/ReadVariableOpconv2d_46/Conv2D/ReadVariableOp2D
 conv2d_47/BiasAdd/ReadVariableOp conv2d_47/BiasAdd/ReadVariableOp2B
conv2d_47/Conv2D/ReadVariableOpconv2d_47/Conv2D/ReadVariableOp2D
 conv2d_48/BiasAdd/ReadVariableOp conv2d_48/BiasAdd/ReadVariableOp2B
conv2d_48/Conv2D/ReadVariableOpconv2d_48/Conv2D/ReadVariableOp2D
 conv2d_49/BiasAdd/ReadVariableOp conv2d_49/BiasAdd/ReadVariableOp2B
conv2d_49/Conv2D/ReadVariableOpconv2d_49/Conv2D/ReadVariableOp2D
 conv2d_50/BiasAdd/ReadVariableOp conv2d_50/BiasAdd/ReadVariableOp2B
conv2d_50/Conv2D/ReadVariableOpconv2d_50/Conv2D/ReadVariableOp2D
 conv2d_51/BiasAdd/ReadVariableOp conv2d_51/BiasAdd/ReadVariableOp2B
conv2d_51/Conv2D/ReadVariableOpconv2d_51/Conv2D/ReadVariableOp2D
 conv2d_52/BiasAdd/ReadVariableOp conv2d_52/BiasAdd/ReadVariableOp2B
conv2d_52/Conv2D/ReadVariableOpconv2d_52/Conv2D/ReadVariableOp2D
 conv2d_53/BiasAdd/ReadVariableOp conv2d_53/BiasAdd/ReadVariableOp2B
conv2d_53/Conv2D/ReadVariableOpconv2d_53/Conv2D/ReadVariableOp2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
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
::,)(
&
_output_shapes
::,*(
&
_output_shapes
:
?

?
F__inference_conv2d_53_layer_call_and_return_conditional_losses_1815893

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
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
:?????????g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
F__inference_conv2d_51_layer_call_and_return_conditional_losses_1815845

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
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
:?????????g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?	
?
D__inference_dense_7_layer_call_and_return_conditional_losses_1815961

inputs0
matmul_readvariableop_resource: 0-
biasadd_readvariableop_resource:0
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: 0*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????0r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????0_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????0w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
+__inference_conv2d_41_layer_call_fn_1815551

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_41_layer_call_and_return_conditional_losses_1813241y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?

?
F__inference_conv2d_42_layer_call_and_return_conditional_losses_1813265

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????mY*
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
:?????????mYg
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????mYw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????mY: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????mY
 
_user_specified_nameinputs
?	
?
D__inference_dense_5_layer_call_and_return_conditional_losses_1815923

inputs0
matmul_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: @*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
i
M__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_1813139

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

e
F__inference_dropout_8_layer_call_and_return_conditional_losses_1813932

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????mYC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????mY*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????mYw
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????mYq
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????mYa
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????mY"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????mY:W S
/
_output_shapes
:?????????mY
 
_user_specified_nameinputs
?

?
F__inference_conv2d_44_layer_call_and_return_conditional_losses_1813304

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????mY*
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
:?????????mYg
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????mYw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????mY: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????mY
 
_user_specified_nameinputs
?

?
F__inference_conv2d_48_layer_call_and_return_conditional_losses_1813384

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????	*
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
:?????????	g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????	w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
.__inference_sequential_2_layer_call_fn_1814898

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

unknown_30$

unknown_31: 

unknown_32: $

unknown_33: 

unknown_34:$

unknown_35:

unknown_36:$

unknown_37:

unknown_38:

unknown_39

unknown_40

unknown_41: @

unknown_42:@

unknown_43:@ 

unknown_44: 

unknown_45: 0

unknown_46:0

unknown_47:0 

unknown_48: 

unknown_49: 

unknown_50:

unknown_51:

unknown_52:
identity??StatefulPartitionedCall?
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
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52*B
Tin;
927*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*L
_read_only_resource_inputs.
,*	
!"#$%&'(+,-./0123456*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_2_layer_call_and_return_conditional_losses_1813592o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:???????????::: : : : ::: : : : : : ::: : : : : : ::: : : : : : ::: : : : : : : : ::: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
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
::,)(
&
_output_shapes
::,*(
&
_output_shapes
:
?

?
F__inference_conv2d_52_layer_call_and_return_conditional_losses_1815874

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
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
:?????????g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
ݑ
?,
"__inference__wrapped_model_1813118
input_3'
#sequential_2_normalization_16_sub_y(
$sequential_2_normalization_16_sqrt_xO
5sequential_2_conv2d_39_conv2d_readvariableop_resource: D
6sequential_2_conv2d_39_biasadd_readvariableop_resource: O
5sequential_2_conv2d_40_conv2d_readvariableop_resource: D
6sequential_2_conv2d_40_biasadd_readvariableop_resource:'
#sequential_2_normalization_17_sub_y(
$sequential_2_normalization_17_sqrt_xO
5sequential_2_conv2d_41_conv2d_readvariableop_resource:D
6sequential_2_conv2d_41_biasadd_readvariableop_resource:O
5sequential_2_conv2d_42_conv2d_readvariableop_resource:D
6sequential_2_conv2d_42_biasadd_readvariableop_resource:O
5sequential_2_conv2d_43_conv2d_readvariableop_resource:D
6sequential_2_conv2d_43_biasadd_readvariableop_resource:'
#sequential_2_normalization_18_sub_y(
$sequential_2_normalization_18_sqrt_xO
5sequential_2_conv2d_44_conv2d_readvariableop_resource:D
6sequential_2_conv2d_44_biasadd_readvariableop_resource:O
5sequential_2_conv2d_45_conv2d_readvariableop_resource:D
6sequential_2_conv2d_45_biasadd_readvariableop_resource:O
5sequential_2_conv2d_46_conv2d_readvariableop_resource:D
6sequential_2_conv2d_46_biasadd_readvariableop_resource:'
#sequential_2_normalization_19_sub_y(
$sequential_2_normalization_19_sqrt_xO
5sequential_2_conv2d_47_conv2d_readvariableop_resource:D
6sequential_2_conv2d_47_biasadd_readvariableop_resource:O
5sequential_2_conv2d_48_conv2d_readvariableop_resource:D
6sequential_2_conv2d_48_biasadd_readvariableop_resource:O
5sequential_2_conv2d_49_conv2d_readvariableop_resource:D
6sequential_2_conv2d_49_biasadd_readvariableop_resource:'
#sequential_2_normalization_20_sub_y(
$sequential_2_normalization_20_sqrt_xO
5sequential_2_conv2d_50_conv2d_readvariableop_resource: D
6sequential_2_conv2d_50_biasadd_readvariableop_resource: O
5sequential_2_conv2d_51_conv2d_readvariableop_resource: D
6sequential_2_conv2d_51_biasadd_readvariableop_resource:O
5sequential_2_conv2d_52_conv2d_readvariableop_resource:D
6sequential_2_conv2d_52_biasadd_readvariableop_resource:O
5sequential_2_conv2d_53_conv2d_readvariableop_resource:D
6sequential_2_conv2d_53_biasadd_readvariableop_resource:'
#sequential_2_normalization_21_sub_y(
$sequential_2_normalization_21_sqrt_xE
3sequential_2_dense_5_matmul_readvariableop_resource: @B
4sequential_2_dense_5_biasadd_readvariableop_resource:@E
3sequential_2_dense_6_matmul_readvariableop_resource:@ B
4sequential_2_dense_6_biasadd_readvariableop_resource: E
3sequential_2_dense_7_matmul_readvariableop_resource: 0B
4sequential_2_dense_7_biasadd_readvariableop_resource:0E
3sequential_2_dense_8_matmul_readvariableop_resource:0 B
4sequential_2_dense_8_biasadd_readvariableop_resource: E
3sequential_2_dense_9_matmul_readvariableop_resource: B
4sequential_2_dense_9_biasadd_readvariableop_resource:F
4sequential_2_dense_10_matmul_readvariableop_resource:C
5sequential_2_dense_10_biasadd_readvariableop_resource:
identity??-sequential_2/conv2d_39/BiasAdd/ReadVariableOp?,sequential_2/conv2d_39/Conv2D/ReadVariableOp?-sequential_2/conv2d_40/BiasAdd/ReadVariableOp?,sequential_2/conv2d_40/Conv2D/ReadVariableOp?-sequential_2/conv2d_41/BiasAdd/ReadVariableOp?,sequential_2/conv2d_41/Conv2D/ReadVariableOp?-sequential_2/conv2d_42/BiasAdd/ReadVariableOp?,sequential_2/conv2d_42/Conv2D/ReadVariableOp?-sequential_2/conv2d_43/BiasAdd/ReadVariableOp?,sequential_2/conv2d_43/Conv2D/ReadVariableOp?-sequential_2/conv2d_44/BiasAdd/ReadVariableOp?,sequential_2/conv2d_44/Conv2D/ReadVariableOp?-sequential_2/conv2d_45/BiasAdd/ReadVariableOp?,sequential_2/conv2d_45/Conv2D/ReadVariableOp?-sequential_2/conv2d_46/BiasAdd/ReadVariableOp?,sequential_2/conv2d_46/Conv2D/ReadVariableOp?-sequential_2/conv2d_47/BiasAdd/ReadVariableOp?,sequential_2/conv2d_47/Conv2D/ReadVariableOp?-sequential_2/conv2d_48/BiasAdd/ReadVariableOp?,sequential_2/conv2d_48/Conv2D/ReadVariableOp?-sequential_2/conv2d_49/BiasAdd/ReadVariableOp?,sequential_2/conv2d_49/Conv2D/ReadVariableOp?-sequential_2/conv2d_50/BiasAdd/ReadVariableOp?,sequential_2/conv2d_50/Conv2D/ReadVariableOp?-sequential_2/conv2d_51/BiasAdd/ReadVariableOp?,sequential_2/conv2d_51/Conv2D/ReadVariableOp?-sequential_2/conv2d_52/BiasAdd/ReadVariableOp?,sequential_2/conv2d_52/Conv2D/ReadVariableOp?-sequential_2/conv2d_53/BiasAdd/ReadVariableOp?,sequential_2/conv2d_53/Conv2D/ReadVariableOp?,sequential_2/dense_10/BiasAdd/ReadVariableOp?+sequential_2/dense_10/MatMul/ReadVariableOp?+sequential_2/dense_5/BiasAdd/ReadVariableOp?*sequential_2/dense_5/MatMul/ReadVariableOp?+sequential_2/dense_6/BiasAdd/ReadVariableOp?*sequential_2/dense_6/MatMul/ReadVariableOp?+sequential_2/dense_7/BiasAdd/ReadVariableOp?*sequential_2/dense_7/MatMul/ReadVariableOp?+sequential_2/dense_8/BiasAdd/ReadVariableOp?*sequential_2/dense_8/MatMul/ReadVariableOp?+sequential_2/dense_9/BiasAdd/ReadVariableOp?*sequential_2/dense_9/MatMul/ReadVariableOp?
!sequential_2/normalization_16/subSubinput_3#sequential_2_normalization_16_sub_y*
T0*1
_output_shapes
:????????????
"sequential_2/normalization_16/SqrtSqrt$sequential_2_normalization_16_sqrt_x*
T0*&
_output_shapes
:l
'sequential_2/normalization_16/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
%sequential_2/normalization_16/MaximumMaximum&sequential_2/normalization_16/Sqrt:y:00sequential_2/normalization_16/Maximum/y:output:0*
T0*&
_output_shapes
:?
%sequential_2/normalization_16/truedivRealDiv%sequential_2/normalization_16/sub:z:0)sequential_2/normalization_16/Maximum:z:0*
T0*1
_output_shapes
:????????????
,sequential_2/conv2d_39/Conv2D/ReadVariableOpReadVariableOp5sequential_2_conv2d_39_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
sequential_2/conv2d_39/Conv2DConv2D)sequential_2/normalization_16/truediv:z:04sequential_2/conv2d_39/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingSAME*
strides
?
-sequential_2/conv2d_39/BiasAdd/ReadVariableOpReadVariableOp6sequential_2_conv2d_39_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
sequential_2/conv2d_39/BiasAddBiasAdd&sequential_2/conv2d_39/Conv2D:output:05sequential_2/conv2d_39/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? ?
,sequential_2/conv2d_40/Conv2D/ReadVariableOpReadVariableOp5sequential_2_conv2d_40_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
sequential_2/conv2d_40/Conv2DConv2D'sequential_2/conv2d_39/BiasAdd:output:04sequential_2/conv2d_40/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
-sequential_2/conv2d_40/BiasAdd/ReadVariableOpReadVariableOp6sequential_2_conv2d_40_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_2/conv2d_40/BiasAddBiasAdd&sequential_2/conv2d_40/Conv2D:output:05sequential_2/conv2d_40/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:????????????
!sequential_2/normalization_17/subSub'sequential_2/conv2d_40/BiasAdd:output:0#sequential_2_normalization_17_sub_y*
T0*1
_output_shapes
:????????????
"sequential_2/normalization_17/SqrtSqrt$sequential_2_normalization_17_sqrt_x*
T0*&
_output_shapes
:l
'sequential_2/normalization_17/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
%sequential_2/normalization_17/MaximumMaximum&sequential_2/normalization_17/Sqrt:y:00sequential_2/normalization_17/Maximum/y:output:0*
T0*&
_output_shapes
:?
%sequential_2/normalization_17/truedivRealDiv%sequential_2/normalization_17/sub:z:0)sequential_2/normalization_17/Maximum:z:0*
T0*1
_output_shapes
:????????????
,sequential_2/conv2d_41/Conv2D/ReadVariableOpReadVariableOp5sequential_2_conv2d_41_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
sequential_2/conv2d_41/Conv2DConv2D)sequential_2/normalization_17/truediv:z:04sequential_2/conv2d_41/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
-sequential_2/conv2d_41/BiasAdd/ReadVariableOpReadVariableOp6sequential_2_conv2d_41_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_2/conv2d_41/BiasAddBiasAdd&sequential_2/conv2d_41/Conv2D:output:05sequential_2/conv2d_41/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:????????????
%sequential_2/max_pooling2d_11/MaxPoolMaxPool'sequential_2/conv2d_41/BiasAdd:output:0*/
_output_shapes
:?????????mY*
ksize
*
paddingVALID*
strides
?
sequential_2/dropout_8/IdentityIdentity.sequential_2/max_pooling2d_11/MaxPool:output:0*
T0*/
_output_shapes
:?????????mY?
,sequential_2/conv2d_42/Conv2D/ReadVariableOpReadVariableOp5sequential_2_conv2d_42_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
sequential_2/conv2d_42/Conv2DConv2D(sequential_2/dropout_8/Identity:output:04sequential_2/conv2d_42/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????mY*
paddingSAME*
strides
?
-sequential_2/conv2d_42/BiasAdd/ReadVariableOpReadVariableOp6sequential_2_conv2d_42_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_2/conv2d_42/BiasAddBiasAdd&sequential_2/conv2d_42/Conv2D:output:05sequential_2/conv2d_42/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????mY?
,sequential_2/conv2d_43/Conv2D/ReadVariableOpReadVariableOp5sequential_2_conv2d_43_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
sequential_2/conv2d_43/Conv2DConv2D'sequential_2/conv2d_42/BiasAdd:output:04sequential_2/conv2d_43/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????mY*
paddingSAME*
strides
?
-sequential_2/conv2d_43/BiasAdd/ReadVariableOpReadVariableOp6sequential_2_conv2d_43_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_2/conv2d_43/BiasAddBiasAdd&sequential_2/conv2d_43/Conv2D:output:05sequential_2/conv2d_43/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????mY?
!sequential_2/normalization_18/subSub'sequential_2/conv2d_43/BiasAdd:output:0#sequential_2_normalization_18_sub_y*
T0*/
_output_shapes
:?????????mY?
"sequential_2/normalization_18/SqrtSqrt$sequential_2_normalization_18_sqrt_x*
T0*&
_output_shapes
:l
'sequential_2/normalization_18/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
%sequential_2/normalization_18/MaximumMaximum&sequential_2/normalization_18/Sqrt:y:00sequential_2/normalization_18/Maximum/y:output:0*
T0*&
_output_shapes
:?
%sequential_2/normalization_18/truedivRealDiv%sequential_2/normalization_18/sub:z:0)sequential_2/normalization_18/Maximum:z:0*
T0*/
_output_shapes
:?????????mY?
,sequential_2/conv2d_44/Conv2D/ReadVariableOpReadVariableOp5sequential_2_conv2d_44_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
sequential_2/conv2d_44/Conv2DConv2D)sequential_2/normalization_18/truediv:z:04sequential_2/conv2d_44/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????mY*
paddingSAME*
strides
?
-sequential_2/conv2d_44/BiasAdd/ReadVariableOpReadVariableOp6sequential_2_conv2d_44_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_2/conv2d_44/BiasAddBiasAdd&sequential_2/conv2d_44/Conv2D:output:05sequential_2/conv2d_44/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????mY?
%sequential_2/max_pooling2d_12/MaxPoolMaxPool'sequential_2/conv2d_44/BiasAdd:output:0*/
_output_shapes
:?????????6,*
ksize
*
paddingVALID*
strides
?
sequential_2/dropout_9/IdentityIdentity.sequential_2/max_pooling2d_12/MaxPool:output:0*
T0*/
_output_shapes
:?????????6,?
,sequential_2/conv2d_45/Conv2D/ReadVariableOpReadVariableOp5sequential_2_conv2d_45_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
sequential_2/conv2d_45/Conv2DConv2D(sequential_2/dropout_9/Identity:output:04sequential_2/conv2d_45/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????6,*
paddingSAME*
strides
?
-sequential_2/conv2d_45/BiasAdd/ReadVariableOpReadVariableOp6sequential_2_conv2d_45_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_2/conv2d_45/BiasAddBiasAdd&sequential_2/conv2d_45/Conv2D:output:05sequential_2/conv2d_45/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????6,?
,sequential_2/conv2d_46/Conv2D/ReadVariableOpReadVariableOp5sequential_2_conv2d_46_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
sequential_2/conv2d_46/Conv2DConv2D'sequential_2/conv2d_45/BiasAdd:output:04sequential_2/conv2d_46/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????6,*
paddingSAME*
strides
?
-sequential_2/conv2d_46/BiasAdd/ReadVariableOpReadVariableOp6sequential_2_conv2d_46_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_2/conv2d_46/BiasAddBiasAdd&sequential_2/conv2d_46/Conv2D:output:05sequential_2/conv2d_46/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????6,?
!sequential_2/normalization_19/subSub'sequential_2/conv2d_46/BiasAdd:output:0#sequential_2_normalization_19_sub_y*
T0*/
_output_shapes
:?????????6,?
"sequential_2/normalization_19/SqrtSqrt$sequential_2_normalization_19_sqrt_x*
T0*&
_output_shapes
:l
'sequential_2/normalization_19/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
%sequential_2/normalization_19/MaximumMaximum&sequential_2/normalization_19/Sqrt:y:00sequential_2/normalization_19/Maximum/y:output:0*
T0*&
_output_shapes
:?
%sequential_2/normalization_19/truedivRealDiv%sequential_2/normalization_19/sub:z:0)sequential_2/normalization_19/Maximum:z:0*
T0*/
_output_shapes
:?????????6,?
,sequential_2/conv2d_47/Conv2D/ReadVariableOpReadVariableOp5sequential_2_conv2d_47_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
sequential_2/conv2d_47/Conv2DConv2D)sequential_2/normalization_19/truediv:z:04sequential_2/conv2d_47/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????6,*
paddingSAME*
strides
?
-sequential_2/conv2d_47/BiasAdd/ReadVariableOpReadVariableOp6sequential_2_conv2d_47_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_2/conv2d_47/BiasAddBiasAdd&sequential_2/conv2d_47/Conv2D:output:05sequential_2/conv2d_47/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????6,?
%sequential_2/max_pooling2d_13/MaxPoolMaxPool'sequential_2/conv2d_47/BiasAdd:output:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
?
,sequential_2/conv2d_48/Conv2D/ReadVariableOpReadVariableOp5sequential_2_conv2d_48_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
sequential_2/conv2d_48/Conv2DConv2D.sequential_2/max_pooling2d_13/MaxPool:output:04sequential_2/conv2d_48/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????	*
paddingVALID*
strides
?
-sequential_2/conv2d_48/BiasAdd/ReadVariableOpReadVariableOp6sequential_2_conv2d_48_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_2/conv2d_48/BiasAddBiasAdd&sequential_2/conv2d_48/Conv2D:output:05sequential_2/conv2d_48/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????	?
,sequential_2/conv2d_49/Conv2D/ReadVariableOpReadVariableOp5sequential_2_conv2d_49_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
sequential_2/conv2d_49/Conv2DConv2D'sequential_2/conv2d_48/BiasAdd:output:04sequential_2/conv2d_49/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????
*
paddingVALID*
strides
?
-sequential_2/conv2d_49/BiasAdd/ReadVariableOpReadVariableOp6sequential_2_conv2d_49_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_2/conv2d_49/BiasAddBiasAdd&sequential_2/conv2d_49/Conv2D:output:05sequential_2/conv2d_49/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????
?
(sequential_2/average_pooling2d_2/AvgPoolAvgPool'sequential_2/conv2d_49/BiasAdd:output:0*
T0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
?
!sequential_2/normalization_20/subSub1sequential_2/average_pooling2d_2/AvgPool:output:0#sequential_2_normalization_20_sub_y*
T0*/
_output_shapes
:??????????
"sequential_2/normalization_20/SqrtSqrt$sequential_2_normalization_20_sqrt_x*
T0*&
_output_shapes
:l
'sequential_2/normalization_20/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
%sequential_2/normalization_20/MaximumMaximum&sequential_2/normalization_20/Sqrt:y:00sequential_2/normalization_20/Maximum/y:output:0*
T0*&
_output_shapes
:?
%sequential_2/normalization_20/truedivRealDiv%sequential_2/normalization_20/sub:z:0)sequential_2/normalization_20/Maximum:z:0*
T0*/
_output_shapes
:??????????
,sequential_2/conv2d_50/Conv2D/ReadVariableOpReadVariableOp5sequential_2_conv2d_50_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
sequential_2/conv2d_50/Conv2DConv2D)sequential_2/normalization_20/truediv:z:04sequential_2/conv2d_50/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
?
-sequential_2/conv2d_50/BiasAdd/ReadVariableOpReadVariableOp6sequential_2_conv2d_50_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
sequential_2/conv2d_50/BiasAddBiasAdd&sequential_2/conv2d_50/Conv2D:output:05sequential_2/conv2d_50/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? ?
,sequential_2/conv2d_51/Conv2D/ReadVariableOpReadVariableOp5sequential_2_conv2d_51_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
sequential_2/conv2d_51/Conv2DConv2D'sequential_2/conv2d_50/BiasAdd:output:04sequential_2/conv2d_51/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
?
-sequential_2/conv2d_51/BiasAdd/ReadVariableOpReadVariableOp6sequential_2_conv2d_51_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_2/conv2d_51/BiasAddBiasAdd&sequential_2/conv2d_51/Conv2D:output:05sequential_2/conv2d_51/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:??????????
%sequential_2/max_pooling2d_14/MaxPoolMaxPool'sequential_2/conv2d_51/BiasAdd:output:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
?
,sequential_2/conv2d_52/Conv2D/ReadVariableOpReadVariableOp5sequential_2_conv2d_52_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
sequential_2/conv2d_52/Conv2DConv2D.sequential_2/max_pooling2d_14/MaxPool:output:04sequential_2/conv2d_52/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
?
-sequential_2/conv2d_52/BiasAdd/ReadVariableOpReadVariableOp6sequential_2_conv2d_52_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_2/conv2d_52/BiasAddBiasAdd&sequential_2/conv2d_52/Conv2D:output:05sequential_2/conv2d_52/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:??????????
,sequential_2/conv2d_53/Conv2D/ReadVariableOpReadVariableOp5sequential_2_conv2d_53_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
sequential_2/conv2d_53/Conv2DConv2D'sequential_2/conv2d_52/BiasAdd:output:04sequential_2/conv2d_53/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
?
-sequential_2/conv2d_53/BiasAdd/ReadVariableOpReadVariableOp6sequential_2_conv2d_53_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_2/conv2d_53/BiasAddBiasAdd&sequential_2/conv2d_53/Conv2D:output:05sequential_2/conv2d_53/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:??????????
!sequential_2/normalization_21/subSub'sequential_2/conv2d_53/BiasAdd:output:0#sequential_2_normalization_21_sub_y*
T0*/
_output_shapes
:??????????
"sequential_2/normalization_21/SqrtSqrt$sequential_2_normalization_21_sqrt_x*
T0*&
_output_shapes
:l
'sequential_2/normalization_21/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
%sequential_2/normalization_21/MaximumMaximum&sequential_2/normalization_21/Sqrt:y:00sequential_2/normalization_21/Maximum/y:output:0*
T0*&
_output_shapes
:?
%sequential_2/normalization_21/truedivRealDiv%sequential_2/normalization_21/sub:z:0)sequential_2/normalization_21/Maximum:z:0*
T0*/
_output_shapes
:?????????m
sequential_2/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"????    ?
sequential_2/flatten_1/ReshapeReshape)sequential_2/normalization_21/truediv:z:0%sequential_2/flatten_1/Const:output:0*
T0*'
_output_shapes
:????????? ?
*sequential_2/dense_5/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_5_matmul_readvariableop_resource*
_output_shapes

: @*
dtype0?
sequential_2/dense_5/MatMulMatMul'sequential_2/flatten_1/Reshape:output:02sequential_2/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
+sequential_2/dense_5/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
sequential_2/dense_5/BiasAddBiasAdd%sequential_2/dense_5/MatMul:product:03sequential_2/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
*sequential_2/dense_6/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_6_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0?
sequential_2/dense_6/MatMulMatMul%sequential_2/dense_5/BiasAdd:output:02sequential_2/dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
+sequential_2/dense_6/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
sequential_2/dense_6/BiasAddBiasAdd%sequential_2/dense_6/MatMul:product:03sequential_2/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
*sequential_2/dense_7/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_7_matmul_readvariableop_resource*
_output_shapes

: 0*
dtype0?
sequential_2/dense_7/MatMulMatMul%sequential_2/dense_6/BiasAdd:output:02sequential_2/dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????0?
+sequential_2/dense_7/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_7_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0?
sequential_2/dense_7/BiasAddBiasAdd%sequential_2/dense_7/MatMul:product:03sequential_2/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????0?
*sequential_2/dense_8/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_8_matmul_readvariableop_resource*
_output_shapes

:0 *
dtype0?
sequential_2/dense_8/MatMulMatMul%sequential_2/dense_7/BiasAdd:output:02sequential_2/dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
+sequential_2/dense_8/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
sequential_2/dense_8/BiasAddBiasAdd%sequential_2/dense_8/MatMul:product:03sequential_2/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
*sequential_2/dense_9/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_9_matmul_readvariableop_resource*
_output_shapes

: *
dtype0?
sequential_2/dense_9/MatMulMatMul%sequential_2/dense_8/BiasAdd:output:02sequential_2/dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
+sequential_2/dense_9/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_2/dense_9/BiasAddBiasAdd%sequential_2/dense_9/MatMul:product:03sequential_2/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
+sequential_2/dense_10/MatMul/ReadVariableOpReadVariableOp4sequential_2_dense_10_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
sequential_2/dense_10/MatMulMatMul%sequential_2/dense_9/BiasAdd:output:03sequential_2/dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
,sequential_2/dense_10/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_dense_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_2/dense_10/BiasAddBiasAdd&sequential_2/dense_10/MatMul:product:04sequential_2/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
sequential_2/dense_10/SigmoidSigmoid&sequential_2/dense_10/BiasAdd:output:0*
T0*'
_output_shapes
:?????????p
IdentityIdentity!sequential_2/dense_10/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp.^sequential_2/conv2d_39/BiasAdd/ReadVariableOp-^sequential_2/conv2d_39/Conv2D/ReadVariableOp.^sequential_2/conv2d_40/BiasAdd/ReadVariableOp-^sequential_2/conv2d_40/Conv2D/ReadVariableOp.^sequential_2/conv2d_41/BiasAdd/ReadVariableOp-^sequential_2/conv2d_41/Conv2D/ReadVariableOp.^sequential_2/conv2d_42/BiasAdd/ReadVariableOp-^sequential_2/conv2d_42/Conv2D/ReadVariableOp.^sequential_2/conv2d_43/BiasAdd/ReadVariableOp-^sequential_2/conv2d_43/Conv2D/ReadVariableOp.^sequential_2/conv2d_44/BiasAdd/ReadVariableOp-^sequential_2/conv2d_44/Conv2D/ReadVariableOp.^sequential_2/conv2d_45/BiasAdd/ReadVariableOp-^sequential_2/conv2d_45/Conv2D/ReadVariableOp.^sequential_2/conv2d_46/BiasAdd/ReadVariableOp-^sequential_2/conv2d_46/Conv2D/ReadVariableOp.^sequential_2/conv2d_47/BiasAdd/ReadVariableOp-^sequential_2/conv2d_47/Conv2D/ReadVariableOp.^sequential_2/conv2d_48/BiasAdd/ReadVariableOp-^sequential_2/conv2d_48/Conv2D/ReadVariableOp.^sequential_2/conv2d_49/BiasAdd/ReadVariableOp-^sequential_2/conv2d_49/Conv2D/ReadVariableOp.^sequential_2/conv2d_50/BiasAdd/ReadVariableOp-^sequential_2/conv2d_50/Conv2D/ReadVariableOp.^sequential_2/conv2d_51/BiasAdd/ReadVariableOp-^sequential_2/conv2d_51/Conv2D/ReadVariableOp.^sequential_2/conv2d_52/BiasAdd/ReadVariableOp-^sequential_2/conv2d_52/Conv2D/ReadVariableOp.^sequential_2/conv2d_53/BiasAdd/ReadVariableOp-^sequential_2/conv2d_53/Conv2D/ReadVariableOp-^sequential_2/dense_10/BiasAdd/ReadVariableOp,^sequential_2/dense_10/MatMul/ReadVariableOp,^sequential_2/dense_5/BiasAdd/ReadVariableOp+^sequential_2/dense_5/MatMul/ReadVariableOp,^sequential_2/dense_6/BiasAdd/ReadVariableOp+^sequential_2/dense_6/MatMul/ReadVariableOp,^sequential_2/dense_7/BiasAdd/ReadVariableOp+^sequential_2/dense_7/MatMul/ReadVariableOp,^sequential_2/dense_8/BiasAdd/ReadVariableOp+^sequential_2/dense_8/MatMul/ReadVariableOp,^sequential_2/dense_9/BiasAdd/ReadVariableOp+^sequential_2/dense_9/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:???????????::: : : : ::: : : : : : ::: : : : : : ::: : : : : : ::: : : : : : : : ::: : : : : : : : : : : : 2^
-sequential_2/conv2d_39/BiasAdd/ReadVariableOp-sequential_2/conv2d_39/BiasAdd/ReadVariableOp2\
,sequential_2/conv2d_39/Conv2D/ReadVariableOp,sequential_2/conv2d_39/Conv2D/ReadVariableOp2^
-sequential_2/conv2d_40/BiasAdd/ReadVariableOp-sequential_2/conv2d_40/BiasAdd/ReadVariableOp2\
,sequential_2/conv2d_40/Conv2D/ReadVariableOp,sequential_2/conv2d_40/Conv2D/ReadVariableOp2^
-sequential_2/conv2d_41/BiasAdd/ReadVariableOp-sequential_2/conv2d_41/BiasAdd/ReadVariableOp2\
,sequential_2/conv2d_41/Conv2D/ReadVariableOp,sequential_2/conv2d_41/Conv2D/ReadVariableOp2^
-sequential_2/conv2d_42/BiasAdd/ReadVariableOp-sequential_2/conv2d_42/BiasAdd/ReadVariableOp2\
,sequential_2/conv2d_42/Conv2D/ReadVariableOp,sequential_2/conv2d_42/Conv2D/ReadVariableOp2^
-sequential_2/conv2d_43/BiasAdd/ReadVariableOp-sequential_2/conv2d_43/BiasAdd/ReadVariableOp2\
,sequential_2/conv2d_43/Conv2D/ReadVariableOp,sequential_2/conv2d_43/Conv2D/ReadVariableOp2^
-sequential_2/conv2d_44/BiasAdd/ReadVariableOp-sequential_2/conv2d_44/BiasAdd/ReadVariableOp2\
,sequential_2/conv2d_44/Conv2D/ReadVariableOp,sequential_2/conv2d_44/Conv2D/ReadVariableOp2^
-sequential_2/conv2d_45/BiasAdd/ReadVariableOp-sequential_2/conv2d_45/BiasAdd/ReadVariableOp2\
,sequential_2/conv2d_45/Conv2D/ReadVariableOp,sequential_2/conv2d_45/Conv2D/ReadVariableOp2^
-sequential_2/conv2d_46/BiasAdd/ReadVariableOp-sequential_2/conv2d_46/BiasAdd/ReadVariableOp2\
,sequential_2/conv2d_46/Conv2D/ReadVariableOp,sequential_2/conv2d_46/Conv2D/ReadVariableOp2^
-sequential_2/conv2d_47/BiasAdd/ReadVariableOp-sequential_2/conv2d_47/BiasAdd/ReadVariableOp2\
,sequential_2/conv2d_47/Conv2D/ReadVariableOp,sequential_2/conv2d_47/Conv2D/ReadVariableOp2^
-sequential_2/conv2d_48/BiasAdd/ReadVariableOp-sequential_2/conv2d_48/BiasAdd/ReadVariableOp2\
,sequential_2/conv2d_48/Conv2D/ReadVariableOp,sequential_2/conv2d_48/Conv2D/ReadVariableOp2^
-sequential_2/conv2d_49/BiasAdd/ReadVariableOp-sequential_2/conv2d_49/BiasAdd/ReadVariableOp2\
,sequential_2/conv2d_49/Conv2D/ReadVariableOp,sequential_2/conv2d_49/Conv2D/ReadVariableOp2^
-sequential_2/conv2d_50/BiasAdd/ReadVariableOp-sequential_2/conv2d_50/BiasAdd/ReadVariableOp2\
,sequential_2/conv2d_50/Conv2D/ReadVariableOp,sequential_2/conv2d_50/Conv2D/ReadVariableOp2^
-sequential_2/conv2d_51/BiasAdd/ReadVariableOp-sequential_2/conv2d_51/BiasAdd/ReadVariableOp2\
,sequential_2/conv2d_51/Conv2D/ReadVariableOp,sequential_2/conv2d_51/Conv2D/ReadVariableOp2^
-sequential_2/conv2d_52/BiasAdd/ReadVariableOp-sequential_2/conv2d_52/BiasAdd/ReadVariableOp2\
,sequential_2/conv2d_52/Conv2D/ReadVariableOp,sequential_2/conv2d_52/Conv2D/ReadVariableOp2^
-sequential_2/conv2d_53/BiasAdd/ReadVariableOp-sequential_2/conv2d_53/BiasAdd/ReadVariableOp2\
,sequential_2/conv2d_53/Conv2D/ReadVariableOp,sequential_2/conv2d_53/Conv2D/ReadVariableOp2\
,sequential_2/dense_10/BiasAdd/ReadVariableOp,sequential_2/dense_10/BiasAdd/ReadVariableOp2Z
+sequential_2/dense_10/MatMul/ReadVariableOp+sequential_2/dense_10/MatMul/ReadVariableOp2Z
+sequential_2/dense_5/BiasAdd/ReadVariableOp+sequential_2/dense_5/BiasAdd/ReadVariableOp2X
*sequential_2/dense_5/MatMul/ReadVariableOp*sequential_2/dense_5/MatMul/ReadVariableOp2Z
+sequential_2/dense_6/BiasAdd/ReadVariableOp+sequential_2/dense_6/BiasAdd/ReadVariableOp2X
*sequential_2/dense_6/MatMul/ReadVariableOp*sequential_2/dense_6/MatMul/ReadVariableOp2Z
+sequential_2/dense_7/BiasAdd/ReadVariableOp+sequential_2/dense_7/BiasAdd/ReadVariableOp2X
*sequential_2/dense_7/MatMul/ReadVariableOp*sequential_2/dense_7/MatMul/ReadVariableOp2Z
+sequential_2/dense_8/BiasAdd/ReadVariableOp+sequential_2/dense_8/BiasAdd/ReadVariableOp2X
*sequential_2/dense_8/MatMul/ReadVariableOp*sequential_2/dense_8/MatMul/ReadVariableOp2Z
+sequential_2/dense_9/BiasAdd/ReadVariableOp+sequential_2/dense_9/BiasAdd/ReadVariableOp2X
*sequential_2/dense_9/MatMul/ReadVariableOp*sequential_2/dense_9/MatMul/ReadVariableOp:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_3:,(
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
::,)(
&
_output_shapes
::,*(
&
_output_shapes
:
?
i
M__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_1815665

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

?
F__inference_conv2d_41_layer_call_and_return_conditional_losses_1813241

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
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
:???????????i
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:???????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?

?
F__inference_conv2d_50_layer_call_and_return_conditional_losses_1815826

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
I__inference_sequential_2_layer_call_and_return_conditional_losses_1814239

inputs
normalization_16_sub_y
normalization_16_sqrt_x+
conv2d_39_1814090: 
conv2d_39_1814092: +
conv2d_40_1814095: 
conv2d_40_1814097:
normalization_17_sub_y
normalization_17_sqrt_x+
conv2d_41_1814107:
conv2d_41_1814109:+
conv2d_42_1814114:
conv2d_42_1814116:+
conv2d_43_1814119:
conv2d_43_1814121:
normalization_18_sub_y
normalization_18_sqrt_x+
conv2d_44_1814131:
conv2d_44_1814133:+
conv2d_45_1814138:
conv2d_45_1814140:+
conv2d_46_1814143:
conv2d_46_1814145:
normalization_19_sub_y
normalization_19_sqrt_x+
conv2d_47_1814155:
conv2d_47_1814157:+
conv2d_48_1814161:
conv2d_48_1814163:+
conv2d_49_1814166:
conv2d_49_1814168:
normalization_20_sub_y
normalization_20_sqrt_x+
conv2d_50_1814179: 
conv2d_50_1814181: +
conv2d_51_1814184: 
conv2d_51_1814186:+
conv2d_52_1814190:
conv2d_52_1814192:+
conv2d_53_1814195:
conv2d_53_1814197:
normalization_21_sub_y
normalization_21_sqrt_x!
dense_5_1814208: @
dense_5_1814210:@!
dense_6_1814213:@ 
dense_6_1814215: !
dense_7_1814218: 0
dense_7_1814220:0!
dense_8_1814223:0 
dense_8_1814225: !
dense_9_1814228: 
dense_9_1814230:"
dense_10_1814233:
dense_10_1814235:
identity??!conv2d_39/StatefulPartitionedCall?!conv2d_40/StatefulPartitionedCall?!conv2d_41/StatefulPartitionedCall?!conv2d_42/StatefulPartitionedCall?!conv2d_43/StatefulPartitionedCall?!conv2d_44/StatefulPartitionedCall?!conv2d_45/StatefulPartitionedCall?!conv2d_46/StatefulPartitionedCall?!conv2d_47/StatefulPartitionedCall?!conv2d_48/StatefulPartitionedCall?!conv2d_49/StatefulPartitionedCall?!conv2d_50/StatefulPartitionedCall?!conv2d_51/StatefulPartitionedCall?!conv2d_52/StatefulPartitionedCall?!conv2d_53/StatefulPartitionedCall? dense_10/StatefulPartitionedCall?dense_5/StatefulPartitionedCall?dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?dense_8/StatefulPartitionedCall?dense_9/StatefulPartitionedCall?!dropout_8/StatefulPartitionedCall?!dropout_9/StatefulPartitionedCallw
normalization_16/subSubinputsnormalization_16_sub_y*
T0*1
_output_shapes
:???????????g
normalization_16/SqrtSqrtnormalization_16_sqrt_x*
T0*&
_output_shapes
:_
normalization_16/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_16/MaximumMaximumnormalization_16/Sqrt:y:0#normalization_16/Maximum/y:output:0*
T0*&
_output_shapes
:?
normalization_16/truedivRealDivnormalization_16/sub:z:0normalization_16/Maximum:z:0*
T0*1
_output_shapes
:????????????
!conv2d_39/StatefulPartitionedCallStatefulPartitionedCallnormalization_16/truediv:z:0conv2d_39_1814090conv2d_39_1814092*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_39_layer_call_and_return_conditional_losses_1813202?
!conv2d_40/StatefulPartitionedCallStatefulPartitionedCall*conv2d_39/StatefulPartitionedCall:output:0conv2d_40_1814095conv2d_40_1814097*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_40_layer_call_and_return_conditional_losses_1813218?
normalization_17/subSub*conv2d_40/StatefulPartitionedCall:output:0normalization_17_sub_y*
T0*1
_output_shapes
:???????????g
normalization_17/SqrtSqrtnormalization_17_sqrt_x*
T0*&
_output_shapes
:_
normalization_17/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_17/MaximumMaximumnormalization_17/Sqrt:y:0#normalization_17/Maximum/y:output:0*
T0*&
_output_shapes
:?
normalization_17/truedivRealDivnormalization_17/sub:z:0normalization_17/Maximum:z:0*
T0*1
_output_shapes
:????????????
!conv2d_41/StatefulPartitionedCallStatefulPartitionedCallnormalization_17/truediv:z:0conv2d_41_1814107conv2d_41_1814109*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_41_layer_call_and_return_conditional_losses_1813241?
 max_pooling2d_11/PartitionedCallPartitionedCall*conv2d_41/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????mY* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_1813127?
!dropout_8/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????mY* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_8_layer_call_and_return_conditional_losses_1813932?
!conv2d_42/StatefulPartitionedCallStatefulPartitionedCall*dropout_8/StatefulPartitionedCall:output:0conv2d_42_1814114conv2d_42_1814116*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????mY*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_42_layer_call_and_return_conditional_losses_1813265?
!conv2d_43/StatefulPartitionedCallStatefulPartitionedCall*conv2d_42/StatefulPartitionedCall:output:0conv2d_43_1814119conv2d_43_1814121*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????mY*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_43_layer_call_and_return_conditional_losses_1813281?
normalization_18/subSub*conv2d_43/StatefulPartitionedCall:output:0normalization_18_sub_y*
T0*/
_output_shapes
:?????????mYg
normalization_18/SqrtSqrtnormalization_18_sqrt_x*
T0*&
_output_shapes
:_
normalization_18/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_18/MaximumMaximumnormalization_18/Sqrt:y:0#normalization_18/Maximum/y:output:0*
T0*&
_output_shapes
:?
normalization_18/truedivRealDivnormalization_18/sub:z:0normalization_18/Maximum:z:0*
T0*/
_output_shapes
:?????????mY?
!conv2d_44/StatefulPartitionedCallStatefulPartitionedCallnormalization_18/truediv:z:0conv2d_44_1814131conv2d_44_1814133*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????mY*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_44_layer_call_and_return_conditional_losses_1813304?
 max_pooling2d_12/PartitionedCallPartitionedCall*conv2d_44/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????6,* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_1813139?
!dropout_9/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_12/PartitionedCall:output:0"^dropout_8/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????6,* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_9_layer_call_and_return_conditional_losses_1813879?
!conv2d_45/StatefulPartitionedCallStatefulPartitionedCall*dropout_9/StatefulPartitionedCall:output:0conv2d_45_1814138conv2d_45_1814140*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????6,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_45_layer_call_and_return_conditional_losses_1813328?
!conv2d_46/StatefulPartitionedCallStatefulPartitionedCall*conv2d_45/StatefulPartitionedCall:output:0conv2d_46_1814143conv2d_46_1814145*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????6,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_46_layer_call_and_return_conditional_losses_1813344?
normalization_19/subSub*conv2d_46/StatefulPartitionedCall:output:0normalization_19_sub_y*
T0*/
_output_shapes
:?????????6,g
normalization_19/SqrtSqrtnormalization_19_sqrt_x*
T0*&
_output_shapes
:_
normalization_19/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_19/MaximumMaximumnormalization_19/Sqrt:y:0#normalization_19/Maximum/y:output:0*
T0*&
_output_shapes
:?
normalization_19/truedivRealDivnormalization_19/sub:z:0normalization_19/Maximum:z:0*
T0*/
_output_shapes
:?????????6,?
!conv2d_47/StatefulPartitionedCallStatefulPartitionedCallnormalization_19/truediv:z:0conv2d_47_1814155conv2d_47_1814157*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????6,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_47_layer_call_and_return_conditional_losses_1813367?
 max_pooling2d_13/PartitionedCallPartitionedCall*conv2d_47/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_1813151?
!conv2d_48/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_13/PartitionedCall:output:0conv2d_48_1814161conv2d_48_1814163*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_48_layer_call_and_return_conditional_losses_1813384?
!conv2d_49/StatefulPartitionedCallStatefulPartitionedCall*conv2d_48/StatefulPartitionedCall:output:0conv2d_49_1814166conv2d_49_1814168*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_49_layer_call_and_return_conditional_losses_1813400?
#average_pooling2d_2/PartitionedCallPartitionedCall*conv2d_49/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_average_pooling2d_2_layer_call_and_return_conditional_losses_1813163?
normalization_20/subSub,average_pooling2d_2/PartitionedCall:output:0normalization_20_sub_y*
T0*/
_output_shapes
:?????????g
normalization_20/SqrtSqrtnormalization_20_sqrt_x*
T0*&
_output_shapes
:_
normalization_20/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_20/MaximumMaximumnormalization_20/Sqrt:y:0#normalization_20/Maximum/y:output:0*
T0*&
_output_shapes
:?
normalization_20/truedivRealDivnormalization_20/sub:z:0normalization_20/Maximum:z:0*
T0*/
_output_shapes
:??????????
!conv2d_50/StatefulPartitionedCallStatefulPartitionedCallnormalization_20/truediv:z:0conv2d_50_1814179conv2d_50_1814181*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_50_layer_call_and_return_conditional_losses_1813424?
!conv2d_51/StatefulPartitionedCallStatefulPartitionedCall*conv2d_50/StatefulPartitionedCall:output:0conv2d_51_1814184conv2d_51_1814186*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_51_layer_call_and_return_conditional_losses_1813440?
 max_pooling2d_14/PartitionedCallPartitionedCall*conv2d_51/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_1813175?
!conv2d_52/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_14/PartitionedCall:output:0conv2d_52_1814190conv2d_52_1814192*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_52_layer_call_and_return_conditional_losses_1813457?
!conv2d_53/StatefulPartitionedCallStatefulPartitionedCall*conv2d_52/StatefulPartitionedCall:output:0conv2d_53_1814195conv2d_53_1814197*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_53_layer_call_and_return_conditional_losses_1813473?
normalization_21/subSub*conv2d_53/StatefulPartitionedCall:output:0normalization_21_sub_y*
T0*/
_output_shapes
:?????????g
normalization_21/SqrtSqrtnormalization_21_sqrt_x*
T0*&
_output_shapes
:_
normalization_21/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_21/MaximumMaximumnormalization_21/Sqrt:y:0#normalization_21/Maximum/y:output:0*
T0*&
_output_shapes
:?
normalization_21/truedivRealDivnormalization_21/sub:z:0normalization_21/Maximum:z:0*
T0*/
_output_shapes
:??????????
flatten_1/PartitionedCallPartitionedCallnormalization_21/truediv:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_1_layer_call_and_return_conditional_losses_1813492?
dense_5/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_5_1814208dense_5_1814210*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_5_layer_call_and_return_conditional_losses_1813504?
dense_6/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0dense_6_1814213dense_6_1814215*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_6_layer_call_and_return_conditional_losses_1813520?
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_1814218dense_7_1814220*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_7_layer_call_and_return_conditional_losses_1813536?
dense_8/StatefulPartitionedCallStatefulPartitionedCall(dense_7/StatefulPartitionedCall:output:0dense_8_1814223dense_8_1814225*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_8_layer_call_and_return_conditional_losses_1813552?
dense_9/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0dense_9_1814228dense_9_1814230*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_1813568?
 dense_10/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0dense_10_1814233dense_10_1814235*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_10_layer_call_and_return_conditional_losses_1813585x
IdentityIdentity)dense_10/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv2d_39/StatefulPartitionedCall"^conv2d_40/StatefulPartitionedCall"^conv2d_41/StatefulPartitionedCall"^conv2d_42/StatefulPartitionedCall"^conv2d_43/StatefulPartitionedCall"^conv2d_44/StatefulPartitionedCall"^conv2d_45/StatefulPartitionedCall"^conv2d_46/StatefulPartitionedCall"^conv2d_47/StatefulPartitionedCall"^conv2d_48/StatefulPartitionedCall"^conv2d_49/StatefulPartitionedCall"^conv2d_50/StatefulPartitionedCall"^conv2d_51/StatefulPartitionedCall"^conv2d_52/StatefulPartitionedCall"^conv2d_53/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall"^dropout_8/StatefulPartitionedCall"^dropout_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:???????????::: : : : ::: : : : : : ::: : : : : : ::: : : : : : ::: : : : : : : : ::: : : : : : : : : : : : 2F
!conv2d_39/StatefulPartitionedCall!conv2d_39/StatefulPartitionedCall2F
!conv2d_40/StatefulPartitionedCall!conv2d_40/StatefulPartitionedCall2F
!conv2d_41/StatefulPartitionedCall!conv2d_41/StatefulPartitionedCall2F
!conv2d_42/StatefulPartitionedCall!conv2d_42/StatefulPartitionedCall2F
!conv2d_43/StatefulPartitionedCall!conv2d_43/StatefulPartitionedCall2F
!conv2d_44/StatefulPartitionedCall!conv2d_44/StatefulPartitionedCall2F
!conv2d_45/StatefulPartitionedCall!conv2d_45/StatefulPartitionedCall2F
!conv2d_46/StatefulPartitionedCall!conv2d_46/StatefulPartitionedCall2F
!conv2d_47/StatefulPartitionedCall!conv2d_47/StatefulPartitionedCall2F
!conv2d_48/StatefulPartitionedCall!conv2d_48/StatefulPartitionedCall2F
!conv2d_49/StatefulPartitionedCall!conv2d_49/StatefulPartitionedCall2F
!conv2d_50/StatefulPartitionedCall!conv2d_50/StatefulPartitionedCall2F
!conv2d_51/StatefulPartitionedCall!conv2d_51/StatefulPartitionedCall2F
!conv2d_52/StatefulPartitionedCall!conv2d_52/StatefulPartitionedCall2F
!conv2d_53/StatefulPartitionedCall!conv2d_53/StatefulPartitionedCall2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2F
!dropout_8/StatefulPartitionedCall!dropout_8/StatefulPartitionedCall2F
!dropout_9/StatefulPartitionedCall!dropout_9/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
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
::,)(
&
_output_shapes
::,*(
&
_output_shapes
:
ִ
?H
 __inference__traced_save_1816522
file_prefix4
0savev2_normalization_16_mean_read_readvariableop8
4savev2_normalization_16_variance_read_readvariableop5
1savev2_normalization_16_count_read_readvariableop	/
+savev2_conv2d_39_kernel_read_readvariableop-
)savev2_conv2d_39_bias_read_readvariableop/
+savev2_conv2d_40_kernel_read_readvariableop-
)savev2_conv2d_40_bias_read_readvariableop4
0savev2_normalization_17_mean_read_readvariableop8
4savev2_normalization_17_variance_read_readvariableop5
1savev2_normalization_17_count_read_readvariableop	/
+savev2_conv2d_41_kernel_read_readvariableop-
)savev2_conv2d_41_bias_read_readvariableop/
+savev2_conv2d_42_kernel_read_readvariableop-
)savev2_conv2d_42_bias_read_readvariableop/
+savev2_conv2d_43_kernel_read_readvariableop-
)savev2_conv2d_43_bias_read_readvariableop4
0savev2_normalization_18_mean_read_readvariableop8
4savev2_normalization_18_variance_read_readvariableop5
1savev2_normalization_18_count_read_readvariableop	/
+savev2_conv2d_44_kernel_read_readvariableop-
)savev2_conv2d_44_bias_read_readvariableop/
+savev2_conv2d_45_kernel_read_readvariableop-
)savev2_conv2d_45_bias_read_readvariableop/
+savev2_conv2d_46_kernel_read_readvariableop-
)savev2_conv2d_46_bias_read_readvariableop4
0savev2_normalization_19_mean_read_readvariableop8
4savev2_normalization_19_variance_read_readvariableop5
1savev2_normalization_19_count_read_readvariableop	/
+savev2_conv2d_47_kernel_read_readvariableop-
)savev2_conv2d_47_bias_read_readvariableop/
+savev2_conv2d_48_kernel_read_readvariableop-
)savev2_conv2d_48_bias_read_readvariableop/
+savev2_conv2d_49_kernel_read_readvariableop-
)savev2_conv2d_49_bias_read_readvariableop4
0savev2_normalization_20_mean_read_readvariableop8
4savev2_normalization_20_variance_read_readvariableop5
1savev2_normalization_20_count_read_readvariableop	/
+savev2_conv2d_50_kernel_read_readvariableop-
)savev2_conv2d_50_bias_read_readvariableop/
+savev2_conv2d_51_kernel_read_readvariableop-
)savev2_conv2d_51_bias_read_readvariableop/
+savev2_conv2d_52_kernel_read_readvariableop-
)savev2_conv2d_52_bias_read_readvariableop/
+savev2_conv2d_53_kernel_read_readvariableop-
)savev2_conv2d_53_bias_read_readvariableop4
0savev2_normalization_21_mean_read_readvariableop8
4savev2_normalization_21_variance_read_readvariableop5
1savev2_normalization_21_count_read_readvariableop	-
)savev2_dense_5_kernel_read_readvariableop+
'savev2_dense_5_bias_read_readvariableop-
)savev2_dense_6_kernel_read_readvariableop+
'savev2_dense_6_bias_read_readvariableop-
)savev2_dense_7_kernel_read_readvariableop+
'savev2_dense_7_bias_read_readvariableop-
)savev2_dense_8_kernel_read_readvariableop+
'savev2_dense_8_bias_read_readvariableop-
)savev2_dense_9_kernel_read_readvariableop+
'savev2_dense_9_bias_read_readvariableop.
*savev2_dense_10_kernel_read_readvariableop,
(savev2_dense_10_bias_read_readvariableop,
(savev2_adadelta_iter_read_readvariableop	-
)savev2_adadelta_decay_read_readvariableop5
1savev2_adadelta_learning_rate_read_readvariableop+
'savev2_adadelta_rho_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop-
)savev2_true_positives_read_readvariableop.
*savev2_false_positives_read_readvariableop/
+savev2_true_positives_1_read_readvariableop.
*savev2_false_negatives_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableopC
?savev2_adadelta_conv2d_39_kernel_accum_grad_read_readvariableopA
=savev2_adadelta_conv2d_39_bias_accum_grad_read_readvariableopC
?savev2_adadelta_conv2d_40_kernel_accum_grad_read_readvariableopA
=savev2_adadelta_conv2d_40_bias_accum_grad_read_readvariableopC
?savev2_adadelta_conv2d_41_kernel_accum_grad_read_readvariableopA
=savev2_adadelta_conv2d_41_bias_accum_grad_read_readvariableopC
?savev2_adadelta_conv2d_42_kernel_accum_grad_read_readvariableopA
=savev2_adadelta_conv2d_42_bias_accum_grad_read_readvariableopC
?savev2_adadelta_conv2d_43_kernel_accum_grad_read_readvariableopA
=savev2_adadelta_conv2d_43_bias_accum_grad_read_readvariableopC
?savev2_adadelta_conv2d_44_kernel_accum_grad_read_readvariableopA
=savev2_adadelta_conv2d_44_bias_accum_grad_read_readvariableopC
?savev2_adadelta_conv2d_45_kernel_accum_grad_read_readvariableopA
=savev2_adadelta_conv2d_45_bias_accum_grad_read_readvariableopC
?savev2_adadelta_conv2d_46_kernel_accum_grad_read_readvariableopA
=savev2_adadelta_conv2d_46_bias_accum_grad_read_readvariableopC
?savev2_adadelta_conv2d_47_kernel_accum_grad_read_readvariableopA
=savev2_adadelta_conv2d_47_bias_accum_grad_read_readvariableopC
?savev2_adadelta_conv2d_48_kernel_accum_grad_read_readvariableopA
=savev2_adadelta_conv2d_48_bias_accum_grad_read_readvariableopC
?savev2_adadelta_conv2d_49_kernel_accum_grad_read_readvariableopA
=savev2_adadelta_conv2d_49_bias_accum_grad_read_readvariableopC
?savev2_adadelta_conv2d_50_kernel_accum_grad_read_readvariableopA
=savev2_adadelta_conv2d_50_bias_accum_grad_read_readvariableopC
?savev2_adadelta_conv2d_51_kernel_accum_grad_read_readvariableopA
=savev2_adadelta_conv2d_51_bias_accum_grad_read_readvariableopC
?savev2_adadelta_conv2d_52_kernel_accum_grad_read_readvariableopA
=savev2_adadelta_conv2d_52_bias_accum_grad_read_readvariableopC
?savev2_adadelta_conv2d_53_kernel_accum_grad_read_readvariableopA
=savev2_adadelta_conv2d_53_bias_accum_grad_read_readvariableopA
=savev2_adadelta_dense_5_kernel_accum_grad_read_readvariableop?
;savev2_adadelta_dense_5_bias_accum_grad_read_readvariableopA
=savev2_adadelta_dense_6_kernel_accum_grad_read_readvariableop?
;savev2_adadelta_dense_6_bias_accum_grad_read_readvariableopA
=savev2_adadelta_dense_7_kernel_accum_grad_read_readvariableop?
;savev2_adadelta_dense_7_bias_accum_grad_read_readvariableopA
=savev2_adadelta_dense_8_kernel_accum_grad_read_readvariableop?
;savev2_adadelta_dense_8_bias_accum_grad_read_readvariableopA
=savev2_adadelta_dense_9_kernel_accum_grad_read_readvariableop?
;savev2_adadelta_dense_9_bias_accum_grad_read_readvariableopB
>savev2_adadelta_dense_10_kernel_accum_grad_read_readvariableop@
<savev2_adadelta_dense_10_bias_accum_grad_read_readvariableopB
>savev2_adadelta_conv2d_39_kernel_accum_var_read_readvariableop@
<savev2_adadelta_conv2d_39_bias_accum_var_read_readvariableopB
>savev2_adadelta_conv2d_40_kernel_accum_var_read_readvariableop@
<savev2_adadelta_conv2d_40_bias_accum_var_read_readvariableopB
>savev2_adadelta_conv2d_41_kernel_accum_var_read_readvariableop@
<savev2_adadelta_conv2d_41_bias_accum_var_read_readvariableopB
>savev2_adadelta_conv2d_42_kernel_accum_var_read_readvariableop@
<savev2_adadelta_conv2d_42_bias_accum_var_read_readvariableopB
>savev2_adadelta_conv2d_43_kernel_accum_var_read_readvariableop@
<savev2_adadelta_conv2d_43_bias_accum_var_read_readvariableopB
>savev2_adadelta_conv2d_44_kernel_accum_var_read_readvariableop@
<savev2_adadelta_conv2d_44_bias_accum_var_read_readvariableopB
>savev2_adadelta_conv2d_45_kernel_accum_var_read_readvariableop@
<savev2_adadelta_conv2d_45_bias_accum_var_read_readvariableopB
>savev2_adadelta_conv2d_46_kernel_accum_var_read_readvariableop@
<savev2_adadelta_conv2d_46_bias_accum_var_read_readvariableopB
>savev2_adadelta_conv2d_47_kernel_accum_var_read_readvariableop@
<savev2_adadelta_conv2d_47_bias_accum_var_read_readvariableopB
>savev2_adadelta_conv2d_48_kernel_accum_var_read_readvariableop@
<savev2_adadelta_conv2d_48_bias_accum_var_read_readvariableopB
>savev2_adadelta_conv2d_49_kernel_accum_var_read_readvariableop@
<savev2_adadelta_conv2d_49_bias_accum_var_read_readvariableopB
>savev2_adadelta_conv2d_50_kernel_accum_var_read_readvariableop@
<savev2_adadelta_conv2d_50_bias_accum_var_read_readvariableopB
>savev2_adadelta_conv2d_51_kernel_accum_var_read_readvariableop@
<savev2_adadelta_conv2d_51_bias_accum_var_read_readvariableopB
>savev2_adadelta_conv2d_52_kernel_accum_var_read_readvariableop@
<savev2_adadelta_conv2d_52_bias_accum_var_read_readvariableopB
>savev2_adadelta_conv2d_53_kernel_accum_var_read_readvariableop@
<savev2_adadelta_conv2d_53_bias_accum_var_read_readvariableop@
<savev2_adadelta_dense_5_kernel_accum_var_read_readvariableop>
:savev2_adadelta_dense_5_bias_accum_var_read_readvariableop@
<savev2_adadelta_dense_6_kernel_accum_var_read_readvariableop>
:savev2_adadelta_dense_6_bias_accum_var_read_readvariableop@
<savev2_adadelta_dense_7_kernel_accum_var_read_readvariableop>
:savev2_adadelta_dense_7_bias_accum_var_read_readvariableop@
<savev2_adadelta_dense_8_kernel_accum_var_read_readvariableop>
:savev2_adadelta_dense_8_bias_accum_var_read_readvariableop@
<savev2_adadelta_dense_9_kernel_accum_var_read_readvariableop>
:savev2_adadelta_dense_9_bias_accum_var_read_readvariableopA
=savev2_adadelta_dense_10_kernel_accum_var_read_readvariableop?
;savev2_adadelta_dense_10_bias_accum_var_read_readvariableop
savev2_const_12

identity_1??MergeV2Checkpointsw
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
_temp/part?
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
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?\
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes	
:?*
dtype0*?\
value?\B?\?B4layer_with_weights-0/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-0/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-0/count/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-3/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/count/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-7/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/count/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/mean/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-11/variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-11/count/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/mean/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-15/variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-15/count/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-17/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-17/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-19/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-19/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-20/mean/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-20/variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-20/count/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-21/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-21/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-22/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-22/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-23/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-23/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-24/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-24/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-25/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-25/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-26/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-26/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/1/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/1/false_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-21/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-21/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-22/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-22/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-23/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-23/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-24/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-24/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-25/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-25/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-26/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-26/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-21/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-21/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-22/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-22/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-23/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-23/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-24/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-24/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-25/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-25/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-26/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-26/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:?*
dtype0*?
value?B??B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?E
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:00savev2_normalization_16_mean_read_readvariableop4savev2_normalization_16_variance_read_readvariableop1savev2_normalization_16_count_read_readvariableop+savev2_conv2d_39_kernel_read_readvariableop)savev2_conv2d_39_bias_read_readvariableop+savev2_conv2d_40_kernel_read_readvariableop)savev2_conv2d_40_bias_read_readvariableop0savev2_normalization_17_mean_read_readvariableop4savev2_normalization_17_variance_read_readvariableop1savev2_normalization_17_count_read_readvariableop+savev2_conv2d_41_kernel_read_readvariableop)savev2_conv2d_41_bias_read_readvariableop+savev2_conv2d_42_kernel_read_readvariableop)savev2_conv2d_42_bias_read_readvariableop+savev2_conv2d_43_kernel_read_readvariableop)savev2_conv2d_43_bias_read_readvariableop0savev2_normalization_18_mean_read_readvariableop4savev2_normalization_18_variance_read_readvariableop1savev2_normalization_18_count_read_readvariableop+savev2_conv2d_44_kernel_read_readvariableop)savev2_conv2d_44_bias_read_readvariableop+savev2_conv2d_45_kernel_read_readvariableop)savev2_conv2d_45_bias_read_readvariableop+savev2_conv2d_46_kernel_read_readvariableop)savev2_conv2d_46_bias_read_readvariableop0savev2_normalization_19_mean_read_readvariableop4savev2_normalization_19_variance_read_readvariableop1savev2_normalization_19_count_read_readvariableop+savev2_conv2d_47_kernel_read_readvariableop)savev2_conv2d_47_bias_read_readvariableop+savev2_conv2d_48_kernel_read_readvariableop)savev2_conv2d_48_bias_read_readvariableop+savev2_conv2d_49_kernel_read_readvariableop)savev2_conv2d_49_bias_read_readvariableop0savev2_normalization_20_mean_read_readvariableop4savev2_normalization_20_variance_read_readvariableop1savev2_normalization_20_count_read_readvariableop+savev2_conv2d_50_kernel_read_readvariableop)savev2_conv2d_50_bias_read_readvariableop+savev2_conv2d_51_kernel_read_readvariableop)savev2_conv2d_51_bias_read_readvariableop+savev2_conv2d_52_kernel_read_readvariableop)savev2_conv2d_52_bias_read_readvariableop+savev2_conv2d_53_kernel_read_readvariableop)savev2_conv2d_53_bias_read_readvariableop0savev2_normalization_21_mean_read_readvariableop4savev2_normalization_21_variance_read_readvariableop1savev2_normalization_21_count_read_readvariableop)savev2_dense_5_kernel_read_readvariableop'savev2_dense_5_bias_read_readvariableop)savev2_dense_6_kernel_read_readvariableop'savev2_dense_6_bias_read_readvariableop)savev2_dense_7_kernel_read_readvariableop'savev2_dense_7_bias_read_readvariableop)savev2_dense_8_kernel_read_readvariableop'savev2_dense_8_bias_read_readvariableop)savev2_dense_9_kernel_read_readvariableop'savev2_dense_9_bias_read_readvariableop*savev2_dense_10_kernel_read_readvariableop(savev2_dense_10_bias_read_readvariableop(savev2_adadelta_iter_read_readvariableop)savev2_adadelta_decay_read_readvariableop1savev2_adadelta_learning_rate_read_readvariableop'savev2_adadelta_rho_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop)savev2_true_positives_read_readvariableop*savev2_false_positives_read_readvariableop+savev2_true_positives_1_read_readvariableop*savev2_false_negatives_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop?savev2_adadelta_conv2d_39_kernel_accum_grad_read_readvariableop=savev2_adadelta_conv2d_39_bias_accum_grad_read_readvariableop?savev2_adadelta_conv2d_40_kernel_accum_grad_read_readvariableop=savev2_adadelta_conv2d_40_bias_accum_grad_read_readvariableop?savev2_adadelta_conv2d_41_kernel_accum_grad_read_readvariableop=savev2_adadelta_conv2d_41_bias_accum_grad_read_readvariableop?savev2_adadelta_conv2d_42_kernel_accum_grad_read_readvariableop=savev2_adadelta_conv2d_42_bias_accum_grad_read_readvariableop?savev2_adadelta_conv2d_43_kernel_accum_grad_read_readvariableop=savev2_adadelta_conv2d_43_bias_accum_grad_read_readvariableop?savev2_adadelta_conv2d_44_kernel_accum_grad_read_readvariableop=savev2_adadelta_conv2d_44_bias_accum_grad_read_readvariableop?savev2_adadelta_conv2d_45_kernel_accum_grad_read_readvariableop=savev2_adadelta_conv2d_45_bias_accum_grad_read_readvariableop?savev2_adadelta_conv2d_46_kernel_accum_grad_read_readvariableop=savev2_adadelta_conv2d_46_bias_accum_grad_read_readvariableop?savev2_adadelta_conv2d_47_kernel_accum_grad_read_readvariableop=savev2_adadelta_conv2d_47_bias_accum_grad_read_readvariableop?savev2_adadelta_conv2d_48_kernel_accum_grad_read_readvariableop=savev2_adadelta_conv2d_48_bias_accum_grad_read_readvariableop?savev2_adadelta_conv2d_49_kernel_accum_grad_read_readvariableop=savev2_adadelta_conv2d_49_bias_accum_grad_read_readvariableop?savev2_adadelta_conv2d_50_kernel_accum_grad_read_readvariableop=savev2_adadelta_conv2d_50_bias_accum_grad_read_readvariableop?savev2_adadelta_conv2d_51_kernel_accum_grad_read_readvariableop=savev2_adadelta_conv2d_51_bias_accum_grad_read_readvariableop?savev2_adadelta_conv2d_52_kernel_accum_grad_read_readvariableop=savev2_adadelta_conv2d_52_bias_accum_grad_read_readvariableop?savev2_adadelta_conv2d_53_kernel_accum_grad_read_readvariableop=savev2_adadelta_conv2d_53_bias_accum_grad_read_readvariableop=savev2_adadelta_dense_5_kernel_accum_grad_read_readvariableop;savev2_adadelta_dense_5_bias_accum_grad_read_readvariableop=savev2_adadelta_dense_6_kernel_accum_grad_read_readvariableop;savev2_adadelta_dense_6_bias_accum_grad_read_readvariableop=savev2_adadelta_dense_7_kernel_accum_grad_read_readvariableop;savev2_adadelta_dense_7_bias_accum_grad_read_readvariableop=savev2_adadelta_dense_8_kernel_accum_grad_read_readvariableop;savev2_adadelta_dense_8_bias_accum_grad_read_readvariableop=savev2_adadelta_dense_9_kernel_accum_grad_read_readvariableop;savev2_adadelta_dense_9_bias_accum_grad_read_readvariableop>savev2_adadelta_dense_10_kernel_accum_grad_read_readvariableop<savev2_adadelta_dense_10_bias_accum_grad_read_readvariableop>savev2_adadelta_conv2d_39_kernel_accum_var_read_readvariableop<savev2_adadelta_conv2d_39_bias_accum_var_read_readvariableop>savev2_adadelta_conv2d_40_kernel_accum_var_read_readvariableop<savev2_adadelta_conv2d_40_bias_accum_var_read_readvariableop>savev2_adadelta_conv2d_41_kernel_accum_var_read_readvariableop<savev2_adadelta_conv2d_41_bias_accum_var_read_readvariableop>savev2_adadelta_conv2d_42_kernel_accum_var_read_readvariableop<savev2_adadelta_conv2d_42_bias_accum_var_read_readvariableop>savev2_adadelta_conv2d_43_kernel_accum_var_read_readvariableop<savev2_adadelta_conv2d_43_bias_accum_var_read_readvariableop>savev2_adadelta_conv2d_44_kernel_accum_var_read_readvariableop<savev2_adadelta_conv2d_44_bias_accum_var_read_readvariableop>savev2_adadelta_conv2d_45_kernel_accum_var_read_readvariableop<savev2_adadelta_conv2d_45_bias_accum_var_read_readvariableop>savev2_adadelta_conv2d_46_kernel_accum_var_read_readvariableop<savev2_adadelta_conv2d_46_bias_accum_var_read_readvariableop>savev2_adadelta_conv2d_47_kernel_accum_var_read_readvariableop<savev2_adadelta_conv2d_47_bias_accum_var_read_readvariableop>savev2_adadelta_conv2d_48_kernel_accum_var_read_readvariableop<savev2_adadelta_conv2d_48_bias_accum_var_read_readvariableop>savev2_adadelta_conv2d_49_kernel_accum_var_read_readvariableop<savev2_adadelta_conv2d_49_bias_accum_var_read_readvariableop>savev2_adadelta_conv2d_50_kernel_accum_var_read_readvariableop<savev2_adadelta_conv2d_50_bias_accum_var_read_readvariableop>savev2_adadelta_conv2d_51_kernel_accum_var_read_readvariableop<savev2_adadelta_conv2d_51_bias_accum_var_read_readvariableop>savev2_adadelta_conv2d_52_kernel_accum_var_read_readvariableop<savev2_adadelta_conv2d_52_bias_accum_var_read_readvariableop>savev2_adadelta_conv2d_53_kernel_accum_var_read_readvariableop<savev2_adadelta_conv2d_53_bias_accum_var_read_readvariableop<savev2_adadelta_dense_5_kernel_accum_var_read_readvariableop:savev2_adadelta_dense_5_bias_accum_var_read_readvariableop<savev2_adadelta_dense_6_kernel_accum_var_read_readvariableop:savev2_adadelta_dense_6_bias_accum_var_read_readvariableop<savev2_adadelta_dense_7_kernel_accum_var_read_readvariableop:savev2_adadelta_dense_7_bias_accum_var_read_readvariableop<savev2_adadelta_dense_8_kernel_accum_var_read_readvariableop:savev2_adadelta_dense_8_bias_accum_var_read_readvariableop<savev2_adadelta_dense_9_kernel_accum_var_read_readvariableop:savev2_adadelta_dense_9_bias_accum_var_read_readvariableop=savev2_adadelta_dense_10_kernel_accum_var_read_readvariableop;savev2_adadelta_dense_10_bias_accum_var_read_readvariableopsavev2_const_12"/device:CPU:0*
_output_shapes
 *?
dtypes?
?2?							?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
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

identity_1Identity_1:output:0*?
_input_shapes?
?: ::: : : : :::: ::::::::: ::::::::: ::::::::: : : : :::::::: : @:@:@ : : 0:0:0 : : :::: : : : : : ::::: : : : : :::::::::::::::::::: : : :::::: @:@:@ : : 0:0:0 : : :::: : : :::::::::::::::::::: : : :::::: @:@:@ : : 0:0:0 : : :::: 2(
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
: :,&(
&
_output_shapes
: : '

_output_shapes
: :,((
&
_output_shapes
: : )

_output_shapes
::,*(
&
_output_shapes
:: +

_output_shapes
::,,(
&
_output_shapes
:: -

_output_shapes
:: .

_output_shapes
:: /

_output_shapes
::0

_output_shapes
: :$1 

_output_shapes

: @: 2

_output_shapes
:@:$3 

_output_shapes

:@ : 4

_output_shapes
: :$5 

_output_shapes

: 0: 6

_output_shapes
:0:$7 

_output_shapes

:0 : 8

_output_shapes
: :$9 

_output_shapes

: : :

_output_shapes
::$; 

_output_shapes

:: <

_output_shapes
::=

_output_shapes
: :>

_output_shapes
: :?

_output_shapes
: :@

_output_shapes
: :A

_output_shapes
: :B

_output_shapes
: : C

_output_shapes
:: D

_output_shapes
:: E

_output_shapes
:: F

_output_shapes
::G

_output_shapes
: :H

_output_shapes
: :,I(
&
_output_shapes
: : J

_output_shapes
: :,K(
&
_output_shapes
: : L

_output_shapes
::,M(
&
_output_shapes
:: N

_output_shapes
::,O(
&
_output_shapes
:: P

_output_shapes
::,Q(
&
_output_shapes
:: R

_output_shapes
::,S(
&
_output_shapes
:: T

_output_shapes
::,U(
&
_output_shapes
:: V

_output_shapes
::,W(
&
_output_shapes
:: X

_output_shapes
::,Y(
&
_output_shapes
:: Z

_output_shapes
::,[(
&
_output_shapes
:: \

_output_shapes
::,](
&
_output_shapes
:: ^

_output_shapes
::,_(
&
_output_shapes
: : `

_output_shapes
: :,a(
&
_output_shapes
: : b

_output_shapes
::,c(
&
_output_shapes
:: d

_output_shapes
::,e(
&
_output_shapes
:: f

_output_shapes
::$g 

_output_shapes

: @: h

_output_shapes
:@:$i 

_output_shapes

:@ : j

_output_shapes
: :$k 

_output_shapes

: 0: l

_output_shapes
:0:$m 

_output_shapes

:0 : n

_output_shapes
: :$o 

_output_shapes

: : p

_output_shapes
::$q 

_output_shapes

:: r

_output_shapes
::,s(
&
_output_shapes
: : t

_output_shapes
: :,u(
&
_output_shapes
: : v

_output_shapes
::,w(
&
_output_shapes
:: x

_output_shapes
::,y(
&
_output_shapes
:: z

_output_shapes
::,{(
&
_output_shapes
:: |

_output_shapes
::,}(
&
_output_shapes
:: ~

_output_shapes
::,(
&
_output_shapes
::!?

_output_shapes
::-?(
&
_output_shapes
::!?

_output_shapes
::-?(
&
_output_shapes
::!?

_output_shapes
::-?(
&
_output_shapes
::!?

_output_shapes
::-?(
&
_output_shapes
::!?

_output_shapes
::-?(
&
_output_shapes
: :!?

_output_shapes
: :-?(
&
_output_shapes
: :!?

_output_shapes
::-?(
&
_output_shapes
::!?

_output_shapes
::-?(
&
_output_shapes
::!?

_output_shapes
::%? 

_output_shapes

: @:!?

_output_shapes
:@:%? 

_output_shapes

:@ :!?

_output_shapes
: :%? 

_output_shapes

: 0:!?

_output_shapes
:0:%? 

_output_shapes

:0 :!?

_output_shapes
: :%? 

_output_shapes

: :!?

_output_shapes
::%? 

_output_shapes

::!?

_output_shapes
::?

_output_shapes
: 
?
?
)__inference_dense_5_layer_call_fn_1815913

inputs
unknown: @
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_5_layer_call_and_return_conditional_losses_1813504o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?

?
F__inference_conv2d_42_layer_call_and_return_conditional_losses_1815617

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????mY*
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
:?????????mYg
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????mYw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????mY: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????mY
 
_user_specified_nameinputs
?

?
F__inference_conv2d_46_layer_call_and_return_conditional_losses_1813344

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????6,*
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
:?????????6,g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????6,w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????6,: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????6,
 
_user_specified_nameinputs
?

?
F__inference_conv2d_49_layer_call_and_return_conditional_losses_1815797

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????
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
:?????????
g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????
w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
d
F__inference_dropout_8_layer_call_and_return_conditional_losses_1813253

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????mYc

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????mY"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????mY:W S
/
_output_shapes
:?????????mY
 
_user_specified_nameinputs
?
?
%__inference_signature_wrapper_1815504
input_3
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

unknown_30$

unknown_31: 

unknown_32: $

unknown_33: 

unknown_34:$

unknown_35:

unknown_36:$

unknown_37:

unknown_38:

unknown_39

unknown_40

unknown_41: @

unknown_42:@

unknown_43:@ 

unknown_44: 

unknown_45: 0

unknown_46:0

unknown_47:0 

unknown_48: 

unknown_49: 

unknown_50:

unknown_51:

unknown_52:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52*B
Tin;
927*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*L
_read_only_resource_inputs.
,*	
!"#$%&'(+,-./0123456*0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__wrapped_model_1813118o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:???????????::: : : : ::: : : : : : ::: : : : : : ::: : : : : : ::: : : : : : : : ::: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_3:,(
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
::,)(
&
_output_shapes
::,*(
&
_output_shapes
:
?

?
E__inference_dense_10_layer_call_and_return_conditional_losses_1813585

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
F__inference_conv2d_53_layer_call_and_return_conditional_losses_1813473

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
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
:?????????g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?"
I__inference_sequential_2_layer_call_and_return_conditional_losses_1815389

inputs
normalization_16_sub_y
normalization_16_sqrt_xB
(conv2d_39_conv2d_readvariableop_resource: 7
)conv2d_39_biasadd_readvariableop_resource: B
(conv2d_40_conv2d_readvariableop_resource: 7
)conv2d_40_biasadd_readvariableop_resource:
normalization_17_sub_y
normalization_17_sqrt_xB
(conv2d_41_conv2d_readvariableop_resource:7
)conv2d_41_biasadd_readvariableop_resource:B
(conv2d_42_conv2d_readvariableop_resource:7
)conv2d_42_biasadd_readvariableop_resource:B
(conv2d_43_conv2d_readvariableop_resource:7
)conv2d_43_biasadd_readvariableop_resource:
normalization_18_sub_y
normalization_18_sqrt_xB
(conv2d_44_conv2d_readvariableop_resource:7
)conv2d_44_biasadd_readvariableop_resource:B
(conv2d_45_conv2d_readvariableop_resource:7
)conv2d_45_biasadd_readvariableop_resource:B
(conv2d_46_conv2d_readvariableop_resource:7
)conv2d_46_biasadd_readvariableop_resource:
normalization_19_sub_y
normalization_19_sqrt_xB
(conv2d_47_conv2d_readvariableop_resource:7
)conv2d_47_biasadd_readvariableop_resource:B
(conv2d_48_conv2d_readvariableop_resource:7
)conv2d_48_biasadd_readvariableop_resource:B
(conv2d_49_conv2d_readvariableop_resource:7
)conv2d_49_biasadd_readvariableop_resource:
normalization_20_sub_y
normalization_20_sqrt_xB
(conv2d_50_conv2d_readvariableop_resource: 7
)conv2d_50_biasadd_readvariableop_resource: B
(conv2d_51_conv2d_readvariableop_resource: 7
)conv2d_51_biasadd_readvariableop_resource:B
(conv2d_52_conv2d_readvariableop_resource:7
)conv2d_52_biasadd_readvariableop_resource:B
(conv2d_53_conv2d_readvariableop_resource:7
)conv2d_53_biasadd_readvariableop_resource:
normalization_21_sub_y
normalization_21_sqrt_x8
&dense_5_matmul_readvariableop_resource: @5
'dense_5_biasadd_readvariableop_resource:@8
&dense_6_matmul_readvariableop_resource:@ 5
'dense_6_biasadd_readvariableop_resource: 8
&dense_7_matmul_readvariableop_resource: 05
'dense_7_biasadd_readvariableop_resource:08
&dense_8_matmul_readvariableop_resource:0 5
'dense_8_biasadd_readvariableop_resource: 8
&dense_9_matmul_readvariableop_resource: 5
'dense_9_biasadd_readvariableop_resource:9
'dense_10_matmul_readvariableop_resource:6
(dense_10_biasadd_readvariableop_resource:
identity?? conv2d_39/BiasAdd/ReadVariableOp?conv2d_39/Conv2D/ReadVariableOp? conv2d_40/BiasAdd/ReadVariableOp?conv2d_40/Conv2D/ReadVariableOp? conv2d_41/BiasAdd/ReadVariableOp?conv2d_41/Conv2D/ReadVariableOp? conv2d_42/BiasAdd/ReadVariableOp?conv2d_42/Conv2D/ReadVariableOp? conv2d_43/BiasAdd/ReadVariableOp?conv2d_43/Conv2D/ReadVariableOp? conv2d_44/BiasAdd/ReadVariableOp?conv2d_44/Conv2D/ReadVariableOp? conv2d_45/BiasAdd/ReadVariableOp?conv2d_45/Conv2D/ReadVariableOp? conv2d_46/BiasAdd/ReadVariableOp?conv2d_46/Conv2D/ReadVariableOp? conv2d_47/BiasAdd/ReadVariableOp?conv2d_47/Conv2D/ReadVariableOp? conv2d_48/BiasAdd/ReadVariableOp?conv2d_48/Conv2D/ReadVariableOp? conv2d_49/BiasAdd/ReadVariableOp?conv2d_49/Conv2D/ReadVariableOp? conv2d_50/BiasAdd/ReadVariableOp?conv2d_50/Conv2D/ReadVariableOp? conv2d_51/BiasAdd/ReadVariableOp?conv2d_51/Conv2D/ReadVariableOp? conv2d_52/BiasAdd/ReadVariableOp?conv2d_52/Conv2D/ReadVariableOp? conv2d_53/BiasAdd/ReadVariableOp?conv2d_53/Conv2D/ReadVariableOp?dense_10/BiasAdd/ReadVariableOp?dense_10/MatMul/ReadVariableOp?dense_5/BiasAdd/ReadVariableOp?dense_5/MatMul/ReadVariableOp?dense_6/BiasAdd/ReadVariableOp?dense_6/MatMul/ReadVariableOp?dense_7/BiasAdd/ReadVariableOp?dense_7/MatMul/ReadVariableOp?dense_8/BiasAdd/ReadVariableOp?dense_8/MatMul/ReadVariableOp?dense_9/BiasAdd/ReadVariableOp?dense_9/MatMul/ReadVariableOpw
normalization_16/subSubinputsnormalization_16_sub_y*
T0*1
_output_shapes
:???????????g
normalization_16/SqrtSqrtnormalization_16_sqrt_x*
T0*&
_output_shapes
:_
normalization_16/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_16/MaximumMaximumnormalization_16/Sqrt:y:0#normalization_16/Maximum/y:output:0*
T0*&
_output_shapes
:?
normalization_16/truedivRealDivnormalization_16/sub:z:0normalization_16/Maximum:z:0*
T0*1
_output_shapes
:????????????
conv2d_39/Conv2D/ReadVariableOpReadVariableOp(conv2d_39_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_39/Conv2DConv2Dnormalization_16/truediv:z:0'conv2d_39/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingSAME*
strides
?
 conv2d_39/BiasAdd/ReadVariableOpReadVariableOp)conv2d_39_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_39/BiasAddBiasAddconv2d_39/Conv2D:output:0(conv2d_39/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? ?
conv2d_40/Conv2D/ReadVariableOpReadVariableOp(conv2d_40_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_40/Conv2DConv2Dconv2d_39/BiasAdd:output:0'conv2d_40/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
 conv2d_40/BiasAdd/ReadVariableOpReadVariableOp)conv2d_40_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_40/BiasAddBiasAddconv2d_40/Conv2D:output:0(conv2d_40/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:????????????
normalization_17/subSubconv2d_40/BiasAdd:output:0normalization_17_sub_y*
T0*1
_output_shapes
:???????????g
normalization_17/SqrtSqrtnormalization_17_sqrt_x*
T0*&
_output_shapes
:_
normalization_17/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_17/MaximumMaximumnormalization_17/Sqrt:y:0#normalization_17/Maximum/y:output:0*
T0*&
_output_shapes
:?
normalization_17/truedivRealDivnormalization_17/sub:z:0normalization_17/Maximum:z:0*
T0*1
_output_shapes
:????????????
conv2d_41/Conv2D/ReadVariableOpReadVariableOp(conv2d_41_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_41/Conv2DConv2Dnormalization_17/truediv:z:0'conv2d_41/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
 conv2d_41/BiasAdd/ReadVariableOpReadVariableOp)conv2d_41_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_41/BiasAddBiasAddconv2d_41/Conv2D:output:0(conv2d_41/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:????????????
max_pooling2d_11/MaxPoolMaxPoolconv2d_41/BiasAdd:output:0*/
_output_shapes
:?????????mY*
ksize
*
paddingVALID*
strides
\
dropout_8/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
dropout_8/dropout/MulMul!max_pooling2d_11/MaxPool:output:0 dropout_8/dropout/Const:output:0*
T0*/
_output_shapes
:?????????mYh
dropout_8/dropout/ShapeShape!max_pooling2d_11/MaxPool:output:0*
T0*
_output_shapes
:?
.dropout_8/dropout/random_uniform/RandomUniformRandomUniform dropout_8/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????mY*
dtype0e
 dropout_8/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout_8/dropout/GreaterEqualGreaterEqual7dropout_8/dropout/random_uniform/RandomUniform:output:0)dropout_8/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????mY?
dropout_8/dropout/CastCast"dropout_8/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????mY?
dropout_8/dropout/Mul_1Muldropout_8/dropout/Mul:z:0dropout_8/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????mY?
conv2d_42/Conv2D/ReadVariableOpReadVariableOp(conv2d_42_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_42/Conv2DConv2Ddropout_8/dropout/Mul_1:z:0'conv2d_42/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????mY*
paddingSAME*
strides
?
 conv2d_42/BiasAdd/ReadVariableOpReadVariableOp)conv2d_42_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_42/BiasAddBiasAddconv2d_42/Conv2D:output:0(conv2d_42/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????mY?
conv2d_43/Conv2D/ReadVariableOpReadVariableOp(conv2d_43_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_43/Conv2DConv2Dconv2d_42/BiasAdd:output:0'conv2d_43/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????mY*
paddingSAME*
strides
?
 conv2d_43/BiasAdd/ReadVariableOpReadVariableOp)conv2d_43_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_43/BiasAddBiasAddconv2d_43/Conv2D:output:0(conv2d_43/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????mY?
normalization_18/subSubconv2d_43/BiasAdd:output:0normalization_18_sub_y*
T0*/
_output_shapes
:?????????mYg
normalization_18/SqrtSqrtnormalization_18_sqrt_x*
T0*&
_output_shapes
:_
normalization_18/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_18/MaximumMaximumnormalization_18/Sqrt:y:0#normalization_18/Maximum/y:output:0*
T0*&
_output_shapes
:?
normalization_18/truedivRealDivnormalization_18/sub:z:0normalization_18/Maximum:z:0*
T0*/
_output_shapes
:?????????mY?
conv2d_44/Conv2D/ReadVariableOpReadVariableOp(conv2d_44_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_44/Conv2DConv2Dnormalization_18/truediv:z:0'conv2d_44/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????mY*
paddingSAME*
strides
?
 conv2d_44/BiasAdd/ReadVariableOpReadVariableOp)conv2d_44_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_44/BiasAddBiasAddconv2d_44/Conv2D:output:0(conv2d_44/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????mY?
max_pooling2d_12/MaxPoolMaxPoolconv2d_44/BiasAdd:output:0*/
_output_shapes
:?????????6,*
ksize
*
paddingVALID*
strides
\
dropout_9/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
dropout_9/dropout/MulMul!max_pooling2d_12/MaxPool:output:0 dropout_9/dropout/Const:output:0*
T0*/
_output_shapes
:?????????6,h
dropout_9/dropout/ShapeShape!max_pooling2d_12/MaxPool:output:0*
T0*
_output_shapes
:?
.dropout_9/dropout/random_uniform/RandomUniformRandomUniform dropout_9/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????6,*
dtype0e
 dropout_9/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout_9/dropout/GreaterEqualGreaterEqual7dropout_9/dropout/random_uniform/RandomUniform:output:0)dropout_9/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????6,?
dropout_9/dropout/CastCast"dropout_9/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????6,?
dropout_9/dropout/Mul_1Muldropout_9/dropout/Mul:z:0dropout_9/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????6,?
conv2d_45/Conv2D/ReadVariableOpReadVariableOp(conv2d_45_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_45/Conv2DConv2Ddropout_9/dropout/Mul_1:z:0'conv2d_45/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????6,*
paddingSAME*
strides
?
 conv2d_45/BiasAdd/ReadVariableOpReadVariableOp)conv2d_45_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_45/BiasAddBiasAddconv2d_45/Conv2D:output:0(conv2d_45/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????6,?
conv2d_46/Conv2D/ReadVariableOpReadVariableOp(conv2d_46_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_46/Conv2DConv2Dconv2d_45/BiasAdd:output:0'conv2d_46/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????6,*
paddingSAME*
strides
?
 conv2d_46/BiasAdd/ReadVariableOpReadVariableOp)conv2d_46_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_46/BiasAddBiasAddconv2d_46/Conv2D:output:0(conv2d_46/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????6,?
normalization_19/subSubconv2d_46/BiasAdd:output:0normalization_19_sub_y*
T0*/
_output_shapes
:?????????6,g
normalization_19/SqrtSqrtnormalization_19_sqrt_x*
T0*&
_output_shapes
:_
normalization_19/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_19/MaximumMaximumnormalization_19/Sqrt:y:0#normalization_19/Maximum/y:output:0*
T0*&
_output_shapes
:?
normalization_19/truedivRealDivnormalization_19/sub:z:0normalization_19/Maximum:z:0*
T0*/
_output_shapes
:?????????6,?
conv2d_47/Conv2D/ReadVariableOpReadVariableOp(conv2d_47_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_47/Conv2DConv2Dnormalization_19/truediv:z:0'conv2d_47/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????6,*
paddingSAME*
strides
?
 conv2d_47/BiasAdd/ReadVariableOpReadVariableOp)conv2d_47_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_47/BiasAddBiasAddconv2d_47/Conv2D:output:0(conv2d_47/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????6,?
max_pooling2d_13/MaxPoolMaxPoolconv2d_47/BiasAdd:output:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
?
conv2d_48/Conv2D/ReadVariableOpReadVariableOp(conv2d_48_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_48/Conv2DConv2D!max_pooling2d_13/MaxPool:output:0'conv2d_48/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????	*
paddingVALID*
strides
?
 conv2d_48/BiasAdd/ReadVariableOpReadVariableOp)conv2d_48_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_48/BiasAddBiasAddconv2d_48/Conv2D:output:0(conv2d_48/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????	?
conv2d_49/Conv2D/ReadVariableOpReadVariableOp(conv2d_49_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_49/Conv2DConv2Dconv2d_48/BiasAdd:output:0'conv2d_49/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????
*
paddingVALID*
strides
?
 conv2d_49/BiasAdd/ReadVariableOpReadVariableOp)conv2d_49_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_49/BiasAddBiasAddconv2d_49/Conv2D:output:0(conv2d_49/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????
?
average_pooling2d_2/AvgPoolAvgPoolconv2d_49/BiasAdd:output:0*
T0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
?
normalization_20/subSub$average_pooling2d_2/AvgPool:output:0normalization_20_sub_y*
T0*/
_output_shapes
:?????????g
normalization_20/SqrtSqrtnormalization_20_sqrt_x*
T0*&
_output_shapes
:_
normalization_20/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_20/MaximumMaximumnormalization_20/Sqrt:y:0#normalization_20/Maximum/y:output:0*
T0*&
_output_shapes
:?
normalization_20/truedivRealDivnormalization_20/sub:z:0normalization_20/Maximum:z:0*
T0*/
_output_shapes
:??????????
conv2d_50/Conv2D/ReadVariableOpReadVariableOp(conv2d_50_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_50/Conv2DConv2Dnormalization_20/truediv:z:0'conv2d_50/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
?
 conv2d_50/BiasAdd/ReadVariableOpReadVariableOp)conv2d_50_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_50/BiasAddBiasAddconv2d_50/Conv2D:output:0(conv2d_50/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? ?
conv2d_51/Conv2D/ReadVariableOpReadVariableOp(conv2d_51_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_51/Conv2DConv2Dconv2d_50/BiasAdd:output:0'conv2d_51/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
?
 conv2d_51/BiasAdd/ReadVariableOpReadVariableOp)conv2d_51_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_51/BiasAddBiasAddconv2d_51/Conv2D:output:0(conv2d_51/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:??????????
max_pooling2d_14/MaxPoolMaxPoolconv2d_51/BiasAdd:output:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
?
conv2d_52/Conv2D/ReadVariableOpReadVariableOp(conv2d_52_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_52/Conv2DConv2D!max_pooling2d_14/MaxPool:output:0'conv2d_52/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
?
 conv2d_52/BiasAdd/ReadVariableOpReadVariableOp)conv2d_52_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_52/BiasAddBiasAddconv2d_52/Conv2D:output:0(conv2d_52/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:??????????
conv2d_53/Conv2D/ReadVariableOpReadVariableOp(conv2d_53_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_53/Conv2DConv2Dconv2d_52/BiasAdd:output:0'conv2d_53/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
?
 conv2d_53/BiasAdd/ReadVariableOpReadVariableOp)conv2d_53_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_53/BiasAddBiasAddconv2d_53/Conv2D:output:0(conv2d_53/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:??????????
normalization_21/subSubconv2d_53/BiasAdd:output:0normalization_21_sub_y*
T0*/
_output_shapes
:?????????g
normalization_21/SqrtSqrtnormalization_21_sqrt_x*
T0*&
_output_shapes
:_
normalization_21/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization_21/MaximumMaximumnormalization_21/Sqrt:y:0#normalization_21/Maximum/y:output:0*
T0*&
_output_shapes
:?
normalization_21/truedivRealDivnormalization_21/sub:z:0normalization_21/Maximum:z:0*
T0*/
_output_shapes
:?????????`
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"????    ?
flatten_1/ReshapeReshapenormalization_21/truediv:z:0flatten_1/Const:output:0*
T0*'
_output_shapes
:????????? ?
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes

: @*
dtype0?
dense_5/MatMulMatMulflatten_1/Reshape:output:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0?
dense_6/MatMulMatMuldense_5/BiasAdd:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

: 0*
dtype0?
dense_7/MatMulMatMuldense_6/BiasAdd:output:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????0?
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0?
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????0?
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes

:0 *
dtype0?
dense_8/MatMulMatMuldense_7/BiasAdd:output:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes

: *
dtype0?
dense_9/MatMulMatMuldense_8/BiasAdd:output:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_10/MatMulMatMuldense_9/BiasAdd:output:0&dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_10/BiasAddBiasAdddense_10/MatMul:product:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
dense_10/SigmoidSigmoiddense_10/BiasAdd:output:0*
T0*'
_output_shapes
:?????????c
IdentityIdentitydense_10/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^conv2d_39/BiasAdd/ReadVariableOp ^conv2d_39/Conv2D/ReadVariableOp!^conv2d_40/BiasAdd/ReadVariableOp ^conv2d_40/Conv2D/ReadVariableOp!^conv2d_41/BiasAdd/ReadVariableOp ^conv2d_41/Conv2D/ReadVariableOp!^conv2d_42/BiasAdd/ReadVariableOp ^conv2d_42/Conv2D/ReadVariableOp!^conv2d_43/BiasAdd/ReadVariableOp ^conv2d_43/Conv2D/ReadVariableOp!^conv2d_44/BiasAdd/ReadVariableOp ^conv2d_44/Conv2D/ReadVariableOp!^conv2d_45/BiasAdd/ReadVariableOp ^conv2d_45/Conv2D/ReadVariableOp!^conv2d_46/BiasAdd/ReadVariableOp ^conv2d_46/Conv2D/ReadVariableOp!^conv2d_47/BiasAdd/ReadVariableOp ^conv2d_47/Conv2D/ReadVariableOp!^conv2d_48/BiasAdd/ReadVariableOp ^conv2d_48/Conv2D/ReadVariableOp!^conv2d_49/BiasAdd/ReadVariableOp ^conv2d_49/Conv2D/ReadVariableOp!^conv2d_50/BiasAdd/ReadVariableOp ^conv2d_50/Conv2D/ReadVariableOp!^conv2d_51/BiasAdd/ReadVariableOp ^conv2d_51/Conv2D/ReadVariableOp!^conv2d_52/BiasAdd/ReadVariableOp ^conv2d_52/Conv2D/ReadVariableOp!^conv2d_53/BiasAdd/ReadVariableOp ^conv2d_53/Conv2D/ReadVariableOp ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:???????????::: : : : ::: : : : : : ::: : : : : : ::: : : : : : ::: : : : : : : : ::: : : : : : : : : : : : 2D
 conv2d_39/BiasAdd/ReadVariableOp conv2d_39/BiasAdd/ReadVariableOp2B
conv2d_39/Conv2D/ReadVariableOpconv2d_39/Conv2D/ReadVariableOp2D
 conv2d_40/BiasAdd/ReadVariableOp conv2d_40/BiasAdd/ReadVariableOp2B
conv2d_40/Conv2D/ReadVariableOpconv2d_40/Conv2D/ReadVariableOp2D
 conv2d_41/BiasAdd/ReadVariableOp conv2d_41/BiasAdd/ReadVariableOp2B
conv2d_41/Conv2D/ReadVariableOpconv2d_41/Conv2D/ReadVariableOp2D
 conv2d_42/BiasAdd/ReadVariableOp conv2d_42/BiasAdd/ReadVariableOp2B
conv2d_42/Conv2D/ReadVariableOpconv2d_42/Conv2D/ReadVariableOp2D
 conv2d_43/BiasAdd/ReadVariableOp conv2d_43/BiasAdd/ReadVariableOp2B
conv2d_43/Conv2D/ReadVariableOpconv2d_43/Conv2D/ReadVariableOp2D
 conv2d_44/BiasAdd/ReadVariableOp conv2d_44/BiasAdd/ReadVariableOp2B
conv2d_44/Conv2D/ReadVariableOpconv2d_44/Conv2D/ReadVariableOp2D
 conv2d_45/BiasAdd/ReadVariableOp conv2d_45/BiasAdd/ReadVariableOp2B
conv2d_45/Conv2D/ReadVariableOpconv2d_45/Conv2D/ReadVariableOp2D
 conv2d_46/BiasAdd/ReadVariableOp conv2d_46/BiasAdd/ReadVariableOp2B
conv2d_46/Conv2D/ReadVariableOpconv2d_46/Conv2D/ReadVariableOp2D
 conv2d_47/BiasAdd/ReadVariableOp conv2d_47/BiasAdd/ReadVariableOp2B
conv2d_47/Conv2D/ReadVariableOpconv2d_47/Conv2D/ReadVariableOp2D
 conv2d_48/BiasAdd/ReadVariableOp conv2d_48/BiasAdd/ReadVariableOp2B
conv2d_48/Conv2D/ReadVariableOpconv2d_48/Conv2D/ReadVariableOp2D
 conv2d_49/BiasAdd/ReadVariableOp conv2d_49/BiasAdd/ReadVariableOp2B
conv2d_49/Conv2D/ReadVariableOpconv2d_49/Conv2D/ReadVariableOp2D
 conv2d_50/BiasAdd/ReadVariableOp conv2d_50/BiasAdd/ReadVariableOp2B
conv2d_50/Conv2D/ReadVariableOpconv2d_50/Conv2D/ReadVariableOp2D
 conv2d_51/BiasAdd/ReadVariableOp conv2d_51/BiasAdd/ReadVariableOp2B
conv2d_51/Conv2D/ReadVariableOpconv2d_51/Conv2D/ReadVariableOp2D
 conv2d_52/BiasAdd/ReadVariableOp conv2d_52/BiasAdd/ReadVariableOp2B
conv2d_52/Conv2D/ReadVariableOpconv2d_52/Conv2D/ReadVariableOp2D
 conv2d_53/BiasAdd/ReadVariableOp conv2d_53/BiasAdd/ReadVariableOp2B
conv2d_53/Conv2D/ReadVariableOpconv2d_53/Conv2D/ReadVariableOp2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
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
::,)(
&
_output_shapes
::,*(
&
_output_shapes
:
?
N
2__inference_max_pooling2d_14_layer_call_fn_1815850

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_1813175?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

?
F__inference_conv2d_48_layer_call_and_return_conditional_losses_1815778

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????	*
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
:?????????	g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????	w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
F__inference_conv2d_50_layer_call_and_return_conditional_losses_1813424

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
F__inference_conv2d_52_layer_call_and_return_conditional_losses_1813457

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
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
:?????????g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
d
+__inference_dropout_8_layer_call_fn_1815581

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????mY* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_8_layer_call_and_return_conditional_losses_1813932w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????mY`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????mY22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????mY
 
_user_specified_nameinputs
?
N
2__inference_max_pooling2d_11_layer_call_fn_1815566

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_1813127?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
i
M__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_1813151

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
b
F__inference_flatten_1_layer_call_and_return_conditional_losses_1815904

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????    \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:????????? X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
b
F__inference_flatten_1_layer_call_and_return_conditional_losses_1813492

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????    \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:????????? X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
E
input_3:
serving_default_input_3:0???????????<
dense_100
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
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
layer_with_weights-16
layer-22
layer_with_weights-17
layer-23
layer-24
layer_with_weights-18
layer-25
layer_with_weights-19
layer-26
layer_with_weights-20
layer-27
layer-28
layer_with_weights-21
layer-29
layer_with_weights-22
layer-30
 layer_with_weights-23
 layer-31
!layer_with_weights-24
!layer-32
"layer_with_weights-25
"layer-33
#layer_with_weights-26
#layer-34
$	optimizer
%
signatures
#&_self_saveable_object_factories
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses
-_default_save_signature"
_tf_keras_sequential
?
.
_keep_axis
/_reduce_axis
0_reduce_axis_mask
1_broadcast_shape
2mean
2
adapt_mean
3variance
3adapt_variance
	4count
#5_self_saveable_object_factories
6	keras_api"
_tf_keras_layer
?

7kernel
8bias
#9_self_saveable_object_factories
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

@kernel
Abias
#B_self_saveable_object_factories
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses"
_tf_keras_layer
?
I
_keep_axis
J_reduce_axis
K_reduce_axis_mask
L_broadcast_shape
Mmean
M
adapt_mean
Nvariance
Nadapt_variance
	Ocount
#P_self_saveable_object_factories
Q	keras_api"
_tf_keras_layer
?

Rkernel
Sbias
#T_self_saveable_object_factories
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses"
_tf_keras_layer
?
#[_self_saveable_object_factories
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses"
_tf_keras_layer
?
#b_self_saveable_object_factories
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g_random_generator
h__call__
*i&call_and_return_all_conditional_losses"
_tf_keras_layer
?

jkernel
kbias
#l_self_saveable_object_factories
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
q__call__
*r&call_and_return_all_conditional_losses"
_tf_keras_layer
?

skernel
tbias
#u_self_saveable_object_factories
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
z__call__
*{&call_and_return_all_conditional_losses"
_tf_keras_layer
?
|
_keep_axis
}_reduce_axis
~_reduce_axis_mask
_broadcast_shape
	?mean
?
adapt_mean
?variance
?adapt_variance

?count
$?_self_saveable_object_factories
?	keras_api"
_tf_keras_layer
?
?kernel
	?bias
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?_random_generator
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?kernel
	?bias
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?kernel
	?bias
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?
_keep_axis
?_reduce_axis
?_reduce_axis_mask
?_broadcast_shape
	?mean
?
adapt_mean
?variance
?adapt_variance

?count
$?_self_saveable_object_factories
?	keras_api"
_tf_keras_layer
?
?kernel
	?bias
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?kernel
	?bias
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?kernel
	?bias
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?
_keep_axis
?_reduce_axis
?_reduce_axis_mask
?_broadcast_shape
	?mean
?
adapt_mean
?variance
?adapt_variance

?count
$?_self_saveable_object_factories
?	keras_api"
_tf_keras_layer
?
?kernel
	?bias
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?kernel
	?bias
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?kernel
	?bias
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?kernel
	?bias
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?
_keep_axis
?_reduce_axis
?_reduce_axis_mask
?_broadcast_shape
	?mean
?
adapt_mean
?variance
?adapt_variance

?count
$?_self_saveable_object_factories
?	keras_api"
_tf_keras_layer
?
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?kernel
	?bias
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?kernel
	?bias
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?kernel
	?bias
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?kernel
	?bias
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?kernel
	?bias
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?kernel
	?bias
$?_self_saveable_object_factories
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	?iter

?decay
?learning_rate
?rho7
accum_grad?8
accum_grad?@
accum_grad?A
accum_grad?R
accum_grad?S
accum_grad?j
accum_grad?k
accum_grad?s
accum_grad?t
accum_grad??
accum_grad??
accum_grad??
accum_grad??
accum_grad??
accum_grad??
accum_grad??
accum_grad??
accum_grad??
accum_grad??
accum_grad??
accum_grad??
accum_grad??
accum_grad??
accum_grad??
accum_grad??
accum_grad??
accum_grad??
accum_grad??
accum_grad??
accum_grad??
accum_grad??
accum_grad??
accum_grad??
accum_grad??
accum_grad??
accum_grad??
accum_grad??
accum_grad??
accum_grad??
accum_grad??
accum_grad??
accum_grad?7	accum_var?8	accum_var?@	accum_var?A	accum_var?R	accum_var?S	accum_var?j	accum_var?k	accum_var?s	accum_var?t	accum_var??	accum_var??	accum_var??	accum_var??	accum_var??	accum_var??	accum_var??	accum_var??	accum_var??	accum_var??	accum_var??	accum_var??	accum_var??	accum_var??	accum_var??	accum_var??	accum_var??	accum_var??	accum_var??	accum_var??	accum_var??	accum_var??	accum_var??	accum_var??	accum_var??	accum_var??	accum_var??	accum_var??	accum_var??	accum_var??	accum_var??	accum_var??	accum_var?"
	optimizer
-
?serving_default"
signature_map
 "
trackable_dict_wrapper
?
20
31
42
73
84
@5
A6
M7
N8
O9
R10
S11
j12
k13
s14
t15
?16
?17
?18
?19
?20
?21
?22
?23
?24
?25
?26
?27
?28
?29
?30
?31
?32
?33
?34
?35
?36
?37
?38
?39
?40
?41
?42
?43
?44
?45
?46
?47
?48
?49
?50
?51
?52
?53
?54
?55
?56
?57
?58
?59"
trackable_list_wrapper
?
70
81
@2
A3
R4
S5
j6
k7
s8
t9
?10
?11
?12
?13
?14
?15
?16
?17
?18
?19
?20
?21
?22
?23
?24
?25
?26
?27
?28
?29
?30
?31
?32
?33
?34
?35
?36
?37
?38
?39
?40
?41"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
-_default_save_signature
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
?2?
.__inference_sequential_2_layer_call_fn_1813703
.__inference_sequential_2_layer_call_fn_1814898
.__inference_sequential_2_layer_call_fn_1815011
.__inference_sequential_2_layer_call_fn_1814463?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
I__inference_sequential_2_layer_call_and_return_conditional_losses_1815193
I__inference_sequential_2_layer_call_and_return_conditional_losses_1815389
I__inference_sequential_2_layer_call_and_return_conditional_losses_1814622
I__inference_sequential_2_layer_call_and_return_conditional_losses_1814781?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
"__inference__wrapped_model_1813118input_3"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
!:2normalization_16/mean
%:#2normalization_16/variance
:	 2normalization_16/count
 "
trackable_dict_wrapper
"
_generic_user_object
*:( 2conv2d_39/kernel
: 2conv2d_39/bias
 "
trackable_dict_wrapper
.
70
81"
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
?2?
+__inference_conv2d_39_layer_call_fn_1815513?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_conv2d_39_layer_call_and_return_conditional_losses_1815523?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
*:( 2conv2d_40/kernel
:2conv2d_40/bias
 "
trackable_dict_wrapper
.
@0
A1"
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses"
_generic_user_object
?2?
+__inference_conv2d_40_layer_call_fn_1815532?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_conv2d_40_layer_call_and_return_conditional_losses_1815542?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
!:2normalization_17/mean
%:#2normalization_17/variance
:	 2normalization_17/count
 "
trackable_dict_wrapper
"
_generic_user_object
*:(2conv2d_41/kernel
:2conv2d_41/bias
 "
trackable_dict_wrapper
.
R0
S1"
trackable_list_wrapper
.
R0
S1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses"
_generic_user_object
?2?
+__inference_conv2d_41_layer_call_fn_1815551?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_conv2d_41_layer_call_and_return_conditional_losses_1815561?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses"
_generic_user_object
?2?
2__inference_max_pooling2d_11_layer_call_fn_1815566?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
M__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_1815571?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
c	variables
dtrainable_variables
eregularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
?2?
+__inference_dropout_8_layer_call_fn_1815576
+__inference_dropout_8_layer_call_fn_1815581?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_dropout_8_layer_call_and_return_conditional_losses_1815586
F__inference_dropout_8_layer_call_and_return_conditional_losses_1815598?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
*:(2conv2d_42/kernel
:2conv2d_42/bias
 "
trackable_dict_wrapper
.
j0
k1"
trackable_list_wrapper
.
j0
k1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
m	variables
ntrainable_variables
oregularization_losses
q__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses"
_generic_user_object
?2?
+__inference_conv2d_42_layer_call_fn_1815607?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_conv2d_42_layer_call_and_return_conditional_losses_1815617?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
*:(2conv2d_43/kernel
:2conv2d_43/bias
 "
trackable_dict_wrapper
.
s0
t1"
trackable_list_wrapper
.
s0
t1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
v	variables
wtrainable_variables
xregularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
_generic_user_object
?2?
+__inference_conv2d_43_layer_call_fn_1815626?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_conv2d_43_layer_call_and_return_conditional_losses_1815636?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
!:2normalization_18/mean
%:#2normalization_18/variance
:	 2normalization_18/count
 "
trackable_dict_wrapper
"
_generic_user_object
*:(2conv2d_44/kernel
:2conv2d_44/bias
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
+__inference_conv2d_44_layer_call_fn_1815645?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_conv2d_44_layer_call_and_return_conditional_losses_1815655?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
2__inference_max_pooling2d_12_layer_call_fn_1815660?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
M__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_1815665?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
?2?
+__inference_dropout_9_layer_call_fn_1815670
+__inference_dropout_9_layer_call_fn_1815675?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_dropout_9_layer_call_and_return_conditional_losses_1815680
F__inference_dropout_9_layer_call_and_return_conditional_losses_1815692?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
*:(2conv2d_45/kernel
:2conv2d_45/bias
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
+__inference_conv2d_45_layer_call_fn_1815701?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_conv2d_45_layer_call_and_return_conditional_losses_1815711?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
*:(2conv2d_46/kernel
:2conv2d_46/bias
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
+__inference_conv2d_46_layer_call_fn_1815720?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_conv2d_46_layer_call_and_return_conditional_losses_1815730?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
!:2normalization_19/mean
%:#2normalization_19/variance
:	 2normalization_19/count
 "
trackable_dict_wrapper
"
_generic_user_object
*:(2conv2d_47/kernel
:2conv2d_47/bias
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
+__inference_conv2d_47_layer_call_fn_1815739?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_conv2d_47_layer_call_and_return_conditional_losses_1815749?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
2__inference_max_pooling2d_13_layer_call_fn_1815754?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
M__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_1815759?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
*:(2conv2d_48/kernel
:2conv2d_48/bias
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
+__inference_conv2d_48_layer_call_fn_1815768?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_conv2d_48_layer_call_and_return_conditional_losses_1815778?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
*:(2conv2d_49/kernel
:2conv2d_49/bias
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
+__inference_conv2d_49_layer_call_fn_1815787?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_conv2d_49_layer_call_and_return_conditional_losses_1815797?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
5__inference_average_pooling2d_2_layer_call_fn_1815802?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
P__inference_average_pooling2d_2_layer_call_and_return_conditional_losses_1815807?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
!:2normalization_20/mean
%:#2normalization_20/variance
:	 2normalization_20/count
 "
trackable_dict_wrapper
"
_generic_user_object
*:( 2conv2d_50/kernel
: 2conv2d_50/bias
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
+__inference_conv2d_50_layer_call_fn_1815816?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_conv2d_50_layer_call_and_return_conditional_losses_1815826?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
*:( 2conv2d_51/kernel
:2conv2d_51/bias
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
+__inference_conv2d_51_layer_call_fn_1815835?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_conv2d_51_layer_call_and_return_conditional_losses_1815845?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
2__inference_max_pooling2d_14_layer_call_fn_1815850?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
M__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_1815855?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
*:(2conv2d_52/kernel
:2conv2d_52/bias
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
+__inference_conv2d_52_layer_call_fn_1815864?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_conv2d_52_layer_call_and_return_conditional_losses_1815874?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
*:(2conv2d_53/kernel
:2conv2d_53/bias
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
+__inference_conv2d_53_layer_call_fn_1815883?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_conv2d_53_layer_call_and_return_conditional_losses_1815893?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
!:2normalization_21/mean
%:#2normalization_21/variance
:	 2normalization_21/count
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
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
+__inference_flatten_1_layer_call_fn_1815898?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_flatten_1_layer_call_and_return_conditional_losses_1815904?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 : @2dense_5/kernel
:@2dense_5/bias
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_dense_5_layer_call_fn_1815913?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_5_layer_call_and_return_conditional_losses_1815923?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 :@ 2dense_6/kernel
: 2dense_6/bias
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_dense_6_layer_call_fn_1815932?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_6_layer_call_and_return_conditional_losses_1815942?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 : 02dense_7/kernel
:02dense_7/bias
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_dense_7_layer_call_fn_1815951?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_7_layer_call_and_return_conditional_losses_1815961?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 :0 2dense_8/kernel
: 2dense_8/bias
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_dense_8_layer_call_fn_1815970?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_8_layer_call_and_return_conditional_losses_1815980?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 : 2dense_9/kernel
:2dense_9/bias
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_dense_9_layer_call_fn_1815989?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_9_layer_call_and_return_conditional_losses_1815999?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
!:2dense_10/kernel
:2dense_10/bias
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
*__inference_dense_10_layer_call_fn_1816008?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_dense_10_layer_call_and_return_conditional_losses_1816019?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
:	 (2Adadelta/iter
: (2Adadelta/decay
 : (2Adadelta/learning_rate
: (2Adadelta/rho
?B?
%__inference_signature_wrapper_1815504input_3"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?
20
31
42
M3
N4
O5
?6
?7
?8
?9
?10
?11
?12
?13
?14
?15
?16
?17"
trackable_list_wrapper
?
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
27
28
29
30
 31
!32
"33
#34"
trackable_list_wrapper
@
?0
?1
?2
?3"
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

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
v
?
thresholds
?true_positives
?false_positives
?	variables
?	keras_api"
_tf_keras_metric
v
?
thresholds
?true_positives
?false_negatives
?	variables
?	keras_api"
_tf_keras_metric
c

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
 "
trackable_list_wrapper
: (2true_positives
: (2false_positives
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
 "
trackable_list_wrapper
: (2true_positives
: (2false_negatives
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
<:: 2$Adadelta/conv2d_39/kernel/accum_grad
.:, 2"Adadelta/conv2d_39/bias/accum_grad
<:: 2$Adadelta/conv2d_40/kernel/accum_grad
.:,2"Adadelta/conv2d_40/bias/accum_grad
<::2$Adadelta/conv2d_41/kernel/accum_grad
.:,2"Adadelta/conv2d_41/bias/accum_grad
<::2$Adadelta/conv2d_42/kernel/accum_grad
.:,2"Adadelta/conv2d_42/bias/accum_grad
<::2$Adadelta/conv2d_43/kernel/accum_grad
.:,2"Adadelta/conv2d_43/bias/accum_grad
<::2$Adadelta/conv2d_44/kernel/accum_grad
.:,2"Adadelta/conv2d_44/bias/accum_grad
<::2$Adadelta/conv2d_45/kernel/accum_grad
.:,2"Adadelta/conv2d_45/bias/accum_grad
<::2$Adadelta/conv2d_46/kernel/accum_grad
.:,2"Adadelta/conv2d_46/bias/accum_grad
<::2$Adadelta/conv2d_47/kernel/accum_grad
.:,2"Adadelta/conv2d_47/bias/accum_grad
<::2$Adadelta/conv2d_48/kernel/accum_grad
.:,2"Adadelta/conv2d_48/bias/accum_grad
<::2$Adadelta/conv2d_49/kernel/accum_grad
.:,2"Adadelta/conv2d_49/bias/accum_grad
<:: 2$Adadelta/conv2d_50/kernel/accum_grad
.:, 2"Adadelta/conv2d_50/bias/accum_grad
<:: 2$Adadelta/conv2d_51/kernel/accum_grad
.:,2"Adadelta/conv2d_51/bias/accum_grad
<::2$Adadelta/conv2d_52/kernel/accum_grad
.:,2"Adadelta/conv2d_52/bias/accum_grad
<::2$Adadelta/conv2d_53/kernel/accum_grad
.:,2"Adadelta/conv2d_53/bias/accum_grad
2:0 @2"Adadelta/dense_5/kernel/accum_grad
,:*@2 Adadelta/dense_5/bias/accum_grad
2:0@ 2"Adadelta/dense_6/kernel/accum_grad
,:* 2 Adadelta/dense_6/bias/accum_grad
2:0 02"Adadelta/dense_7/kernel/accum_grad
,:*02 Adadelta/dense_7/bias/accum_grad
2:00 2"Adadelta/dense_8/kernel/accum_grad
,:* 2 Adadelta/dense_8/bias/accum_grad
2:0 2"Adadelta/dense_9/kernel/accum_grad
,:*2 Adadelta/dense_9/bias/accum_grad
3:12#Adadelta/dense_10/kernel/accum_grad
-:+2!Adadelta/dense_10/bias/accum_grad
;:9 2#Adadelta/conv2d_39/kernel/accum_var
-:+ 2!Adadelta/conv2d_39/bias/accum_var
;:9 2#Adadelta/conv2d_40/kernel/accum_var
-:+2!Adadelta/conv2d_40/bias/accum_var
;:92#Adadelta/conv2d_41/kernel/accum_var
-:+2!Adadelta/conv2d_41/bias/accum_var
;:92#Adadelta/conv2d_42/kernel/accum_var
-:+2!Adadelta/conv2d_42/bias/accum_var
;:92#Adadelta/conv2d_43/kernel/accum_var
-:+2!Adadelta/conv2d_43/bias/accum_var
;:92#Adadelta/conv2d_44/kernel/accum_var
-:+2!Adadelta/conv2d_44/bias/accum_var
;:92#Adadelta/conv2d_45/kernel/accum_var
-:+2!Adadelta/conv2d_45/bias/accum_var
;:92#Adadelta/conv2d_46/kernel/accum_var
-:+2!Adadelta/conv2d_46/bias/accum_var
;:92#Adadelta/conv2d_47/kernel/accum_var
-:+2!Adadelta/conv2d_47/bias/accum_var
;:92#Adadelta/conv2d_48/kernel/accum_var
-:+2!Adadelta/conv2d_48/bias/accum_var
;:92#Adadelta/conv2d_49/kernel/accum_var
-:+2!Adadelta/conv2d_49/bias/accum_var
;:9 2#Adadelta/conv2d_50/kernel/accum_var
-:+ 2!Adadelta/conv2d_50/bias/accum_var
;:9 2#Adadelta/conv2d_51/kernel/accum_var
-:+2!Adadelta/conv2d_51/bias/accum_var
;:92#Adadelta/conv2d_52/kernel/accum_var
-:+2!Adadelta/conv2d_52/bias/accum_var
;:92#Adadelta/conv2d_53/kernel/accum_var
-:+2!Adadelta/conv2d_53/bias/accum_var
1:/ @2!Adadelta/dense_5/kernel/accum_var
+:)@2Adadelta/dense_5/bias/accum_var
1:/@ 2!Adadelta/dense_6/kernel/accum_var
+:) 2Adadelta/dense_6/bias/accum_var
1:/ 02!Adadelta/dense_7/kernel/accum_var
+:)02Adadelta/dense_7/bias/accum_var
1:/0 2!Adadelta/dense_8/kernel/accum_var
+:) 2Adadelta/dense_8/bias/accum_var
1:/ 2!Adadelta/dense_9/kernel/accum_var
+:)2Adadelta/dense_9/bias/accum_var
2:02"Adadelta/dense_10/kernel/accum_var
,:*2 Adadelta/dense_10/bias/accum_var
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
Const_9
J

Const_10
J

Const_11?
"__inference__wrapped_model_1813118?b??78@A??RSjkst????????????????????????????????????????:?7
0?-
+?(
input_3???????????
? "3?0
.
dense_10"?
dense_10??????????
P__inference_average_pooling2d_2_layer_call_and_return_conditional_losses_1815807?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
5__inference_average_pooling2d_2_layer_call_fn_1815802?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
F__inference_conv2d_39_layer_call_and_return_conditional_losses_1815523p789?6
/?,
*?'
inputs???????????
? "/?,
%?"
0??????????? 
? ?
+__inference_conv2d_39_layer_call_fn_1815513c789?6
/?,
*?'
inputs???????????
? ""???????????? ?
F__inference_conv2d_40_layer_call_and_return_conditional_losses_1815542p@A9?6
/?,
*?'
inputs??????????? 
? "/?,
%?"
0???????????
? ?
+__inference_conv2d_40_layer_call_fn_1815532c@A9?6
/?,
*?'
inputs??????????? 
? ""?????????????
F__inference_conv2d_41_layer_call_and_return_conditional_losses_1815561pRS9?6
/?,
*?'
inputs???????????
? "/?,
%?"
0???????????
? ?
+__inference_conv2d_41_layer_call_fn_1815551cRS9?6
/?,
*?'
inputs???????????
? ""?????????????
F__inference_conv2d_42_layer_call_and_return_conditional_losses_1815617ljk7?4
-?*
(?%
inputs?????????mY
? "-?*
#? 
0?????????mY
? ?
+__inference_conv2d_42_layer_call_fn_1815607_jk7?4
-?*
(?%
inputs?????????mY
? " ??????????mY?
F__inference_conv2d_43_layer_call_and_return_conditional_losses_1815636lst7?4
-?*
(?%
inputs?????????mY
? "-?*
#? 
0?????????mY
? ?
+__inference_conv2d_43_layer_call_fn_1815626_st7?4
-?*
(?%
inputs?????????mY
? " ??????????mY?
F__inference_conv2d_44_layer_call_and_return_conditional_losses_1815655n??7?4
-?*
(?%
inputs?????????mY
? "-?*
#? 
0?????????mY
? ?
+__inference_conv2d_44_layer_call_fn_1815645a??7?4
-?*
(?%
inputs?????????mY
? " ??????????mY?
F__inference_conv2d_45_layer_call_and_return_conditional_losses_1815711n??7?4
-?*
(?%
inputs?????????6,
? "-?*
#? 
0?????????6,
? ?
+__inference_conv2d_45_layer_call_fn_1815701a??7?4
-?*
(?%
inputs?????????6,
? " ??????????6,?
F__inference_conv2d_46_layer_call_and_return_conditional_losses_1815730n??7?4
-?*
(?%
inputs?????????6,
? "-?*
#? 
0?????????6,
? ?
+__inference_conv2d_46_layer_call_fn_1815720a??7?4
-?*
(?%
inputs?????????6,
? " ??????????6,?
F__inference_conv2d_47_layer_call_and_return_conditional_losses_1815749n??7?4
-?*
(?%
inputs?????????6,
? "-?*
#? 
0?????????6,
? ?
+__inference_conv2d_47_layer_call_fn_1815739a??7?4
-?*
(?%
inputs?????????6,
? " ??????????6,?
F__inference_conv2d_48_layer_call_and_return_conditional_losses_1815778n??7?4
-?*
(?%
inputs?????????
? "-?*
#? 
0?????????	
? ?
+__inference_conv2d_48_layer_call_fn_1815768a??7?4
-?*
(?%
inputs?????????
? " ??????????	?
F__inference_conv2d_49_layer_call_and_return_conditional_losses_1815797n??7?4
-?*
(?%
inputs?????????	
? "-?*
#? 
0?????????

? ?
+__inference_conv2d_49_layer_call_fn_1815787a??7?4
-?*
(?%
inputs?????????	
? " ??????????
?
F__inference_conv2d_50_layer_call_and_return_conditional_losses_1815826n??7?4
-?*
(?%
inputs?????????
? "-?*
#? 
0????????? 
? ?
+__inference_conv2d_50_layer_call_fn_1815816a??7?4
-?*
(?%
inputs?????????
? " ?????????? ?
F__inference_conv2d_51_layer_call_and_return_conditional_losses_1815845n??7?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0?????????
? ?
+__inference_conv2d_51_layer_call_fn_1815835a??7?4
-?*
(?%
inputs????????? 
? " ???????????
F__inference_conv2d_52_layer_call_and_return_conditional_losses_1815874n??7?4
-?*
(?%
inputs?????????
? "-?*
#? 
0?????????
? ?
+__inference_conv2d_52_layer_call_fn_1815864a??7?4
-?*
(?%
inputs?????????
? " ???????????
F__inference_conv2d_53_layer_call_and_return_conditional_losses_1815893n??7?4
-?*
(?%
inputs?????????
? "-?*
#? 
0?????????
? ?
+__inference_conv2d_53_layer_call_fn_1815883a??7?4
-?*
(?%
inputs?????????
? " ???????????
E__inference_dense_10_layer_call_and_return_conditional_losses_1816019^??/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? 
*__inference_dense_10_layer_call_fn_1816008Q??/?,
%?"
 ?
inputs?????????
? "???????????
D__inference_dense_5_layer_call_and_return_conditional_losses_1815923^??/?,
%?"
 ?
inputs????????? 
? "%?"
?
0?????????@
? ~
)__inference_dense_5_layer_call_fn_1815913Q??/?,
%?"
 ?
inputs????????? 
? "??????????@?
D__inference_dense_6_layer_call_and_return_conditional_losses_1815942^??/?,
%?"
 ?
inputs?????????@
? "%?"
?
0????????? 
? ~
)__inference_dense_6_layer_call_fn_1815932Q??/?,
%?"
 ?
inputs?????????@
? "?????????? ?
D__inference_dense_7_layer_call_and_return_conditional_losses_1815961^??/?,
%?"
 ?
inputs????????? 
? "%?"
?
0?????????0
? ~
)__inference_dense_7_layer_call_fn_1815951Q??/?,
%?"
 ?
inputs????????? 
? "??????????0?
D__inference_dense_8_layer_call_and_return_conditional_losses_1815980^??/?,
%?"
 ?
inputs?????????0
? "%?"
?
0????????? 
? ~
)__inference_dense_8_layer_call_fn_1815970Q??/?,
%?"
 ?
inputs?????????0
? "?????????? ?
D__inference_dense_9_layer_call_and_return_conditional_losses_1815999^??/?,
%?"
 ?
inputs????????? 
? "%?"
?
0?????????
? ~
)__inference_dense_9_layer_call_fn_1815989Q??/?,
%?"
 ?
inputs????????? 
? "???????????
F__inference_dropout_8_layer_call_and_return_conditional_losses_1815586l;?8
1?.
(?%
inputs?????????mY
p 
? "-?*
#? 
0?????????mY
? ?
F__inference_dropout_8_layer_call_and_return_conditional_losses_1815598l;?8
1?.
(?%
inputs?????????mY
p
? "-?*
#? 
0?????????mY
? ?
+__inference_dropout_8_layer_call_fn_1815576_;?8
1?.
(?%
inputs?????????mY
p 
? " ??????????mY?
+__inference_dropout_8_layer_call_fn_1815581_;?8
1?.
(?%
inputs?????????mY
p
? " ??????????mY?
F__inference_dropout_9_layer_call_and_return_conditional_losses_1815680l;?8
1?.
(?%
inputs?????????6,
p 
? "-?*
#? 
0?????????6,
? ?
F__inference_dropout_9_layer_call_and_return_conditional_losses_1815692l;?8
1?.
(?%
inputs?????????6,
p
? "-?*
#? 
0?????????6,
? ?
+__inference_dropout_9_layer_call_fn_1815670_;?8
1?.
(?%
inputs?????????6,
p 
? " ??????????6,?
+__inference_dropout_9_layer_call_fn_1815675_;?8
1?.
(?%
inputs?????????6,
p
? " ??????????6,?
F__inference_flatten_1_layer_call_and_return_conditional_losses_1815904`7?4
-?*
(?%
inputs?????????
? "%?"
?
0????????? 
? ?
+__inference_flatten_1_layer_call_fn_1815898S7?4
-?*
(?%
inputs?????????
? "?????????? ?
M__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_1815571?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
2__inference_max_pooling2d_11_layer_call_fn_1815566?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
M__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_1815665?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
2__inference_max_pooling2d_12_layer_call_fn_1815660?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
M__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_1815759?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
2__inference_max_pooling2d_13_layer_call_fn_1815754?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
M__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_1815855?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
2__inference_max_pooling2d_14_layer_call_fn_1815850?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
I__inference_sequential_2_layer_call_and_return_conditional_losses_1814622?b??78@A??RSjkst????????????????????????????????????????B??
8?5
+?(
input_3???????????
p 

 
? "%?"
?
0?????????
? ?
I__inference_sequential_2_layer_call_and_return_conditional_losses_1814781?b??78@A??RSjkst????????????????????????????????????????B??
8?5
+?(
input_3???????????
p

 
? "%?"
?
0?????????
? ?
I__inference_sequential_2_layer_call_and_return_conditional_losses_1815193?b??78@A??RSjkst????????????????????????????????????????A?>
7?4
*?'
inputs???????????
p 

 
? "%?"
?
0?????????
? ?
I__inference_sequential_2_layer_call_and_return_conditional_losses_1815389?b??78@A??RSjkst????????????????????????????????????????A?>
7?4
*?'
inputs???????????
p

 
? "%?"
?
0?????????
? ?
.__inference_sequential_2_layer_call_fn_1813703?b??78@A??RSjkst????????????????????????????????????????B??
8?5
+?(
input_3???????????
p 

 
? "???????????
.__inference_sequential_2_layer_call_fn_1814463?b??78@A??RSjkst????????????????????????????????????????B??
8?5
+?(
input_3???????????
p

 
? "???????????
.__inference_sequential_2_layer_call_fn_1814898?b??78@A??RSjkst????????????????????????????????????????A?>
7?4
*?'
inputs???????????
p 

 
? "???????????
.__inference_sequential_2_layer_call_fn_1815011?b??78@A??RSjkst????????????????????????????????????????A?>
7?4
*?'
inputs???????????
p

 
? "???????????
%__inference_signature_wrapper_1815504?b??78@A??RSjkst????????????????????????????????????????E?B
? 
;?8
6
input_3+?(
input_3???????????"3?0
.
dense_10"?
dense_10?????????