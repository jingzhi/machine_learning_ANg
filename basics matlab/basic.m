%operations
1+2 %+,-,*,/,^
1==2 %false
1~=2 % &&,||,xor(a,b)

%assign variable
a=3
a=3; %semicolon suppresses output
b='hi'; %string
c=(3>=1); %c is true
a=pi;
disp(a);
disp(sprintf('2 decimals: %0.2f',a)); %sprintf generates a string, a is substituted to %sign with format specified.
disp(sprintf('6 decimals: %0.6f',a));
format long %change precision
format short%restores default

%matrices and vectors
A=[1 2;3 4; 5 6] %semicolon goes to next row
A=[1 2;
    3 4;
    5 6]
v=[1 2 3] %row vector
v=[1;2;3] %column vector
v=1:0.1:2 %generates row vector, starts at 1, ends at 2, step is 0.1
v=1:6 %generates row vector,starts at 1, ends at 6, step is 1
w=ones(2,3) %generates 2x3 matrix initialised with 1s
C=2*ones(2,3)
w=zeros(2,3) %generates 2x3 matrix initialised with 1s
w=rand(1,3)_%random number drawn from uniform distribution from 0 to 1
w=randn(1,3) %random number drawn from standardgaussian distribution
rand(3) %random 3x3 matrix
w=-6+sqrt(10)*(randn(1,10000));
hist(w)
hist(w,50) %histogram with 50 bins
eye(4) %identity matrix
help eye

%operation on matrix
size(A) %the size function itself returns a 1x2 matrix
size(A,1) %gives row dimension,first dimension
size(A,2) %gives column dimension,second dimension
length(A) %givs the size of the longest dimension
A(3,2) %access the element in rw 3 colunm 2
A(2,:) %fetch row 2
A(:,2) %fetch column 2 colon means everything in that row/column
A([1 3],:) %fetch row 1 and 3
A([1:7],:) %fetch row 1 TO 7
A(:,2)=[10;11;12] %assignment
A=[A,[100;101;102]] %append another column to the right
A(:) %put all elements of A into a single column vector
C=[A B] %concatenate on right
C=[A,B] %same
C=[A;B] %concatenate on bottom
A*C %matrix multiplication
A.*C %element-wise multiplication
A./4 %element-wise division by constant
A/4 %same
1./A %element-wise reciprocal
log(A) %element-wise log
exp(A) %element-wise exp
abs(A) %element-wise abs
pinv(A) %pseudo inverse
inv(A) %inverse
A<0.5 %element-wise comparisoin
floor(A) %element-wise floor
ceil(A) %element-wise ceiling
find(A<0.5) %finds the index of elements that flfills the condition, return its index,the indexing is runing through column by column for matrix
[r,c] =find(A>=7) %returns the coordinates of elements fulfills the condition
-A %same as -1.*A, -1*A
A+ones(size(A)) %increment each element by 1, same as A+1
A' %A transpose
val= max(A) %column-wise max. returns a row vector containing max of A in each column
max(max(A)) %max element in A,same as max(A(:))
max(A(:))
sum(A) %column-wise sum
sum(A,1) %column-wise sum, first dimension
sum(A,2) %row-wise sum,second dimension
sum(sum(A.*eye(3))) %major diagonal sum
sum(sum(A.*flipud(eye(3))))%minor diagonal sum ,flip updown
prod(A) %column-wise product
[val, ind]=max(A) %returns max values and their indeces in coresponding column
A=magic(3) %magic matrices for which row,column, diagonal sums to the same thing
max(rand(3),rand(3)) %element-wise maximum of 2 random 3 by 3 matrices,ie, take which ever is bigger
max(A,[],1) %takes column-wise maximum,take max along first dimension of A
max(A,[],2) %takes row-wise maximum,take max along second dimension of A
pwd %shows current patn
cd 'H:\MATLAB\machine learning'
ls %list directory
load featuresX.txt
load('pricesY.txt')
who %shows what variables we have in the workspace
whos %shows details of current variable
clear feacturesX
clear
v=priceY(1:3) %set v equal to the first 3 elements in priceY
save hello.mat v; %save v to a file called hello.mat (matlab data)
load hello.mat
save hello.txt v -ascii % save as ascii format