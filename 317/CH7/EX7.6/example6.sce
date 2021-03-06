// find whether transistor remains in saturated region
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 7-6, page 235

clear;clc; close;

// Given data
Vcc=20;// collector supply voltage in volts
Vbb=10;// base voltage in volts
Rc=10*10^3;// collector resistance in ohms
Rb=1*10^6;// base resistance in ohms
Bdc=50;

// Calculations
Ib=Vbb/Rb;// base current in amperes
Ic=Bdc*Ib;// collector current in amperes
Vce=Vcc-(Ic*Rc);// collector-emitter voltage in volts
disp("Volts",Vce,"collector-emitter voltage")

// Result
// as Vce>0 ,the transistor is not saturated
