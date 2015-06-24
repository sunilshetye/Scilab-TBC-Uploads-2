//clear//
//Example10.11:Inverse Z Transform:ROC |z|<1/4
z = %z;
syms n z1;//To find out Inverse z transform z must be linear z = z1
X  =z*(3*z-(5/6))/((z-(1/4))*(z-(1/3)))
X1 = denom(X);
zp = roots(X1);
X1 = z1*(3*z1-(5/6))/((z1-(1/4))*(z1-(1/3)))
F1 = X1*(z1^(n-1))*(z1-zp(1));
F2 = X1*(z1^(n-1))*(z1-zp(2));
h1 = limit(F1,z1,zp(1));
disp(h1*'u(-n-1)','h1[n]=')
h2 = limit(F2,z1,zp(2));
disp((h2)*'u(-n-1)','h2[n]=')
disp(-(h1)*'u(-n-1)'-(h2)*'u(-n-1)','h[n]=')
////Result
// h[n]=  -u(-n-1)/4^n-2*u(-n-1)/3^n  
//Equivalent to h[n] =-(1/4)^n.u[-n-1]-2*(1/3)^n.u[-n-1]
