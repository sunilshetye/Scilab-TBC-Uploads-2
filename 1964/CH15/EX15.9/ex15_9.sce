//Chapter-15, Example 15.9, Page 497
//=============================================================================
clc
clear
//CALCULATIONS
//using 1's complement method
x1=base2dec(['1111'],2)//converting binary to decimal
x=bin2dec('1010')
x2=dec2bin(bitcmp(x,4))//1's complement of a number
disp(x2)
x3=base2dec([x2],2)
x4=x1+x3+1;
x5=dec2base(x4,2)//converting decimal to hexadecimal
disp(x5)
y=15;
z=bitand(x4,y);//eliminating carry
z2=dec2base(z,2)//converting decimal to binary
disp(z2)
//using normal method
a=base2dec(['1111','1010'],2);//converting binary to decimal
b=a(1)-a(2);//subtraction
c=dec2base(b,2)//converting decimal to binary
disp(c)
//=================================END OF PROGRAM=======================================================================================================
