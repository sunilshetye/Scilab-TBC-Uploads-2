//===============================================================================
//Chapter 12 Example 5

clc;clear all;

//variable declaration
R2         = 1000; 		//resistance of arm  in  Ω
R3         = 218; 		//resistance of arm  in  Ω
R4         = 1000; 		//resistance of arm  in  Ω
C4        =  10*10^-6;		//capacitance in F
r           = 469;

//calculations
R1    = ((R2*R3)/(R4));		//resistance of coil in Ω
x      = (r*(R3+R4))+(R3*R4)
L1     = (C4*R2*x)/(R2);			//inductance of inductor in H

//result
mprintf("resistance of coil  = %3.2f Ω",R1);
mprintf("\ninductance of inductor = %3.2f H",L1);

