              //EXAMPLE 8-18   PG NO-533
Ro=600;
Fc=1000;
L1=Ro/(%pi*Fc);
C2=1/(%pi*Ro*Fc);
Fo=1050;
m=[1-(Fc/Fo)]^0.5;
X=(0.5*m*L1);
Y=[(1-m*m)/4*m]*L1;
Z=m*C2;
A=(m*L1)/2;
B=[(1-m*m)/(2*m)]*L1;
C=(m*C2)/2;
disp('i) INDUCTAR (L1) is    =  '+string (L1) +'  H ')
disp('ii) CAPACITOR (C2) is    =  '+string (C2) +'  F ')
disp('iii) CONSTANT (m) is    =  '+string (m') +'   ')
disp('iv)   (X) is    =  '+string (X) +'  H ')
disp('v)    (y) is    =  '+string (Y) +'  H ')
disp('vi)   (Z) is    =  '+string (Z) +'  F ')
disp('vii)  (A) is    =  '+string (A) +'  H ')
disp('viii) (B) is    =  '+string (B) +'  H ')
disp('x)    (C) is    =  '+string (C) +'  F ')
