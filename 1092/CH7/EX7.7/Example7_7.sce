// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 7: PARALLEL OPERATION
// Example 7-7

clear; clc; close; // Clear the work space and console.

// Given data as per Ex.(7-5)
E1 = 220 ; // Terminal voltage of alternator 1 in volt 
E2 = 222 ; // Terminal voltage of alternator 2 in volt 
f1 = 60 ; // Frequency of alternator 1 in Hz
f2 = 59.5 ; // Frequency of alternator 2 in Hz
// Switch is open

// Given data as per Ex.(7-6)
E = 220 ; // Voltage generated in volt
E_1 = E ; // Voltage generated by alternator 1 in volt
E_2 = E ; // Voltage generated by alternator 2 in volt
f_1 = 60 ; // Frequency in Hz of alternator 1
f_2 = 58 ; // Frequency in Hz of alternator 2
// Switch is open

// Given data as per Ex.(7-7)
R_a1 = 0.1 ; // armature resistance of alternator 1 in ohm
R_a2 = 0.1 ; // armature resistance of alternator 2 in ohm
X_a1 = 0.9 ; // armature reactance of alternator 1 in ohm
X_a2 = 0.9 ; // armature reactance of alternator 2 in ohm

Z_1  = R_a1 + %i*X_a1 ; // Effective impedance of alternator 1 in ohm
Z_2  = R_a1 + %i*X_a2 ; // Effective impedance of alternator 2 in ohm
// Switches are closed at the proper instant for paralleling.

// Calculations
// In Ex.7-5,
E_r = E2 - E1 ; // Effective voltage generated in volt 
I_s = E_r / (Z_1 + Z_2); // Synchronizing current in the armature in A
I_s_m = abs(I_s);//I_s_m=magnitude of I_s in A
I_s_a = atan(imag(I_s) /real(I_s))*180/%pi;//I_s_a=phase angle of I_s in degrees

// In Ex.7-6,
Er = E_2 -E_1 ; // Effective voltage generated in volt 
Is = Er / ( Z_1 + Z_2); // Synchronizing current in the armature in A

// Display the results
disp("Example 7-7 Solution : ");
printf(" \n In Ex.7-5, ");
printf(" \n E_r = %d V ", E_r);
printf(" \n I_s = ");disp(I_s);
printf(" \n I_s = %.3f <%.2f A ",I_s_m, I_s_a);
printf(" \n where %.3f is magnitude in A and %.2f is phase angle in degrees \n",I_s_m,I_s_a);

printf(" \n In Ex.7-6, ");
printf(" \n E_r = %d V ", Er );
printf(" \n I_s = %d A",Is);
