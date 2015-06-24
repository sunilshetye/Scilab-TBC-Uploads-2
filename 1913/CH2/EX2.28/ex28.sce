clc
clear
//Input data
m1=100;//Air flow rate in kg/hr
q1=600;//The heat generated by each person in kJ/hr
h1=85;//The enthalpy of air entering the room in kJ/kg
h2=60;//The enthalpy of air leaving the room in kJ/kg
Q1=0.2;//The heat added by each lamp in the room in kW
P1=0.2;//The power consumed by each fan in kW

//Calculations
q=(5*q1)/3600;//The heat generated by 5 persons in the room in kW
Q=3*Q1;//The heat added by three lamps in the room in kW
P=2*P1;//The power consumed by two fans in the room in kW
m=m1/3600;//Mass flow rate of air in kg/s
H=[q+Q+P]+[m*(h1-h2)];//Heat to be removed by the cooler in kW

//Output
printf('The rate at which the heat is to be removed by cooler X = %3.3f kJ/sec ',H)
