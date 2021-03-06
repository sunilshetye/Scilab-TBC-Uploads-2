//Scilab Code for Example 2.37 of Signals and systems by
//P.Ramakrishna Rao
//Inverse Z Transform:ROC 1<|z|<2
clear;
clc;
z = %z;
syms n z1;
//To find out Inverse z transform z must be linear z = z1
X  =(z*(z^2-z+1))/((z-0.5)*(z-2)*(z-1))
X1 = denom(X);
zp = roots(X1);
X1 = (z1*(z1^2-z1+1))/((z1-0.5)*(z1-2)*(z1-1))
F1 = X1*(z1^(n-1))*(z1-zp(1))
F2 = X1*(z1^(n-1))*(z1-zp(2))
F3 = X1*(z1^(n-1))*(z1-zp(3))
h1 = limit(F1,z1,zp(1));
disp(h1*'u(-n-1)','h1[n]=')
h2 = limit(F2,z1,zp(2));
disp((h2)*'u(n)','h2[n]=')
h3 = limit(F3,z1,zp(3));
disp((h3)*'u(n)','h3[n]=')
disp((h3)*'u(n)'+(h2)*'u(n)'-(h1)*'u(-n-1)','h[n]=')
////Result
//  h[n]=1* 0.5 ^n *u(n) - 2*u(n) - 2* 2^n *u(- n - 1) 
