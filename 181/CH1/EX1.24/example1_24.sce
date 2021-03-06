// Previous problem calculated for intrinsic silicon
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 1-24 in page 51

clear; clc; close;

// Data given
kT=0.026; // Value at T=300K
T=300; // Room temperature in K
dT=1/300; // Rate of change of temperature
E_g=1.21; // Band gap energy in silicon in eV

// Calculation
dni=((1.5+(E_g/(2*kT)))*dT)*100; 

printf("Rise in intrinsic carrier concentration is %0.1f percent/degree",dni);

// Result
// Percentage rise in intrinsic carrier concentration is 8.3 %/degree