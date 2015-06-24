//clear//
clear;
clc;

//Exapmle 15.3
//Given
Tca = 70; //[C]
Tcb = 130; //[C]
Tha = 240; //[C]
Thb = 120; //[C]
//Solution
//Using Eq.(15.7) and (15.8)
neta_h = (Tcb-Tca)/(Tha-Tca);
Z = (Tha-Thb)/(Tcb-Tca);
//Using Fig 15.7b, the correction factor is
Fg = 0.945;
//the temperature drops are
//At shell inlet:
deltaT_i = Tha-Tcb; //[C]
//At shell outlet:
deltaT_o = Thb-Tca; //[C]
Log_T = (deltaT_i-deltaT_o)/log(deltaT_i/deltaT_o);
// the correct value of Log_T is
Log_T = Fg*Log_T; //[C]
disp('C',Log_T,'The correct mean emperature drop is') 
