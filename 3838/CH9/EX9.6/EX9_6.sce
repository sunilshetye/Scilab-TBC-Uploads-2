//Example 9.6
clc;
x0=[1,1,1,0]
x1=fft(x0);
disp('X1(K)=')
disp(x1);
h=[-1,-1,0,0]
x2=fft(h)
disp('H(K)=')
disp(x2);
x3=x1.*x2
disp('X1(K)*H(K)=')
disp(x3)
x4=ifft(x3)
disp('x1(n)*x2(n)')
disp(x4)
