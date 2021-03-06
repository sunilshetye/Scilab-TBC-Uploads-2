//example3.14
clc
disp("The duty cycle is given as 60% i.e. 0.6")
disp("Therefore  duty cylcle = T2/(T1+T2)")
disp("Therefore  0.6=T2/(T1+T2)")
disp("Therefore  0.6(T1+T2)=T2")
disp("Therefore  T1=0.66*T2")
disp("f=1 kHz")
t=1/(10^3)
format(6)
disp(t,"T(in sec)=1/(1*10^3)=")
disp("Now, T=T1+T2")
disp("Therefore  T1+T2=1 msec")
disp("Therefore  0.66T2+T2=1 msec")
o=(10^-3)/1.66
format(7)
disp(o,"Therefore  T2(in sec)=")
t=1-0.6
disp(t,"T1(in msec)=")
disp("Consider the circuit diagram shown in the fig 3.92")
disp("Assume Q2 ON and Q1 OFF")
disp("For ON transistor, assuming npn silicon transistor,")
disp("V_CE(sat)=V_C2=0.3V")
disp("V_BE(sat)=V_B2=0.7V")
disp("I_C(sat)=I_C2=2 mA")
disp("(h_fe)_min=30")
disp("I2=(V_CC-V_C2)/R_c")
disp("Neglecting thriugh C1,")
disp("I2=I_C2=2 mA")
disp("Therefore, (2*10^-3)=(10-0.3)/R_C")
r=9.7/(2*10^-3)
disp(r,"Therefore R_C(in ohms)= ")
h=(1.5*2)/30
disp(h,"Now   I_B2(in mA)=1.5*(I_B2)_min=1.5*(I_C2)/(h_fe)_min= ")
disp("Now, I_B2=(V_cc-V_B2)/R2")
r=9.3/(0.1*10^-3)
disp(r,"Therefore  R2(in ohms)=")
disp("Now assume C1=C2=C")
disp("Therefore T1=0.69(R1*C1) and T2=0.69(R2*C2)")
disp("Therefore T2=0.69(R2*C)")
c=(0.6*10^-3)/(0.69*93*10^3)
disp(c,"Therefore C(in F)= ")
disp("Therefore  T1=0.69*(R1*C)")
disp("Therefore  (0.4*10^-3)=(0.69*R1)*(9.35*10^-9)")
r=(0.4*10^-3)/(0.69*9.35*10^-9)
disp(r,"Therefore  R1(in ohms)=")
