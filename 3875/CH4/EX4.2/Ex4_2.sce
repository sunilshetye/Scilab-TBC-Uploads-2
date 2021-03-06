clc;
clear;
lambda_1=4200*10^-10 //wavelength in m in first case
Beta_1=0.46*10^-2 //fringe width in m in first case
Beta_2=0.64*10^-2 //fringe width in m in second case

//calculation
lambda_2=(lambda_1*2*Beta_1)/Beta_2 //dividing first case by second
mprintf("The wavelength of the light source to obtain fringes %1.2e m wide is = %4.1f A",Beta_1,lambda_2*10^10) //multiplying by 10^10 to convert into Angstrom
