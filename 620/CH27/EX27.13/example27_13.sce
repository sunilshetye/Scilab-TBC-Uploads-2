rp=100*10^3;
v=10*10^(-6);
r=50*10^3;
disp("Part a");
vout=v*rp/(rp+r);
disp("the output voltage (in μV) across the tank circuit is"); disp(vout*10^6);
disp("Part b");
z=10*10^3;
vout1=v*z/(z+r);
disp("the output voltage (in μV) is"); disp(vout1*10^6);