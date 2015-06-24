clear;
clc;
v=10e3/sqrt(3);
R=10;
i=1;
ct=1000/5;
ip=i*ct;
per=R*ip*100/v;
p=10;
res=p/100*v/ip;
mprintf("the percentage of unprotected winding=%fpercent\nResistance for 90percent winding protection=%fohms",100-(per),res);
