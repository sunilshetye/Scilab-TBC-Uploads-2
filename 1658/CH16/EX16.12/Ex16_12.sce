clc;
Idc=0.2;
Vdc=30;
C1=100;
C2=100;
L=5;
f=50;
RL=Vdc/Idc;
y=5700/(L*C1*C2*RL);
disp('%',y*100,"y=");
