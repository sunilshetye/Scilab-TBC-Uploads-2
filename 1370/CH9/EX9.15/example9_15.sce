//example9.15
clc
disp("The arrangement is shown in the fig. 9.19")
disp("Negative plate is at x=0")
disp("Therefore, Positive plate is at x=1*10^-2 m")
disp("E=V/d=1000/(1*10^-2)      ...d= 1*10^-2 m")
e=1000/(10^-2)
disp(e,"Therefore, E(in V/m)=")
disp("As field is uniform, the electron will move with constant acceleration.")
disp("Therefore, x = (1/2)*(a_x)*(t^2)")
a=((1.6*10^-19)*(1*10^5))/(9.107*10^-31)
disp(a,"where, a_x(in m/s^2)=(q*E)/m=")
disp("So time for electron to reach positve plate is,")
disp("(t^2)=(2*x)/(a_x)=(2*1*10^-2)/(1.7568*10^16)")
t=sqrt((2*1*10^-2)/(1.7568*10^16))
disp(t,"Therefore, t(in s)=")
