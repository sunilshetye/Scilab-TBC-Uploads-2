r1=2;
r2=1;
r3=5;
i1=3;
i2=2;
v2=(0.2*i1+0.7*i2)/(1.2*0.7+0.2*0.2);
v1=(i1+0.2*v2)/0.7;
ir1=0.5*v1;
ir2=v2;
ir3=0.2*(v1-v2);
disp("current (in A) through R1 is"); disp(ir1);
disp("current (in A) through R2 is"); disp(ir2);
disp("current (in A) through R3 is"); disp(ir3);