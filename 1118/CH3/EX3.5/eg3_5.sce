clear;
clc;
funcprot(0);
s=7500;
v=33;
lf=0.6;
kf=1.13;
cost_en=0.15;
dep_rate=0.1;
res=17.6;
im=s/(v*sqrt(3));
irms=0.6*kf*im;
rho=(17.6*10^4)/(10^5);
el=3*irms*irms*.1*rho*8760/1000;
ann_w=el*cost_en;
ann_dep=dep_rate*20000;
c=ann_w/ann_dep;
area=sqrt(c);
printf("The area is:%.2f sq cm",area);
