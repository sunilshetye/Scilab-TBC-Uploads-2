clear;
clc;
per=.2;
r=10e6;
R=7;
v=11e3;
i=r/(sqrt(3)*v);
i=round(i);
i0=per*i;
v=v/sqrt(3);
p=R*i0/v*100;
p=round(p*10)/10;
printf("percentage of unprotected winding for earth fault=%fpercent",p);
