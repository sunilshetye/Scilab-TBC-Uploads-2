clear;
clc;
r=10e6;
v=11e3;
e=1;
x1=.26*%i;
x2=.18*%i;
x0=.36*%i;
ia1=e/(x1+(x0*x2/(x0+x2)));
va1=e-(ia1*x1);
va2=va1;
va0=va2;
ia2=-va2/x2;
ia0=-va0/x0;
a=1*%e^(%i*(120*%pi/180));
b=a^2;
ia=(ia0+ia1+ia2);
ib=(ia0+(b*ia1)+(a*ia2));
ic=(ia0+(a*ia1)+(b*ia2));
i=r/(sqrt(3)*v);
ia=ia*i;
ib=ib*i;
ic=ic*i;
ia0r=real(ia);
ia0i=imag(ia);
iam=sqrt((ia0r^2)+(ia0i^2));
ia1r=real(ib);
ia1i=imag(ib);
ibm=sqrt((ia1r^2)+(ia1i^2));
ia2r=real(ic);
ia2i=imag(ic);
icm=sqrt((ia2r^2)+(ia2i^2));
icm=round(icm);
ibm=round(ibm);
iaa=0;
iba=180+atand(ia1i/ia1r);
ica=atand(ia2i/ia2r);
mprintf("the symmetric components  are \n ia0=%f+j%f A \tor\t %f/_%d A",ia0r,ia0i,iam,iaa);
mprintf("\n ib=%f+j%f A \tor\t %f/_%d A",ia1r,ia1i,ibm,iba);
mprintf("\n ic=%f+j(%f) A \tor\t %f/_%d A",ia2r,ia2i,icm,ica);
in=ib+ic;
mprintf("\nneutal current In=%fA",(imag(in)*1310));
//at generator
x1=.16*%i;
x2=.08*%i;
x0=.06*%i;
va1=1-(ia1*x1);
va2=-ia2*x2;
va0=ia0*x0;
va=(va0+va1+va2);
vb=(va0+(b*va1)+(a*va2));//the difference in result is due to erroneous calculation in textbook.

vc=(va0+(a*va1)+(b*va2));
v=v/sqrt(3);
va=v*va/1e3;
vb=v*vb/1e3;
vc=v*vc/1e3;
va0r=real(va);
va0i=imag(va);
va0m=sqrt((va0r^2)+(va0i^2));
va0a=atand(va0i/va0r);
va1r=real(vb);
va1i=imag(vb);
va1m=sqrt((va1r^2)+(va1i^2));
va1a=atand(va1i/va1r);
va2r=real(vc);
va2i=imag(vc);
va2m=sqrt((va2r^2)+(va2i^2));
va2a=atand(va2i/va2r);
mprintf("\nthe voltage levels are \n va=%f+j%f kV \tor\t %f/_%d kV",va0r,va0i,va0m,va0a);
mprintf("\n vb=%f+j(%f) kV \tor\t %f/_%d kV",va1r,va1i,va1m,va1a);//the difference in result is due to erroneous calculation in textbook.
mprintf("\n vc=%f+j(%f) kV \tor\t %f/_%d kV",va2r,va2i,va2m,va2a);
disp("the difference in result is due to erroneous calculation in textbook.");
