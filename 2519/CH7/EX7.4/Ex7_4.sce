clc
clear
//Initialization of variables
cp=1
T2=60 //F
T1=100 //F
ta=32 //F
//calculations
dq=cp*(T2-T1)
ds=cp*log((460+T2)/(460+T1))
dE=dq-ds*(ta+460)
//results
printf("Change in available energy = %.1f Btu/lbm",dE)
disp("The answer is a bit different due to rounding off error in textbook")
