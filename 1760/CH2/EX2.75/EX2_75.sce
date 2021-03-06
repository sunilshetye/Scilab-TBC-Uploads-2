                  //EXAMPLE 2-75   PG NO-113
V=100+%i*0;
R=3+%i*2;
I=V/R;
disp('i)  CURRENT (I) is  in polar form  =  '+string (I) +' A ');
ZA=10+%i*8;
ZB=9-%i*6;
ZC=3+%i*2;
IB=I*[ZA/(ZA+ZB)];
disp('i)  CURRENT (IB) is  in polar form  =  '+string (IB) +' A ');
IA=I*[ZB/(ZA+ZB)];
disp('i)  CURRENT (IA) is  in polar form  =  '+string (IA) +' A ');
Z=[(ZA*ZB)/{ZA+ZB}]+ZC;
disp('vi)  IMPEDANCE (Z) is    =  '+string (Z) +' ohm ');
V1=I*Z;
disp('vi)VOLTAGE  (V1) is    =  '+string (V1) +' V ');
S=V1*I;
disp('i)  Apparent Power (S) is     =  '+string (S) +'  VA ');
P=V1*I*0.984;
disp('i) Active Power (P) is     =  '+string (P) +'  W ');
Q=[S^2-P^2]^0.5;
disp('i) Reactive Power (Q) is     =  '+string (Q) +'  Var ');
