clc;clear;
//Example 25.5
//calculation of difference of two binary numbers

//given values
X='1000';//first binary number
Y='0011';//second binary number 

//calculation
x=bin2dec(X);//decimal equivalent
y=bin2dec(Y);//decimal equivalent
z=x-y;
Z=dec2bin(z);
disp(Z,'difference of the given binary numbers ')
