s=%s;
m=s^4+2*s^3+6*s^2+4*s +1;
disp (m)
r= coeff (m)
n= length (r)
routh = routh_t (m) // Thi s Func t ion g e n e r a t e s the Routht a b l e
disp (routh ," r o u t h s t a b u l a t i o n=")
c =0;
for i =1: n
if ( routh (i ,1) <0)
c=c+1;
end
end
if(c >=1)
printf (" sys t em i s u n s t a b l e ")
else printf (" sys t em i s s t a b l e ")
end
