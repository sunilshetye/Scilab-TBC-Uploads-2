//clear//
//Example 11.5:Nyquist criterion for Continuous Time Systems
//Bode Plot
s = %s;
//Open Loop Transfer Function
G = syslin('c',[1/(s+1)]);
H = syslin('c',[1/(0.5*s+1)]);
F = G*H;
clf;
bode(F,0.01,100)
show_margins(F)
