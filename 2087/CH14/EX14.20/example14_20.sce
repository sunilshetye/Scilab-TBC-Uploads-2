

//example14.20
//design a regime channel
clc;funcprot(0);
//given
Q=100;          //discharge
f=1.1;          //silt factor
s=1/2;          //side slope

V=(Q*f^2/140)^(1/6);
A=Q/V;
P=4.75*Q^0.5;
D=(P-(P^2-6.944*A)^0.5)/3.472;
B=P-2.236*D;
R=5*V^2/(2*f);
S=f^(5/3)/(3340*Q^(1/6));
B=round(B*10)/10;
D=round(D*100)/100;
mprintf("Width of channel section=%f m.",B);
mprintf("\nDepth of channel section=%f m.",D);
mprintf("\nBed slope=%f.",S);
