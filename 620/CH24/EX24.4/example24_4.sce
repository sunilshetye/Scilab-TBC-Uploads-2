r=2200;
f=60;
i=0.015;
vp=60;
disp("Part a");
vr=i*r;
disp("the reading of voltmeter (in V) across the resistor is"); disp(vr);
disp("Part b");
vc=vp/(2*sqrt(2));
disp("the r.m.s. voltage (in V) across the capacitor is"); disp(vc);
disp("Part c");
v=sqrt(vr^2+vc^2);
disp("the applied voltage (in V) is"); disp(v);
disp("Part d");
deg=-atan(vc/vr)*180/%pi;
disp("the phase angle (in deg) between current and applied voltage is"); disp(deg);
disp("Part f");
x_c=vc/i;
c=1/(2*%pi*f*x_c);
disp("the capacitance (in μF) is"); disp(c*10^6);