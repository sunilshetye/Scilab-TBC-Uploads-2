//CHAPTER 7- SINGLE PHASE TRANSFORMER
//Example 33

clc;
disp("CHAPTER 7");
disp("EXAMPLE 33");

// 5kVA 400/200 V 50 Hz single phase transformer
//open ciruit and short circuit tests
//VARIABLE INITIALIZATION
va=5000;                             //apparent power
v1=400;                             //primary voltage in Volts
v2=200;                             //secondary voltage in Volts
f=50;
//no load parameters
Voc=400;
Io=1;
Woc=50;                             // watts HT side
//short circuit test
Vsc=12;
Isc=10;
Wc=40;                             // watts HT side 
//
pf=0.8;
//SOLUTION  
//no load condition
phi0=acos(Woc/(v1*Io));
Ic=Io*cos(phi0);
Iphi=Io*sin(phi0);
Rc=v1/Ic;
X=v1/Iphi;
disp("SOLUTION (i)");
disp(sprintf("The value of Ic is %f Amp",Ic));
disp(sprintf("The value of IΦ is %f Amp",Iphi));
//disp(sprintf("The value of Rc is %f Ohm",Rc));
//disp(sprintf("The value of X is %fΩ",X));
//
//short circuit
phisc=acos(Wc/(Vsc*Isc));
pf1=cos(phisc);
R_e1=Vsc*pf1/Isc;
Z_e1=Vsc/Isc;
X_e1=sqrt(Z_e1^2-R_e1^2);  
disp(sprintf("The value of Re1 is %.2f Ohm",R_e1));
disp(sprintf("The value of Ze1 is %.2f Ohm",Z_e1));
disp(sprintf("The value of Xe1 is %.2fΩ",X_e1)); 
//
I1=va/v1;
phi=acos(pf);
//R=ercosphi2+vx.sinphi2
//E2=V2+I2.R
%reg=(I1*R_e1*pf+I1*X_e1*sin(phi))*100/v1; 
disp("SOLUTION (c(i))");
disp(sprintf("The percent regulation at full load is %.3f",%reg));
//
//full load output at pf=0.8
Pout=va*pf;                 //output power
ironLoss=Woc;
cuLoss=Wc;
loss=ironLoss+cuLoss;
Pin=Pout+loss;              // input power
eff=Pout*100/Pin;
disp("SOLUTION (c(ii))");
disp(sprintf("The percent efficiency at full load is %.2f",eff)); // not calculated in the text book
disp(" "); 
// 
//END
