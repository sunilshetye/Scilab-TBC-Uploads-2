// Example 1.7
clc;
clear;
close;
// Given data
format('v',6);
VEE= 5;// supply voltage in V
RC= 2*10^3;// collector resistance in Ω
RE= 4.3;// emitter resistance in kΩ
VBE= 0.7;// in V
VT= 26;// in mV
IE= (VEE-VBE)/(2*RE);//emitter current in mA
re_desh= VT/IE;//dynamic emitter resistance in Ω
Ad= RC/(2*re_desh);// differential mode gain
Acm= RC/(2*RE*10^3+re_desh);// common mode gain
disp(Acm,"The common mode gain is : ");
CMRR= Ad/Acm;// common mode rejection ratio
disp(CMRR,"The CMRR is : ");




