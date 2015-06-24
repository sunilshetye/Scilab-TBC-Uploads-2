m0 = 0.91 * 10^-30; //in kg
m = 0.26*m0; //effective mass
E = 50*10^-3; //optical phonon energy in eV
t = 10^-13; //carrier scattering relaxation time at 300K
q = 1.6*10^-19;
kBT = 26*10^-3; //in eV
vd = (2*q*(E-1.5*kBT)/m)^0.5;
disp(vd, "Drift velocity (in m/s) = ")
ef = vd*m/t/q; //electric field in V/cm
disp(ef,"Electric field(in V/m) =")