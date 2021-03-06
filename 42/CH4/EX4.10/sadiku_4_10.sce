clear;
clc;
format('v',6);
Q1=-4;
Q2=5;
R1=[1 0 1]-[2 -1 3];
R2=[1 0 1]-[0 4 -2];
e=10^-9/(36*%pi);
mod_R1=(R1(1,1)^2+R1(1,2)^2+R1(1,3)^2)^.5;
mod_R2=(R2(1,1)^2+R2(1,2)^2+R2(1,3)^2)^.5;
C0=0;
V=10^-6*(([Q1/mod_R1]+[Q2/mod_R2])/(4*%pi*e))+C0;
disp(V*10^-3,'V(1,0,1)(in kV)=');