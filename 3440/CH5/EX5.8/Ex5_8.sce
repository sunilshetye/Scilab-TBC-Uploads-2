clc

T=300 //K
k=8.617*10^-5 //eV/K
q=1.6*10**-19 //C
epsilonx=8.854*10^-14 //F/cm
ni=9.65*10^9//cm^-3
NA=10^17 //cm^-3
d=8*10^-7//cm
Co=6.9*10^-7//F/cm^2
VBS=2//V
phims=-0.98
//2*phis=p
p=0.84//V
Qf=5*10^11//cm^2
deltaVT=sqrt(2*epsilonx*11.9*q*NA)/Co*(sqrt(p+VBS)-sqrt(p))
disp(deltaVT,"deltaVT in V is= ")

