clear;
clc;
format('v',12);
e=10^-9;
Q=-5*%pi*10^-3;
pl=3*%pi*10^-3;
r=[4 0 3];
p=(r(1,1)^2+r(1,2)^2+r(1,3)^2)^.5;
r1=[4,0,0];
R=r-r1;
mod_R=(R(1,1)^2+R(1,2)^2+R(1,3)^2)^.5;
Dq=(Q*R)/(4*%pi*mod_R^3);
ap=r/p;
Dl=(pl/(2*%pi*p))*ap;
D=Dq+Dl;
disp(D*10^6,'Flux density D(in microC) due to a point charge and a infinite line charge');