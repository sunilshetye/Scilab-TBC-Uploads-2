//Windows 10
// Scilab 6.0.0
//Chapter 10 Electmotive Force

clc;
clear;

//Initialisation of Variables
E1= 0.763 //voltage
c= 0.1 //mol/lit
c1= 0.01 //mol/lit
R= 8.31 //in electrical unit J/mol K
T= 25 //temperature in Celsius
F= 96500 //charge in coloums
c2= 1 //molar
c3= 1 //molar

//CALCULATIONS
E_cell= E1-(log10(c*c2/(c1**2*c3))*R*(273+T)*2.3/(2*F))

//RESULTS
mprintf("Potential of the cell = %.3f v",E_cell)
