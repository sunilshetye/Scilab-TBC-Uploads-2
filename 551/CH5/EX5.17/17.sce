clc
T3=278; //K
T2=350; //K
T4=T2;
T1=1350; //K

Q1=100/[((T4/T1)*(T1-T2)/(T4-T3))+T2/T1]; //Q4+Q2=100; Q4=Q1*((T4/T1)*(T1-T2)/(T4-T3)); Q2=T2/T1*Q1;

disp("Q1=")
disp(Q1)
disp("kJ")