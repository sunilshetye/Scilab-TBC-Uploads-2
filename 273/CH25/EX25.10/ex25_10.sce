clc;
clear;
//example 25.10
//binary division

format('v',8);//changing the default precision to 8
a=11001;//first number 
b=100;//second number
A=bin21dec(a);//converting a in to decimal number 
B=bin21dec(b);//converting b in to decimal number 
S=A/B;        //multiply the two decimal numbers
temp=dec21bin(S);//converting the decimal product back to binary

disp(temp,'quotient is');//displaying the final output