//Discrete Time Fourier Transform of
//x[n]= 1 , abs(n)<=M1
clear;
clc;
close;
// DTS Signal
M1 = 2;
n = -M1:M1;
x = ones(1,length(n));
Wmax = 2*%pi;       
K = 4;
k = 0:(K/1000):K;
W = k*Wmax/K;
XW = x* exp(-sqrt(-1)*n'*W);
XW_Mag = real(XW);
W = [-mtlb_fliplr(W), W(2:1001)]; // Omega from -Wmax to Wmax
XW_Mag = [mtlb_fliplr(XW_Mag), XW_Mag(2:1001)];
//plot for abs(a)<1
figure
subplot(2,1,1);
plot2d3('gnn',n,x,2);
xtitle('Discrete Time Sequence x[n]','n','x[n]')
subplot(2,1,2);
plot2d(W,XW_Mag);
xtitle('Discrete Time Fourier Transform X(exp(jW))','w','|X(exp(jW))|)
