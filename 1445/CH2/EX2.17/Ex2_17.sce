//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 17

clc;
disp("CHAPTER 2");
disp("EXAMPLE 17");

//VARIABLE INITIALIZATION
e=141.4;                             //amplitude of e(t) in Volts
E=141.4/sqrt(2);                     //RMS value of e(t) in Volts
angle_E=0;                           //in degrees
//i(t)=(14.14<0)+(7.07<120)
i1=14.14;                            //in Amperes         
angle_i1=0;                          //in degrees
i2=7.07;                             //in Amperes
angle_i2=120;                        //in degrees

//SOLUTION
function [x,y]=pol2rect(mag,angle);  //function 'pol2rect()' converts current in polar form to rectangular form 
x=mag*cos(angle*(%pi/180));          //to convert the angle from degrees to radians
y=mag*sin(angle*(%pi/180));
endfunction;
//the given current i(t) is composed of two currents i1(t) and i2(t)
//i1(t) and i2(t) are not mentioned in the book but are considered for the sake of convenience
[i1_x,i1_y]=pol2rect(i1,angle_i1);   //i1(t)= 14.14 sin(120t)
[i2_x,i2_y]=pol2rect(i2,angle_i2);   //i2(t)=7.07 cos(120t+30)
i=(i1_x+i2_x)+(%i*(i1_y+i2_y));
function [mag,angle]=rect2pol(x,y);  //function 'rect2pol()' converts current in rectangular form to polar form
mag=sqrt((x^2)+(y^2));         
angle=atan(y/x)*(180/%pi);           //to convert the angle from radians to degrees
endfunction;
[I,angle_I]=rect2pol((i1_x+i2_x),(i1_y+i2_y));
I=I/sqrt(2);

//solution (i)
z=E/I;
angle_z=angle_E-angle_I;
[r,xc]=pol2rect(z,angle_z);
f=50;
c=1/(2*%pi*f*(-xc));
disp(sprintf("(i) The value of resistance is %f Ω",r));
disp(sprintf("    The value of capacitance is %f μF",c*10^6));

//solution (ii)
pf=cos(angle_z*(%pi/180));
disp(sprintf("(ii) The power factor is %f ",pf));

//solution (iii)
p=E*I*pf;
disp(sprintf("(iii) The power absorbed by the source is %f W",p));

//END
