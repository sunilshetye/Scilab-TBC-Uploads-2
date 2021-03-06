//Chapter 5
//Example 5-6
//ProbOnOpampParameters 
//Page 128,129, Figure 5-5
clear;clc;
//Given
R = 10*10^3 ; //Resistance
E2 = 0 ; //Source across negative terminal
Rl = 5*10^3 ; // Load Resistance
E1 = 5 ; // source across positive terminal
//example 5-6(a)
Il = (E1 - E2)/R ; //Load Current
printf ("\n\n Load current across Rl = %.4f A " , Il )
//example 5-6(b)
Vl = Il * Rl ; // Voltage across Rl 
printf ("\n\n Voltage across load resistance = %.4f V " , Vl )
//example 5-6(c)
Vo = (2*Vl)-E2 ; //Output voltage
printf ( "\n\n Output Voltage = %.4f V ", Vo )
