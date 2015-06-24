//Tested on Windows 7 Ultimate 32-bit
//Chapter 7 Field Effect Transistors Pg no. 251 and 252
clear;
clc;

//Given Data

IDSS=20D-3;//drain saturation current in amperes
VGS0=6;//gate to source cutoff voltage in volts
VGS_1=3;//gate to source voltage in volts
VGS_2=-3;//gate to source voltage in volts

//Solution

ID_1=IDSS*(1-VGS_1/VGS0)^2;//drain current for VGS_1 in amperes
ID_2=IDSS*(1-VGS_2/VGS0)^2;//drain current for VGS_2 in amperes
printf("For VGS = %d Volts\nID = %d mA\n\n",VGS_1,ID_1*10^3);
printf("For VGS = %d Volts\nID = %d mA\n\n",VGS_2,ID_2*10^3);
if VGS0>0 then
    printf("Since VGS0 is positive,this is an p-channel MOSFET");
else
    printf("Since VGS0 is negative,this is an n-channel MOSFET");
end
