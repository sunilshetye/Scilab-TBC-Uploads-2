clear;
clc;
V_s=230;
R=10;
V_ml=sqrt(2)*V_s;
V_om=3*V_ml/(2*%pi);
V_o=V_om/2;
th=30;
a=acosd((2*%pi*sqrt(3)*V_o/(3*V_ml)-1))-th;    printf("delay angle=%.1f deg",a);
I_o=V_o/R;    printf("\navg load current=%.3f A",I_o);
V_or=V_ml/(2*sqrt(%pi))*sqrt((5*%pi/6-a*%pi/180)+.5*sind(2*a+2*th));
I_or=V_or/R;    printf("\nrms load current=%.3f A",I_or);
RE=V_o*I_o/(V_or*I_or);    printf("\nrectification efficiency=%.4f",RE);
