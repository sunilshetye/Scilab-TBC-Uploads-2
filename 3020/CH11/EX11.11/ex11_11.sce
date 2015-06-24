clc;
clear all;
c = 3e8; // Velocity of light in air
h = 6.626e-34 ; // Planck's constant
e = 1.609e-19; // Charge of an electron
Eg = 0.8*e ; // Band gap of given semiconductor in joule
lambda = (h*c)/Eg; // Wavelength of emitted radiation 
disp('m',lambda,'Wavelength of emitted radiation is')
// Slight variation in the answer as compared to book... Checked in calculator... Book's mistake
