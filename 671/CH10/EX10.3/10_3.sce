P=5000
Vt=215
n=1000
Ra=0.4
Ia=P/Vt
Eag=Vt+Ra*Ia
Eam=Vt-Ra*Ia
newn=Eam/Eag*n/1.1
disp(newn)
