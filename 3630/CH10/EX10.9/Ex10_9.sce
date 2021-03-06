clc;
Re=3300; //Ohm
RL=1000; //Ohm
rE=(Re*RL)/(Re+RL); //Ohm
hic1=40000; //Ohm
hfc1=120;
hic2=3000; //Ohm
hfc2=150;
Zbase=hic1+hfc1*(hic2+(hfc2*rE));//Ohm
R1=120000;//Ohm
R2=120000; //Ohm
Req=(R1*R2)/(R1+R2);//Ohm
Zin=(Zbase*Req)/(Zbase+Req);//Ohm//input impedance
re1=hic1/hfc1;//Ohm
re2=hic2/hfc2;//Ohm
R1=120000;//Ohm
R2=120000;//Ohm
Req=(R1*R2)/(R1+R2);//Ohm
Rs=3300;//Ohm
Rth=(Req*Rs)/(Req+Rs);//Ohm
Zout=re2+(re1+(Rth/hfc1))/hfc2;//Ohm//output impedance
Ai=(hfc1*hfc2)*((Zin*rE)/(Zbase*RL));//current gain
disp('',Ai,"Ai=");Answer variation due to round of error
