c1=8*10^(-6);
c2=4*10^(-6);
v=120;
f=60;
disp("Part a");
x_c1=1/(2*%pi*f*c1);
x_c2=1/(2*%pi*f*c2);
x_c=x_c1+x_c2;
disp("the total capacitive reactance (in Ω) is"); disp(x_c);
disp("Part b");
i=v/x_c;
disp("the current drawn (in A) by the capacitors is"); disp(i);
disp("Part c");
v1=i*x_c1;
v2=i*x_c2;
disp("voltage (in V) across 4 μF capacitor is"); disp(v2);
disp("voltage (in V) across 8 μF capacitor is"); disp(v1);
