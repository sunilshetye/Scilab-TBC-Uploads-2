//Scilab Code for Example 4.5 of Signals and systems by
//P.Ramakrishna Rao
//x(t)=cos pi*t, |t|>0.5, zero otherwise
clear;
clc;
//Fourier Transform
for f=-20:1:20;
X(f+21)=integrate('cos(%pi*t)*cos(2*%pi*f*t)','t',-0.5,0.5);
end
disp(X,'X(0)-->X(20)');
t=-0.5:0.01:0.5;
q=cos(%pi*t);
a = gca ();
a.y_location ="origin";
a.x_location ="origin";
plot(t,q);
xlabel ( 'Time in Seconds' );
title ('Signal x(t)');
figure(1);
a = gca ();
a.y_location ="origin";
a.x_location ="origin";
f=-20:1:20;
plot (f, X);
xlabel ( 'Frequency in Hz ' );
title ('Continuous Time Fourier Transform X(jW)');
