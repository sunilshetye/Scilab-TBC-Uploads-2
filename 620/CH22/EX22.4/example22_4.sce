c=5*10^(-6);
r=10*10^3;
v=12;
disp("Part a");
t=r*c;
disp("the time constant (in ms) of the circuit is"); disp(t*10^3);
disp("Part b");
rate=v/t;
disp("initial rate of rise of capacitor voltage (in V/s) is"); disp(rate);
disp("Part c");
v1=0.63*v;
disp("the capacitor voltage (in V) after one time constant is"); disp(v1);
disp("Part d");
t1=5*t;
disp("time taken (in ms) to reach 12 V is"); disp(t1*10^3);