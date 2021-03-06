kT = 0.0259;
ni = 1.5*10^10;
q = 1.6*10^-19;
q0 = 1;
epsilon0 = 8.85*10^-14;
epsilon = 11.8;
epsiloni = 3.9;
Na = 5*10^15;
d = 10^-6;
Qi = 4*10^10*q;
Vf = kT*log(Na/ni)/q0;
Wm = 2*sqrt(epsilon*epsilon0*Vf/(q*Na));
Vms = -0.95;
Ci = epsiloni*epsilon0/d;
Vfb = Vms -(Qi/Ci);
Qd = -q*Na*Wm;
Vt = Vfb-Qd/Ci+2*Vf;
Cd = epsilon*epsilon0/Wm;
Cmin = Ci*Cd/(Ci+Cd);
disp(Vf,"Phi(F) (in eV)=")
disp(Wm*10^4,"W(m) (in micron)=")
disp(Qi,"effective interface charge (in coulomb per square cm)=")
disp(Ci*10^6,"C(i) (in microfarad per square cm)=")
disp(Vfb,"V(fb)(in V)=")
disp(Qd,"Q(d)(in coulomb per square cm)=")
disp(Vt,"V(T) (in V)=")
disp(Cd*10^6,"C(d) (in microfarad per square cm)=")
disp(Cmin,"C(min) (in farad per square cm)=")