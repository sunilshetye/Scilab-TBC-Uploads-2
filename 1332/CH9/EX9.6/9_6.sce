//Example 9.6
//House Holder Transformation
//Page no. 300
clc;clear;close;

A=[4,2,1;2,5,-2;1,-2,7]
disp(A,'A=')
k=0;
for j=2:3
    k=k+A(j,1)^2;
end
a=A(2,1)*abs(1/A(2,1))*sqrt(k);
disp(a,'alpha=')
U=[0;a+A(2,1);A(3,1)];
disp(U,'U=')
U1=U'*U;
disp(U1,'UT*U=')
U2=U*U';
disp(U2,'U*UT=')
P=eye(3,3)-(2*U2)/U1;
disp(P,'P=');
B=P*A*P;
disp(B,'B=');
printf('\n\n\nThere are computation error in the answers given by the book in this example\n\n(a22 value error in U*UT)')