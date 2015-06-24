//Page Number: 336
//Example 6.11
clc;
//Given
I0=30D-3; //A
V0=3D+3; //V
Z0=10; //ohm
l=0.1624; //m
f=10D+9; //Hz
C=((I0*Z0)/(4*V0))^(1/3);
N=(l*f)/(0.593D+6*sqrt(V0));

//Gain
Ap=-9.54+(47.3*C*N);
disp('dB',Ap,'Gain:');

ve=0.593D+6*sqrt(V0);
be=(2*%pi*f)/ve;

//Four propogation constants
gam1=((-sqrt(3)*be*C)/2)+(%i*be*(2+C))/2;
gam2=((sqrt(3)*be*C)/2)+(%i*be*(2+C))/2;
gam3=%i*be*(1-C);
gam4=-%i*be*(1-((C*C*C)/4));

disp(gam4,gam3,gam2,gam1,'Four propogation constants:');

//Calculations for propogation constants are wrong for gam 3 and 4 hence answers dont match
