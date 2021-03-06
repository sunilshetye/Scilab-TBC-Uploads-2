//Fiber-optics communication technology, by Djafer K. Mynbaev and Lowell L. Scheiner 
//Example 11.3.3
//windows 7
//Scilab version-6.0.0
clc;
clear all;
//given

M=20;//Multiplication factor of a photodiode
Pin=0.1E-6;//Average input power in W
T=300;//Room temperature in K
BWpd=2.5E+9;//Bandwidth of a photodiode in Hz
Rl=50E+3;
R=0.9;//Responsivity of a photodiode
e=1.6E-19;//Electrons value in Coulomb

//case 1
Fssi=2.49;//excess noise factor of Si avalanche photodiode
SNRs=(R*Pin)/(2*e*Fssi*BWpd);
mprintf("SNR of Si avalanche photodiode = %.2f",SNRs);

//case 2
FsInGaAs=12.78;//excess noise factor of InGaAs avalanche photodiode
SNRt=(R*Pin)/(2*e*FsInGaAs*BWpd);
mprintf("\nSNR of InGaAs avalanche photodiode = %.1f",SNRt);
