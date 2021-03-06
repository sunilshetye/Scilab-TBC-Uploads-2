// Exa 4.18
format('v',6)
clc;
clear;
close;
// Given data
Eta = 1;
I_o = 30;// in MuA
I_o = I_o * 10^-6;// in A
v = 0.2;// in V
K = 1.381 * 10^-23;// in J/degree K 
T = 125;// in °C
T = T + 273;// in K
q = 1.6 * 10^-19;// in C
V_T = (K*T)/q;// in V
// The forward dynamic resistance,
r_f = (Eta * V_T)/(I_o * (%e^(v/(Eta * V_T))));// in ohm
disp(r_f,"The forward dynamic resistance in ohm is");
// The Reverse dynamic resistance
r_f1 = (Eta * V_T)/(I_o * (%e^(-(v)/(Eta * V_T))));// in ohm
r_f1= r_f1*10^-3;// in k ohm
disp(r_f1,"The Reverse dynamic resistance in kΩ is");

