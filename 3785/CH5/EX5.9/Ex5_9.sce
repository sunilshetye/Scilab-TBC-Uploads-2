// Example 5_9
clc;funcprot(0);
// Given data
D=6;// The diameter of wind turbine in m
V_w=20;// The wind speed in m/s
rho=1.2;// The density of air in kg/m^3

// Calculation
A_p=((%pi/4)*(6)^2);// m^2
maxP_wt=((8/27)*(rho)*A_p*(V_w*0.447)^3)/1000;// The maximum power that can be generated by a wind turbine in kW
printf("\nThe maximum power that can be generated by a wind turbine is %1.3f kW",maxP_wt);
