// Example 4.1
clc;
clear;
close;
// Given data
format('v',6);
Vout= '-(V1+10*V2+100*V3)';//given expression  
Rf= 100;// in kΩ
// Vout= -Rf*(V1/R1+V2/R2+V3/R3)= -(Rf/R1*V1+Rf/R2*V2+Rf/R3*V3)     (i)
// Compare equation(i) with given expression
R1= Rf/1;//in kΩ
R2= Rf/10;// in kΩ
R3= Rf/100;// in kΩ
disp(Rf,"The value of Rf in kΩ is : ");
disp(R1,"The value of R1 in kΩ is : ");
disp(R2,"The value of R2 in kΩ is : ");
disp(R3,"The value of R3 in kΩ is : ");



