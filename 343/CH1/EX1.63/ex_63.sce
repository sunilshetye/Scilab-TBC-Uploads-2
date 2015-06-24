V1=2;
V2=4;
R1=5;
R2=10;
R3=10;
R4=8;
R5=5;
A=[-15,10;10,-25];
B=[-2;4];
I=inv(A)*B;
Vth=V2+R1*I(2,1);
Ra=(R1*R2)/(R1+R2);
Rb=Ra+R3;
Rth=(Rb*R5)/(Rb+R5);
Il=Vth/(R4+Rth);
disp("Amperes",Il,"Current in 8 Ohm resistor");