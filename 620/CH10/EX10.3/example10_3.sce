v1=15;
v2=20;
v3=10;
r1=10;
r2=15;
r3=8;
r4=12;
r5=5;
i2=(r5*(v1+v2)-(v2+v3)*(r1+r2+r5))/((r3+r4+r5)*(r1+r2+r5)-r5^2);
i1=(v1+v2+i2*r5)/(r1+r2+r5);
i=i1-i2;
disp("current (in A) through V2 is given by"); disp(i);