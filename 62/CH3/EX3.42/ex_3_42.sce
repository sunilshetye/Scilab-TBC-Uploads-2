clear;
clc;
s=%s;
I1=(s+1)/(s+1/4);
I1p=pfss(I1)
i1=ilaplace(I1p(1))
disp(i1*'u(t)'+'delta(t)',"i1(t)=")
I2=(s-1/2)/(s+1/4);
I2p=pfss(I2)
i2=ilaplace(I2p(1))
disp(i2*'u(t)'+'delta(t)',"i2(t)=")