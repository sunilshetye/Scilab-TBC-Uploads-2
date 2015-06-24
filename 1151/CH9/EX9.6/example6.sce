s=%s;
// g i v e n Ka=10 sec^-1
 K =10;
g =K/(s *s*(1+0.25*s))
 G= syslin ('c',g)
fmin =0.01;
fmax =100;
bode (G,fmin , fmax )
show_margins (G)
xtitle (" uncompensated system")
[gm , freqGM ]= g_margin (G)
[pm , freqPM ]= p_margin (G)
disp (gm ," g a i n ma r g i n=")
disp (( freqGM *2* %pi)," g a in margin f r e q=");
disp (pm ," phas e margin=")
disp (( freqPM *2* %pi)," phas e margin f r e q=");
disp (" since phase margin is negative system is unstable ")
disp (" /n hence we use a lead-lag compensator ")
gc =(0.374*s +1)^2/(1+0.074*s)^2
Gc= syslin ('c',gc)
disp (Gc ," transfer function of lead lag compensator= ")
G1=G*Gc;
disp (G1 ," o v e r a l l t r a n s f e r f u n c t i o n=");
fmin =0.01;
fmax =100;

bode (G1 ,fmin , fmax );
show_margins (G1)
xtitle (" compensated sys t em")
[gm , freqGM ]= g_margin (G1);
[pm , freqPM ]= p_margin (G1);
disp (pm ," phas e margin o f compensated sys t em=")
disp (( freqPM *2* %pi)," g a in c r o s s ov e r f r e q u e n c y=")
