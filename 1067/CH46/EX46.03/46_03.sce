clear;
clc;
p11=80;
p12=90;
p21=100;
p22=90;
x=integrate('.1*x+20','x',p11,p12);
y=integrate('.2*x+6','x',p21,p22);
p=x+y;
as=p*8760;
mprintf("economic loading for unit 1=%dRs/hr\neconomic loading for unit 2=%dRs/hr\nannual savings=%dRs",x,y,as);
