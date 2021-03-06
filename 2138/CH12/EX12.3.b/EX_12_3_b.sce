
//Example 12.3.b // motor generator in each phase
clc;
clear;
close;
Vl=1100;//line voltage in volts
n=99;//motor efficiency in percentage
Mo=n*735.5;//output of the motor
Mi=(Mo*100)/75;// INPUT OF THE MOTOR IN WATTS
pf= 0.8;//power factor
Il=(Mi)/(sqrt(3)*Vl*pf);//line current in amperes
Ip=Il/(sqrt(3));//phase current in amperes
Ipm=Il;//phase curent of the motor
Ac=Ipm*pf;//active component of phase current in the generator
Rc=Ipm*(sqrt(1-pf^2));//reactive component of phase current of generator
disp(Ipm,"phase current of the genertor in ampere is")
disp(Ac,"active component of phase current in the generator in amperes")
disp(Rc,"reactive component of phase current in the generator in amperes")
