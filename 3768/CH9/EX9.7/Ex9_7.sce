//Example number 9.7, Page number 205

clc;clear;
close;

//Variable declaration
e=1.6*10**-19;     //charge(c)
mew_e=0.19;        //electron mobility(m**2/Vs)
T=300;         //temperature(K)
KB=1.38*10**-23;   //boltzmann constant
//Calculation
Dn=mew_e*KB*T/e;    //diffusion coefficient(m**2/sec)
//Result
printf("diffusion coefficient is %.1e m^2/s",Dn)
