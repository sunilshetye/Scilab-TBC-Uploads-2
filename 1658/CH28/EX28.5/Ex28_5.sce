clc;
//e.g 28.5
C=1*10**-9;
L1=4.7*10**-3;
L2=47*10**-6;
fo=1/(2*%pi*sqrt((L1+L2)*C));
disp('KHZ',fo*10**-3,"fo=");
