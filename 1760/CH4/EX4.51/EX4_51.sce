                     //EXAMPLE 4-51              PG NO-262
X1=[14+%i*6 -%i*10  20+%i*0;-%i*10 24+%i*6 -8.66+%i*5;-%i*10 -(4-%i*4) 0];
X2=[14+%i*6 -%i*10  -%i*10;-%i*10 24+%i*6 -(4-%i*4);-%i*10 -(4-%i*4) (34-%i*4)]
I3=det(X1/X2);
disp('i) Current (I3)   is     =  '+string (I3) +' A   ');
