//data
ZL=50+%i*100
Zo=50
Bl=%pi/2
//formula and result
printf("\nresult:-")
Z_in=Zo*(%i*Zo)/(%i*ZL)
F=(ZL-Zo)/(ZL+Zo)
x=sqrt(real(F)^2+imag(F)^2)
printf("\nx=%f",x)
VSWR=(1+x)/(1-x)
Z_L=ZL/Zo
printf("\nZ_in=")
disp(Z_in)
printf("\nF=")
disp(F)
printf("\nVSWR=%.4f",VSWR)
printf("\nZ_L=")
disp(Z_L)
