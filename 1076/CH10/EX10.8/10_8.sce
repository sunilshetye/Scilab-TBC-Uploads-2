clear
clc

G=[50 11 0 .08
30 11 0 .07]
T=[50 11 220 .1
30 220 11 .09]

B=[50 11]

T(1,5)= T(1,3)/T(1,2)
T(2,5)= T(2,3)/T(2,2)
B(3)=B(2)* T(1,5)
B(4)=B(3)* T(2,5)

B(5)= B(3)^2/B(1)

Z=555.6
z=Z/B(5)

zt2=T(2,4) * B(1)/T(2,1)
zg2=G(2,4) * B(1)/G(2,1)

Zn=3
zn=Zn *3 / ( B(4)^2/B(1))

mprintf("zero seq netwk: xt1= %.1f, xt2=%.2f, Xg1=%.2f Xg2=%.3f, xl=%.3f, Zn=%.2fi",T(1,4), zt2, G(1,4), zg2, z,zn)
