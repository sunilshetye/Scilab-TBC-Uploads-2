clc;
clear;
v=11e3;
r=15000e3;
zp=.15;
vnew=110e3;
rnew=30000e3;
zb=v^2/r;
Z=zp*zb;
zbnew=vnew^2/rnew;
Zp=Z/zbnew;
mprintf("the new per unit reactance=%fp.u",Zp/10);
