// Exa 7.7
clc;
clear;
close;
//given data
fo= 318;// in Hz
C= 0.015;// in microF
C=C*10^-6;// in F
R=0.159/(fo*C);// in ohm
R=R*10^-3;// in kohm
R=floor(R);
disp(C*10^6,"Value of C1, C2 and C3 in micro F");
disp(R,"Value of R1, R2 and R3 in kohm")
