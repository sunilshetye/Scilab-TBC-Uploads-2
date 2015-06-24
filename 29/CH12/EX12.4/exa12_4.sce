//Caption:transfer_function
// example 12.4
//page 518
// we are solving this problem from signal flow graph approach
syms G1 G2 
// forward path denoted by P1,P2 and so on and loop by L1,L2 and so on 
//path factor by D1,D2 and so on and graph determinant by D
P1=G1;
P2=G2;
P3=G1*G2;
P4=G1*G2;
L1=-G1;
L2=-G2;
L3=G1*G2;
L4=-G1*G2;
L5=-G1*G2;
D1=1;
D2=1;
D3=1;
D4=1;
D=1-(L1+L2+L3+L4+L5);
Y=(P1*D1+P2*D2+P3*D3+P4*D4)/D;
Y=simple(Y);
disp(Y,"C(s)/R(s)=");