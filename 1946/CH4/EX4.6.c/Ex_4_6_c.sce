// Example 4.6.c:Loss for 10Km
clc;
clear;
close;
L=8;// Length of fiber in km
Pi=120*10^-6;// input power in watt
Po=3*10^-6;//Output power in watt
alpha= round(10*(log10(Pi/Po)));//Loss in dB
alphadb= alpha/L;//Loss in dB/Km
alphadb2=alphadb*10;// Loss along 10Km fiber length in dB
Ds=alphadb2+9;// Due to splices at 1km Interval
disp(Ds,"Due to splices at 1km Interval in dB")

