d=50
sigmau=630
Tmax=2000
Tmin=-800
Tm=(Tmax+Tmin)/2
taum=(16*Tm)/(%pi*d^3)
disp(taum,"Mean shear stress=")
Tv=(Tmax-Tmin)/2
tauv=(16*Tv)/(%pi*d^3)
taue=0.55*0.5*sigmau
disp(taue,"Endurance limit=")
sigmay=510
Ksur=0.87
Ksz=0.85
Kf=1
tauy=0.5*sigmay//yield stress in shear loading is taken as one half of yield stress in reverse bending
FS=1/0.541
0==(taum/tauy)-((tauv*Kf)/(taue*Ksur*Ksz)-(1/FS))//according to Soderberg's relation

disp(FS,"Factor of safety=")