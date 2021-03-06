//Example 4.14
clc
disp("V_ph = 200 V, 60 kVA,  R_a = 0.016 ohm,  X_s = 0.07 ohm")
disp("VA = V_ph*I_ph    i.e. 60*10^3 = 200*I_ph        ...Single phase")
disp("Therefore,  I_ph = 300 A = I_a              ...Full load current")
disp("(a) cos(phi) = 1,  sin(phi) = 0")
eph=sqrt((((200+((300*0.016)))^2)+((300*0.07)^2)))
disp("Therefore,  E_ph^2 = (V_ph*cos(phi)+I_a*R_a)^2 + (I_a*X_a)^2")
format(9)
disp(eph,"E_ph(in V) =")
disp("(b) cos(phi) = 0.7 lagging,  sin(phi) = 0.714")
ephi=sqrt(((((200*0.7)+(300*0.016))^2)+(((200*0.7141)+(300*0.07))^2)))
disp("Therefore,  E_ph^2 = (V_ph*cos(phi)+I_a*R_a)^2 + (V_ph*sin(phi)+I_a*R_a)^2")
format(9)
disp(ephi,"E_ph(in V) =")
