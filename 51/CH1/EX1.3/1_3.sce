clc;
clear;
V=0.84;//ft^3
p=50;//psi
T=70;//degree farenheit
atmp=14.7;//psi
//the air density d=P/(RT)
//1ft^2=144 inches^2
d=((p+atmp)*144)/((1716)*(T+460));
disp(d)
//slugs/ft^3
//weight of air
W=d*32.2*V;
//1lb=1 slug.ft/sq sec
disp("lb",W,"W=")
//taking various values of p a graph is plotted between W and p
x= -20:60;
for p= -20: 60
    i=p+21;
    y(1,i)=((p+atmp)*144/((1716)*(T+460)))*32.2*V;
    
end
plot(x,y)
xtitle('W vs p','p.psi','W,lb')

 

