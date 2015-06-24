//Example 1.22
clc
disp("Step 1: Identify topology")
disp("Vo = 0, does not make feedback zero, but Io = 0 makes feedback to become zero and hence it is current sampling. The feedback is fed in shunt with the input signal, hence topology is current shunt feedback")
disp("")
disp("Step 2 and Step 3: Find input and output circuit")
disp("To find input circuit, set Vo = 0. This gives series combination of R_e2 and 10K across the input. To find output circuit, set V1= 0. This gives parallel combination of R_e2 and 10K at E2.The resultant circuit is shown in fig 1.63")
disp("")
disp("Step 4: Replace transistor with its h-parameter equivalent as shown in fig 1.64")
disp("")
disp("Step 5 : Find open loop current gain")
disp("A_I = Io/I_s = -I_c/I_s = -I_o/I_b2 * I_b2/I_c1 * I_c1/I_b1 * I_b1/I_s")
disp("Io/I_b2 = -h_fe = -100")
disp("I_c2/I_b2 * I_b1/I_e1 = -h_ie*R_c1 / R_i2+R_c2         because I_b2/I_c1 = R_c1/R_c1+R_i2")
ri2=1+(101*(10/11))
format(7)
disp(ri2,"where  R_i2(in k-ohm) = h_ie + (1+h_fe)(1K||10K) =")
ibb=(-100*2.2)/(92.818+2.2)
format(6)
disp(ibb,"Therefore,  I_b1/I_s =")
ibs=(11/12)/(1+(11/12))
disp(ibs,"I_b1/I_s =")
ai=100*2.315*0.478
disp(ai,"A_I =")
disp("Step 6: Calculate beta")
b=1/(11)
format(5)
disp(b,"beta = R_e2/R_e2+R'' =")
disp("")
disp("Step 6: Calculate D,A_If, A_vf, R_if, R_of")
d=1+(0.09*110.7)
format(7)
disp(d,"D = 1 + beta*A_I =")  //answer in textbook is wrong
aif=110.7/11.063
format(3)
disp(aif,"A_if = A_I/D =")
ri=((1*11*1)/((11*1)+(1*1)+(11*1)))*10^3
format(4)
disp(ri,"R_i(in ohm) =")
rif=478/11.063
format(6)
disp(rif,"R_if(in ohm) = R_i/D =")
disp("Ro = infinity")
disp("Therefore,  R_of = Ro*D = infinity    because h_oe = 0")
disp("R''_o = 2.2 k-ohm")
disp("R''_of = R''_o = 2.2 k-ohm")
