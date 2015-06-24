clear;
clc;
Rg=100;Rl=50;f=5*(10^6);
w=2*%pi*f;
X21=sqrt(Rl*(Rg-Rl));
X22=-X21;
X31=-Rg*sqrt(Rl/(Rg-Rl));
X32=-X31;
L2=X21/w;
printf("(i)X2 is inductive and X3 is capacitive where\n  X2=L2 = %f microhenry\n",round(L2*(10^6)*1000)/1000);
C2=-1/(w*X31);
printf("  X3=C3 = %f pf\n",round(C2*(10^12)*10)/10);
L31=X32/w;
printf("(ii)X3 is inductive and X2 is capacitive where\n  X3=L3 = %f microhenry\n",round(L31*(10^6)*1000)/1000);
C21=-1/(w*X22);
printf("  X2=C2 = %f pf",round(C21*(10^12)));
