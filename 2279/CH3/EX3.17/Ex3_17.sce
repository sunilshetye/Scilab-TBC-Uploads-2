//Example 3.17
clear;
clc;
no = 2; //Assume the amount of time shift  =2
L = 10; //Length of given  signal
for n = 1:L
    x(n)=sin(n);
    y(n)=-sin(n);
  end
 
//First shift the input signal only
Input_shift = x(L-no);
Output_shift = y(L-no);
if(Input_shift == Output_shift)
  disp('The given discrete system is a Time In-variant system');
else
  disp('The given discrete system is a Time Variant system');
end
