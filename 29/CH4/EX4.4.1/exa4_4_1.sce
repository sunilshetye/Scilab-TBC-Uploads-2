//Caption:closed_loop_transfer_function
// example 4.4.1
//page 64
syms G1 G2 G3 H1;
// forward path denoted by P1,P2 and so on and loop by L1,L2 and so on 
//path factor by D1,D2 and so on and graph determinant by D
P1=G1*G3;
P2=G2*G3;
L1=-G3*H1;
D1=1;
D2=1;
D=1-(L1);
Y=(P1*D1+P2*D2)/D;
Y=simple(Y)
disp(Y,"C(s)/R(s)=")