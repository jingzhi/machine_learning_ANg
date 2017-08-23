%1
v=zeros(10,1)
for i=1:10
    v(i)=2^i;
end
%2
indices=1:10
for i=indices
    disp(i)
end
%3
i=1;
while i<=5
    v(i)=100;
    i=i+1;
end
%4
i=1
while true
    v(i)=999;
    i=i+1;
    if i==6
        break;
    end
end
%5
v(1)=2;
if v(1)==1
    disp('the value is one');
elseif v(1)==2
    disp('the value is two');
else
    disp('the value is neither one nor two.');
end
%functions
%create a .m file with the function name
addpath('H:\MATLAB\machine learning')%add the path to search path for functions
a=squareThisNumber(5)
[a,b]=squareAndCubeThisNumber(5)