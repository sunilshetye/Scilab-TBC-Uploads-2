clc;
//k=2;
r=1;
k=0:1:2;
h=0.5^(k);
l1=convol(h,r);
disp(l1);
//k=3;
r=1;
k=0:1:3;
h=0.5^(k);
l2=convol(h,r);
disp(l2);