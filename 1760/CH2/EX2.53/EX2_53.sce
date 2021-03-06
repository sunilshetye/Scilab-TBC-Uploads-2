               //EXAMPLE 2-53   PG NO=97
R=15;               //RESISTANCE
V=240+%i*0;         //VOLTAGE
I=22.1;
Ir=V/R;             //CURENT
disp('i)  CURRENT (Ir) is    =  '+string (Ir) +'  A ');
IL=[I^2-Ir^2]^0.5;
disp('i)  CURRENT (IL) is    =  '+string (IL) +'  A ');
XL=V/IL;
disp('i)   INDUCTANCE (XL) is    =  '+string (XL) +'  ohm ');
L=XL/[2*%pi*50];
disp('i)   INDUCTANCE (L) is    =  '+string (L) +'  H ');
IL1=[34^2-Ir^2]^0.5;
disp('i)   INDUCTANCE (IL1) is    =  '+string (IL1) +'  A ');
F=8/[2*%pi*0.05];
disp('i)   FREQUENCY (F) is    =  '+string (F) +'  Hz ');
