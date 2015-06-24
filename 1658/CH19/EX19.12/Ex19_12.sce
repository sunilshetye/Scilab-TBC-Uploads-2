clc;
VEE=10;
RE=10*10**3;
RB=100*10**3;
B=50;
VBE=0.7;
IE=(VEE-VBE)/(RE+(RB/B));
re=25/IE*10**-3;
Ri=B*(RE+re);
disp('Kohm',Ri*10**-3,"Ri=");
Ris=(RB*Ri)/(RB+Ri);
Rs=0;
Ro=re+((RB*Rs)/(RB+Rs))/B;
disp('ohm',Ro,"Ro=");
Av=RE/(re+RE);
disp(Av);
