//clc()
x = 2;
x0 = 1;
m = 0;
x1 = 4;
n = 1.386294;
x3 = 5;
p = 1.609438;
x2 = 6;
o = 1.791759;
f01 = (m - n)/(x0 - x1);
f12 = (n - o)/(x1 - x2);
f23 = (p - o)/(x3 - x2);
f210 =  (f12 - f01)/(x2 - x0);
f321 = (f23 - f12)/(x3 - x1);
f0123 = (f321 - f210) / (x3 - x0);
b0 = m;
b1 = f01;
b2 = f210;
b3 = f0123;
R2 = b3 * (x - x0) * (x - x1)*(x-x2);
disp(R2,"error R2 = ")
