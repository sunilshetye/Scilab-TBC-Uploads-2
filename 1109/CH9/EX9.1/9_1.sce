clear;
clc;
R=10.4;L=3.67*(10^-3);G=0.8*(10^-6);C=0.00835*(10^-6);bmax=0.1;
f=5.5*(10^3); //artificial line will be designed fr highest frequecy of operation
w=2*%pi*f;
Z=R+(%i*w*L);
Y=G+(%i*w*C);
P=sqrt(Z*Y);
b=imag(P);
l=bmax/b;
Zs=Z*l/2;
Zsh=1/(Y*l);
Zr=Y*l;
R1=real(Zs);
printf("-R1/2 = %f ohms\n",round(R1*10)/10);
L1=imag(Zs)/w;
printf("-L1/2 = %f mH\n",fix(L1*(10^3)*100)/100);
C2=imag(Zr)/w;
printf("-C2 = %f microfarads\n",fix(C2*(10^6)*10^4)/10^4);
G2=real(Zr);
R2=1/(round(G2*10^6*10)/10);
printf("-R2 = %f m ohms",R2);
