clc
OCR=2
a=30
Ko=(1-sind(a))*(OCR)^sind(a)
//at z=0
To1=0
Th1=0
u1=0
//at z=10
To2=10*100
Th2=Ko*To2
u2=0
//at z=15
To3= 10*100+5*(122.4-62.4)
Th3=Ko*To3
u3=5*62.4
//Lateral force Po =Area 1 + Area 2+ Area3+ Area 4
Po =(1/2)*10*707+5*707+(1/2)*5*212.1+(1/2)*5*312
z=((3535)*(5+10/3)+3535*(5/2)+530.3*(5/3)+780*(5/3))/Po
printf('z = %f ft',z)
