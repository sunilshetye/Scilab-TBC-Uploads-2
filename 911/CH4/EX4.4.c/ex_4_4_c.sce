//example 4.4(c)//
//The output loading factor (HIGH state) in TTL//
clc
//clears the variables//
clear
//clears the screen//
a=20
//I(ih) in micro A//
b=.1
//I(il) in mA//
c=.4
//I(oh) in mA//
d=4
//I(OL) in mA//
e=1.6
//UL (low state) in mA//
f=40
//UL (high state) in micro Amp//
s=c*1000/f;
disp(s,'The output loading factor (HIGH state) = ')