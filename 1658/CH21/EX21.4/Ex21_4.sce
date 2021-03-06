clc;
VCC=15;
Rc=3.3*10**3;
RE=1000;
R1=33*10**3;
R2=8.2*10**3;
RL=10*10**3;
B=100;
VBE=0.7;
VTH=VCC*(R2/(R1+R2));
RTH=(R1*R2)/(R1+R2);
IE=(VTH-VBE)/(RE+(RTH/B));
re=25/(IE*10**3);
Ri2=B*re;
disp('ohm',Ri2*1,"Ri2=");//the answer of Ri2 varies from the answer printed in the book with slight difference(11.7 in book & 11.65 here),but this affects some answers further.
Ro1=(Rc*Ri2)/(Rc+Ri2);
disp('ohm',Ro1*1,"Ro1=");
Ro2=(Rc*RL)/(Rc+RL);
disp('ohm',Ro2*1,"Ro2=");
Av1=Ro1/re;
disp(Av1);
Av2=Ro2/re;
disp(Av2);
Av=Av1*Av2;
disp(Av);
Gv=20*log10(Av);
disp('dB',Gv*1,"Gv=");
