s=%s'
A =[0 1 0;0 0 1;0 -2 -3]
B =[0;0;1]
x=[1 2 0]
[r c]= size (A)
h=s*eye(r,c)-A // s*I-A
q=inv(h)
c=x*q*B;
disp(c,"required transfer function =")
