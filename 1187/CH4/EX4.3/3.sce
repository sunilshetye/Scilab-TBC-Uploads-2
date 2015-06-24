clc

rho=1.2; // kg/m^3
d=12; // m
u1=20; // m/s
u4=8; // m/s

A=%pi/4*d^2
F=rho*A*(u1+u4)/2*(u1-u4);

disp("(b) The thrust on the turbine = ")
disp(F)
disp("N")

P=rho*A*(u1+u4)/2*(u1^2/2-u4^2/2);
disp("Power generated by the turbine =")
disp(P)
disp("W")