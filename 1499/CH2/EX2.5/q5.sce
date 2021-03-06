

s=%s; // first create a variable
Wn=%Wn;
Wd=%Wd;


num=1;
den=10*s+s^2;
TF=syslin('c',num,den)

[wn,z] = damp(TF)
zeta=z/(2*wn)

ts=4/(zeta*wn)

t=linspace(0,5,500);
step_res=csim('step',t,TF);
plot(t,step_res)
xgrid()
xtitle('Step response','time','response');
