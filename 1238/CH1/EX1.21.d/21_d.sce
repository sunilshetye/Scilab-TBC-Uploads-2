//subtraction using 1's complement//
//example 21.d//
clc
//clears the command window//
clear
// clears //
//converting first binary input to decimal//
p =1;
// initialising //
q =1;
z =0;
b =0;
w =0;
f =0;
//bin= input ( Enter the binary no to be converted to its decimal equivalent : )
//accepting the first binary input from user//
bin =10111.1;
d =modulo(bin ,1);
//separating the decimal part and the integer part//
d=d *10^10;
a =floor(bin) ;
//removing the decimal part//
while (a >0)
//Loop to take the binary bits of integer into a matrix //
r = modulo (a ,10) ; 
b(1,q) = r ; 
a=a /10; 
a= floor ( a ) ; 
q=q +1; 
end 
for m =1: q -1 
// multipliying the bits of integer position values and adding// 
c=m -1; 
f=f+b(1,m) *(2^ c);
end 
while (d >0) 
// Loop to take the binary bits of decimal into a matrix//
e = modulo (d ,2)
w(1 ,p)=e 
d = d /10;
d= floor (d)
p=p +1; 
end 
for n =1: p -1
// multipliying the bits of decimal with their position values and adding// 
z=z+w(1 ,n)*(0.5) ^(11 -n); 
end 
z = z *10000; 
//rounding of to 4 decimal values// 
z= round (z);
z = z /10000; 
d1=f+z;
//converting second binary input to its complement decimal number//
p =1;
// initialising //
q =1;
z =0;
b =0;
w =0;
f =0;
//accepting 2nd binary input//
a=10011.1
s=0;
d=modulo(a,1);//separating integer and decimal part//
//since complement of decimal part is 0,we do not consider it further//
a=floor(a);//getting the integer part//
 for i=1:5
    x(i)=modulo(a,10)
    if x(i)==1 then
        x(i)=0
    else
        x(i)=1
    end
    s=s+(x(i)*(2^(i-1)))
    a=a/10
    a=floor(a)
end
d2=s;//assigning the equivalent decimal value to d2//
r=d1+d2+.5;//adding 1 to the decimal equivalents to find the result//
r=r-bin2dec('100000');
r=dec2bin(r);//converting the result to binary equivalent//
disp('the subtraction of two binary numbers give:')
disp(r);//displaying the result//
