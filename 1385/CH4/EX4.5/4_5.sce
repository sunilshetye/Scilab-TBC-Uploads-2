clc
//initialisation of variables
p = 17.4 //mm
m= 1000 //gms
M= 18 //gms
n= 2 //moles
//CALCULATIONS
P= p*((m/M)/((m/M)+n))
P1= p*(n/((m/M)+n))
dp= p-P1
//RESULTS
printf (' vapour pressure of solution= %.2f mm',P1)
