// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 2, Example 17")
disp("Head generated by the pump H")
//H is directly proportionl to D^2
D = 0.32;
H = 21.5;
Hred = 20;
disp("Diameter to be reduced is Dred in cm")
Dred = D*(Hred/H)^(1/2) * 100
