//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex3_12.sce

clc;
clear;
R=10e3;   //Resistance in ohm
L=50.7e-6;   //Inductor value  in henry
C=500e-12;   //capacitor value in farad

fr=1/(2*%pi*sqrt(L*C));
printf("\n Resonance frequency=%1.0f MHz \n",fr*1e-6)

Q=(R)*sqrt(C/L);
printf("\n Quality factor=%2.1f \n",Q)

f1=(-fr/(2*Q))+(fr*sqrt((1/(2*Q))^2+1));
printf("\n Lower half power frequency=%3.0f kHz \n",f1*1e-3) 

f2=(fr/(2*Q))+(fr*sqrt((1/(2*Q))^2+1));
printf("\n Upper half power frequency=%4.0f kHz \n",f2*1e-3)

BW=f2-f1;
printf("\n Bandwidth=%2.0f kHz \n",BW*1e-3)



