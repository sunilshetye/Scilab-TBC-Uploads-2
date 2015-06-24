z = %z;
syms n z1;//To find out Inverse z transform z must be linear z = z1
X  =z^2/((z-(1/4))*(z-(1/2)))
X1 = denom(X);
zp = roots(X1);
X1 = z1^2/((z1-(1/4))*(z1-(1/2)))
F1 = X1*(z1^(n-1))*(z1-zp(1));
F2 = X1*(z1^(n-1))*(z1-zp(2));
h1 = limit(F1,z1,zp(1));
disp(h1,'h1[n]=')
h2 = limit(F2,z1,zp(2));
disp(h2,'h2[n]=')
h = h1+h2;
disp(h,'h[n]=')
//step response
Xz = z/(z-1);//u[n]
Y  = Xz*X;
Y1 = denom(Y);
zp = roots(Y1);
Y1 = z1^3/((z1-1)*(z1-(1/4))*(z1-(1/2)))
F1 = Y1*(z1^(n-1))*(z1-zp(1));
F2 = Y1*(z1^(n-1))*(z1-zp(2));
F3=  Y1*(z1^(n-1))*(z1-zp(3));
y1 = limit(F1,z1,zp(1));
disp(y1,'y1[n]=')
y2 = limit(F2,z1,zp(2));
disp(y2,'y2[n]=')
y3 = limit(F3,z1,zp(3));
disp(y3,'y3[n]=')
y = y1+y2+y3;
disp(y*'u(n)','y[n]=')
