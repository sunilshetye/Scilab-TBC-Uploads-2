// Scilab Code Ex2.64:: Page-2.49(2009)
clc; clear;
lambda1 = 6000e-008;    // First visible wavelength, cm
lambda2 = 4500e-008;    // Second visible wavelength, cm
R = 120;        // Radius of curvature of the lens, cm
// As diameter of nth dark ring due to lambda1 is
// D_n^2 = 4*n*R*lambda1 and D_nplus1^ = 4*(n+1)*R*lambda2, so that D_n^2 = D_nplus1^2 gives
n = lambda2/(lambda1-lambda2);      // Order of interference for dark fringes
printf("\nThe value of n = %d", n);
n = 15;     // Order of interference fringe
D_n = sqrt(4*n*R*lambda1);      // Diameter of nth dark ring due to lambda1 
printf("\nThe diameter of 15th dark ring due to wavelength of %4d angstrom = %4.2f cm", lambda1/1e-008, D_n);

// Result
// The value of n = 3
// The diameter of 15th dark ring due to wavelength of 6000 angstrom = 0.66 cm 
