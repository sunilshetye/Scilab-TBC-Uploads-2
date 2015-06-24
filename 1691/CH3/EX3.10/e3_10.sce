//example3.10
clc
disp("The circuit of self biased binary is shown in the fig. 3.80")
disp("Assume Q1 is OFF and Q2 is ON. As Q2 is in saturation,")
disp("V_CE(sat)=V_CE2=0.4V")
disp("V_BE(sat)=V_BE2=0.8V")
disp("a) Calculation for the stable state currents and voltages")
disp("Draw equilvalent circuit from base of Q1 to collector of Q2.")
disp("Another equivalent circuit from collector of Q1 to base of Q2 is shown in the fig.3.81")
disp("To calculate the various voltages, is necessary to calculate the currents I_c2, I_B2 for ON transistor Q2. The currents I_C1=I_B1=0 mA as Q1 is OFF.")
disp("To obtain I_c2, I_B2 let us obtain. Thevenins equivalent once across collector and ground and other across base and ground, for ON transistor Q2.")
disp("Consider Thevenins equivalent across collector of Q2 and ground as shown in the fig. 3.83(a) while Thevenins equivalent across base of Q2 and ground as shown in the fig. 3.83(b).")
disp("Referring fig 3.83(a) we can write,")
i=(20*45)/49.7
format(7)
disp(i,"V_oc(in volts)=I(R1+R2)=(V_cc*(R1+R2))/(R1+R2+R_c)=")
r=(45*4.7)/(45+4.7)
format(6)
disp(r,"R_th(in k ohms) = (R1+R2)parallel to R_c with V_cc -N short  =")
disp("Referring fig 3.83(b),")
v=(20*15)/(30+15+4.7)
format(6)
disp(v,"V_OC(in V)=I*R2=(V_CC * R2)/(R1+R2+R_c)=")
t=(15*34.7)/(15+34.7)
format(7)
disp(t,"And,  R_th(in k ohm)=R2 parallel to(R1+R2)=")
disp("Applying KVL to base-emitter loop,")
disp("-I_B2(10.473)-0.8-0.39(I_B2+I_C2)+6.036=0")
disp("0.863(I_B2)+0.39(I_C2)=5.236")
disp("I_B2+0.0359(I_C2)=0.482   Now multiply by 0.39,")
disp("0.39(I_b2)+0.014(I_C2)=0.1879     ..(1)")
disp("Applying KVL to collector emitter loop,")
disp("(-I_C2)(4.255)-0.4-0.39(I_B2+I_C2)+18.108=0")
disp("-0.39(I_B2)-4.645(I_c2)=-17.708    ..(2)")
disp("Adding equations (1) and (2) we get,")
disp("-4.631(I_C2)=-17.5201")
c=(-17.5201)/(-4.631)
format(6)
disp(c,"I_C2(in mA)=")
b=(-17.708+((4.645)*(3.783)))/(-0.39)
disp(b,"and,      I_B2(in mA)=")
disp("From this, the various voltages can be obtained as,")
v=((0.346+3.783))*(0.390)
format(5)
disp(v,"V_EN(in V)=(I_B2+I_C2)*R_E =")
n=0.4+1.61
disp(n,"V_CN2(in V)=(V_CE2+V_EN)=")
b=0.8+1.61
disp(b,"V_BN2(in V)=(V_BE2+V_EN)=")
w=(2.01*15)/45
disp(w,"V_BN1(in V)=(V_CN2*R2)/(R1+R2)=")
v=0.67-1.61
format(5)
disp(v,"V_BE1(in V)=(V_BN1-V_EN)=0.61-1.61=")
disp("For cut-off, V_BE1 is 0V given, but actually it is still less i.e. -0.94 V. This ensures that Q1 is still OFF.")
a=(((20*30)/(4.7+30))+((2.41*4.7)/(4.7+30)))
format(7)
disp(a,"V_CN1(in V)=")
disp("b) To find (h_fe)_min")
disp("For the ON transistor Q2")
disp("I_C2=3.783mA,   I_B2=0.346mA")
h=3.783/0.346
format(3)
disp(h,"Therefore, (h_fe)_min = (I_C2)/(I_B2)=")
disp("Calculation of (I_CBO)_max")
disp("To calculate (I_CBO)_max consider the circuit shown in the fig 3.85")
disp("Obtain the Thevenins equivalent across terminal A and ground.The Thevenin voltage is V_A=V_B1=0.67 V")
disp("Looking into terminals A and ground,")
r=(34.7*15)/(34.7+15)
format(7)
disp(r,"R_th(in kohms)=(R_1+R_c)parallel to R2 =")
disp("Hence Thevenin equivalent is: To find I_CBO_max, ")
disp("V_BE(cut-off)=0V and V_EN =1.61 V ...Calculated earlier")
disp("As V_BE= 0, base must be also at same potential as emitter with respect to ground.")
disp("V_B1=V_EN=1.61 V   for(I_CBO)_max,")
o=(1.61-0.67)/(10.472*10^3)
format(11)
disp(o,"I_CBO_max(in A)=(V_B1-V_TH)/(R_TH)=")
disp("This is the maximum I_CBO")
