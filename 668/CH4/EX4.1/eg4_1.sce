Nd = 10^16; //in per cm cube
p = 10^18; //in per cm cube
Na = 10^18; //in per cm cube
Nc = 2.8 * 10^19; //in per cm cube
Nv = 10^19; //in per cm cube
kT = 26*10^-3; //in eV
eps0 = 8.84*10^-12; //in F/m
eps = 11.9*eps0;
Eg = 1.1; //in eV
q = 1.6*10^-19;
En = kT*log(Nd/Nc);
disp(En,"The Fermi level positions in the n-region relative to the conduction band (in eV) = ")
Ep = -kT*log(p/Nv);
disp(Ep,"The Fermi level positions in the p-region relative to the valence band (in eV) = ")
Vbi = Eg + En - Ep;
disp(Vbi,"built-in potential = ")
Wp = (2*eps*Vbi*Nd/(q*Na*10^6*(Na+Nd)))^0.5;
disp(Wp,"depletion width on the p-side (in m) = ")
