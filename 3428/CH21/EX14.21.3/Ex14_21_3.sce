//Section-14,Example-3,Page no.-PC.8
//To find whether the tank will blow up before it melts.
clc;
P_1=200                    //atm
T_1=298                   //K
T_2=1808                           //K
//(P_1/T_1)=(P_2/T_2)
P_2=(P_1/T_1)*T_2                       //atm
disp(P_2,'Final pressure in the tank(atm)') 
//since P_2>700 atm,tank will blow up.
