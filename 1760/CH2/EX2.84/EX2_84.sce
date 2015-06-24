                           //EXAMPLE 2-84            PG  NO  121-122
L=0.01;                   //Inductance
C=0.04*10^-6;                 //Capacitor
Fo=1/[2*%pi*(sqrt(L*C))];
disp('i)  Resonant Frequency (Fo) is    =  '+string (Fo) +'  Hz ');
Z=50;
R=Z;
V=100;
Io=V/R;
disp('ii)  Current (Io) is    =  '+string (Io) +'  A ');
Fc=(1/(2*%pi))*[(1/(L*C))-(R^2/(2*L^2))]^0.5;
disp('iii)  Cutt Frequency (Fc) is    =  '+string (Fc) +'  Hz ');
Z1=50-%i*2.5;
Xc=1/[2*%pi*Fc*C];
disp('iv)  Xc (Xc) is    =  '+string (Xc) +'   ');
Vc=[100/Z1]*Xc;
disp('v)  VOLTAGE (Vc) is    =  '+string (Vc) +'  V ');
FL=1/[(2*%pi)*[(L*C)-[(R^2*C^2)/2]]^0.5];
disp('vi) Frequency (FL) is    =  '+string (FL) +'  Hz ');
Z2=50+%i*2.5;
VL=[100/Z2]*(2*%pi*FL*0.1);
disp('i)  VOLTAGE (VL) is    =  '+string (VL) +'  V ');
