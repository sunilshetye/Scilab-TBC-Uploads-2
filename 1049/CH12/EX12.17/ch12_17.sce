clear;
clc;
T_on=10;
T_off=15;
a=T_on/(T_on+T_off);
V_s=230;
V_t=a*V_s;
r_a=3;
K_m=.5;
N=1500;
w_m=2*%pi*N/60;
I_a=(V_t-K_m*w_m)/r_a;    printf("motor load current=%.3f A",I_a);