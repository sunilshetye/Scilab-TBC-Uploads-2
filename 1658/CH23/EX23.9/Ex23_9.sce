clc;
VDD=18;
RD=2*10**3;
IDSS=6*10**-3;
VP=-3;
ID=IDSS;
disp('mA',ID*10**3,"ID=");
Vo=VDD-ID*RD;
disp('V',Vo*1,"Vo=");
