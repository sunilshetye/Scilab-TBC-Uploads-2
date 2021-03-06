// Example 4.9.d//BANDWIDTH LENGTH PRODUCT
clc;
clear;
close;
d=0.01;// Change in refractive index
n1=1.5;//Core refrctive index
L=6*10^3;//Length in meter
C=2.998*10^8;//Speed of light in m/s
dts=round(((L*n1*d)/C)*10^9);//Delay in ns
Bt=(1/(2*dts*10^9))*10^12;//Bit rate in Mbits/sec
Ss=(L*n1*d)/(2*sqrt(3)*C);//Pulse broadning due to intermodal dispersion in ns
Btimp=0.2/Ss;//
BL=Btimp*L*10^-9;// bandwidth length product in km
disp(BL,"bandwidth length product MHz km")
