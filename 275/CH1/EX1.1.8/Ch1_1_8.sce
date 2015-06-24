clc
disp("Example 1.8")
printf("\n")
disp("find out resistance")
printf("Given\n")
disp("forward current=100mA,Vr=25V,cut in voltage=0.7v,reverse current=100nA")
//all the values are from fig 1.8
Vf=0.7
If=100*10^-3 //forward current
Vr=25        
Ir=100*10^-9  //reverse current
Rf=Vf/If      
Rr=Vr/Ir
printf("static forward resistance=\n%f ohm\n",Rf)
printf("static reverse resistance=\n%f ohm\n",Rr)
