//Example 7.26;acceleration
clc;
clear;
close;
//given data :
w1=100;//tonnes
w=w1+500;//tonnes
we=1.1*w;//effective weight
alpha=1;//
G=1;//
r=45;//
ft=((277.8*we*alpha)+(98.1*w*G)+(w*r));//in newtons
ad=0.7;//adehsive percent
mu=(ft)/(100*10^3*9.81*ad);//
w2=130;//tonnes
ad2=w2*G;//
tadw=w1*ad+ad2;//tonnes
tted=mu*tadw*9.81*1000;//newtones
W=tted/(277.8*1.1*alpha+98.1*alpha+r);//in tonnes
trlw=W-(ad2+w1);//
w2=w1+500+ad2;//
acc=((tted/w2)-(98.1+r))*(1/(277.8*1.1));//in kmphps
disp(acc,"acceleration in kmphps is")

