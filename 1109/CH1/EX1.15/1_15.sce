clear;
clc;
l=200;Vg=10;Zg=500;Zs=683-(%i*138);P=0.0074+(%i*0.0356);Zo=Zs;
Is=Vg/(Zg+Zs);
modIs=abs(Is);
printf("-Sending end current = %f mA\n",round(modIs*(10^3)*100)/100);
Vs=Is*Zs;
modVs=abs(Vs);
printf("-Sending end voltge = %f V r.m.s.\n",round(modVs*100)/100);
Rs=real(Zs);
Ps=((modIs)^2)*Rs;
printf("-Sending end power = %f mW\n",round(Ps*(10^3)*100)/100);
Vr=modVs*exp(-P*l);
A=imag(-P*l);
printf("-Receiving end voltage = %f /_ %f V\n",round(abs(Vr)*100)/100,A);
Zr=Zs;
Ir=Vr/Zr;
modIr=abs(Ir);
printf("-Receiving end current = %f mA\n",round(modIr*(10^3)*100)/100);
Rr=Rs;
Pr=((modIr)^2)*Rr;
printf("-Receiving end power = %f mW",fix(Pr*(10^3)*100)/100);
