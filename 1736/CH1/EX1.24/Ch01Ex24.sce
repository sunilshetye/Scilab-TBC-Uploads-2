// Scilab Code Ex 1.24 Page-35 (2006)
clc; clear;
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
h = 6.626e-034;     // Planck's constant, Js
c = 3.0e+08;    // Speed of light, m/s
E_K = 13.6*74^2;    // Energy of electron in the K-shell
E_L = 13.6*74^2/4;  // Energy of electron in the L-shell
// As E_K - E_L = h*c/lambda, solving for lambda
lambda = h*c/((E_K - E_L)*e);       // Wavelength of K_alpha radiation of tungsten, m
printf("\nThe wavelength of K_alpha radiation of tungsten = %4.2e angstrom", lambda/1e-010);

// Result
// The wavelength of K_alpha radiation of tungsten = 2.22e-01 angstrom 
