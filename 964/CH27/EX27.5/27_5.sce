clc;
clear;
E=10*10^9;//Pa
I=1.25*10^-5;//m^4
L=3;//m
for i=1:8
    p=i*%pi/L;
    P=i^2*(%pi)^2*E*I/(L^2*1000);
    disp(i,"n=")
    disp("m^-2",p,"p=")
    disp("kN",P,"P=")
    disp("-----------------------------------------------------")
end
