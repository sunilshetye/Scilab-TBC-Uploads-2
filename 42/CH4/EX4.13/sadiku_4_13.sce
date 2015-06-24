clear;
clc;
p1=-5*10^-9, p2=9*10^-9;
r1=2,r2=-3,e=10^-9/(36*%pi);
V=(1/(4*%pi*e))*((p1*abs(r1)/r1^3)+(p2*abs(r2)/r2^3));
disp(V);