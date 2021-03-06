//Example 4.9
clc;

Ifsd=50*10^-6;     //Full Scale Current
S=1/Ifsd;          //Sensitivity
Rm=1000;           //Internal resistance of movement
disp(S,'Sensitivity of 50 uA meter')

//Case I: For Range 0-3 V
V=3;         //Full range voltage of the instrument
Rs=S*V-Rm;   //Multiplier resistence
disp(Rs,'Value of Multipliier Resistence for 5 V range')

//Case II: For Range 0-10 V
V=10;        //Full range voltage of the instrument
Rs=S*V-Rm;   //Multiplier resistence
disp(Rs,'Value of Multipliier Resistence for 10 V range')


//Case III: For Range 0-30 V
V=30;        //Full range voltage of the instrument
Rs=S*V-Rm;   //Multiplier resistence
disp(Rs,'Value of Multipliier Resistence for 50 V range')
