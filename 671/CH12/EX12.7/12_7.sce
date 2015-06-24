V=440
ns=1000
ws=2*%pi*ns/60
n=975
s=1-n/ns
Z=1.06+0.576/s+%i*(1.68+0.75)
I2=V/sqrt(3)/Z
Im=-%i*V/sqrt(3)/44.2
I1=Im+I2
pf=real(I1)/norm(I1)
Pin=sqrt(3)*V*norm(I1)*pf
Pout=norm(3*I2*I2*0.576*(1/s-1))-415
effi=Pout/Pin
Tnet=Pout/ws/(1-s)

disp(Tnet)
disp(Pin)
disp(norm(I1))
disp(pf)
disp(effi)
