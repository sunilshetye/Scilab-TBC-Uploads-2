clc;
Ptrdc=100*10**-3;
VCC=10;
RL=16;
no=0.5;
Poac=no*Ptrdc;
disp('mW',Poac*10**3,"Poac=");
ICQ=2*Poac/VCC;
disp('A',ICQ,"ICQ=");
RL1=VCC/ICQ;
a=sqrt(RL1/RL);
disp(a);
