//Graphical//
//Implementation of Equation 2.1.8 in Chapter 2
//Digital Signal Processing by Proakis, Third Edition, PHI
//Page 45

clear; clc; close;
L = 4;  //Upperlimit
n = -L:L;
x = [zeros(1,L),0:L];
a=gca();
a.thickness = 2;
a.y_location = "middle";
plot2d3('gnn',n,x) 
xtitle('Graphical Representation of Unit Ramp Signal','n','x[n]');
