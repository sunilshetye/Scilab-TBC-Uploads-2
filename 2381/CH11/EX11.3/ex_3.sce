//Example 3// Frequencies
clc;
clear;
close;
//given data :
t1=15;// in sec
t2=10;// in sec
n2=256;// in vibrations/sec
n1a=(2*n2)+(1/t1);
n1b=(2*n2)-(1/t1);
disp(n1a,"frequency,n1a(Hz) = ")
disp(n1b,"frequency,n1b(Hz) = ")
n_1a=(2*n2)+(1/t2);
n_1b=(2*n2)-(1/t2);
disp(n_1a,"frequency,n_1a(Hz) = ")
disp(n_1b,"frequency,n_1b(Hz) = ")
