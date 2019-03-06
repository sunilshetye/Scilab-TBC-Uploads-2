//Windows 10
// Scilab 6.0.0
//Chapter 8 Chemical Equlibrium

clc;
clear;

//Initialisation of Variables
k= 1.1*10**-5 //dissociation constant
V= 600 //volume in ml
n= 0.4 //no of mole

//CALCULATIONS
m= n*1000/V
x= (-k+sqrt(k**2+4*4*0.67*k))/(2*4)
M= 2*x
P= x*100/m

//RESULTS
mprintf("Molar concentration of NO2= %.2e mol per litre",M)
mprintf("\nPer cent dissociation= %.2f percent",P)
