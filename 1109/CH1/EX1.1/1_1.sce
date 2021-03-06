clear;
clc;
Zo=710* exp(%i*(-%pi/(180/16)));f=1000;
w=2*%pi*f;
a=.01;b=.035;
P=a+%i*b;
Z=Zo*P;
R=real(Z);
r=round(R*100)/100;
printf('-Resistance R = %f ohms/km\n',r);
L=((imag(Z))/w)*10^3;
l=round(L*100)/100;
printf('-Inductance L = %f mH/km\n',l);
Y=P/Zo;
G=real(Y);
printf('-Conductance G = %f mhos/km\n',-G);
C=((imag(Y))/w)*10^6;
c=round(C*1000)/1000;
printf('-Capacitance C = %f microfarads/km\n',c);
Vp=round(w*1000/(b*10^5))/1000;
printf('-Velocity of propagation Vp = %f^* 10^5 km/sec',Vp);
