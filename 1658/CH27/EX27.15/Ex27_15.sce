clc;
//e.g 27.15
hfe=100;
hie=2*10**3;
Rc=470;
Re1=100;
Re2=100;
R1=15000;
R2=5600;
AV=(hfe*Rc)/hie;
disp(AV);
a=((R1*R2)/(R1+R2));
Ri=(a*hie)/(a+hie);
disp('ohm',Ri*1,"Ri=");
b=Re1/Rc;
AV1=AV/(1+b*AV);
disp(AV1);
Ri1=Ri*(1+b*AV);
disp('OHM',Ri1*1,"Ri1=");
