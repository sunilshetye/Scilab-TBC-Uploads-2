                     //EXAMPLE 3-45   PG NO-201-202
Vab=0+%i*212;
Vbc=-183.6-%i*106;
Vca=183.6-%i*106;
Za=10+%i*0;
Zb=10+%i*10;
Zc=0-%i*20;
Zab=[(Za*Zb)+(Zb*Zc)+(Za*Zc)]/Zc;
disp('i) IMPEDANCE  (Zab) is  in rectangular form  =  '+string (Zab) +' ohm ');
Zbc=[(Za*Zb)+(Zb*Zc)+(Za*Zc)]/Za;
disp('i) IMPEDANCE  (Zbc) is  in rectangular form  =  '+string (Zbc) +' ohm ');
Zca=[(Za*Zb)+(Zb*Zc)+(Za*Zc)]/Zb;
disp('i) IMPEDANCE  (Zca) is  in rectangular form  =  '+string (Zca) +' ohm ');
Iab=Vab/Zab;
disp('i) CURRENT  (Iab) is  in rectangular form  =  '+string (Iab) +' A ');
Ibc=Vbc/Zbc;
disp('i) CURRENT  (Ibc) is  in rectangular form  =  '+string (Ibc) +' A ');
Ica=Vca/Zca;
disp('i) CURRENT  (Ica) is  in rectangular form  =  '+string (Ica) +' A ');
Ia=Iab-Ica;
disp('i) CURRENT  (Ia) is  in rectangular form  =  '+string (Ia) +' A ');
Ib=Ibc-Iab;
disp('i) CURRENT  (Ib) is  in rectangular form  =  '+string (Ib) +' A ');
Ic=Ica-Ibc;
disp('i) CURRENT  (Ic) is  in rectangular form  =  '+string (Ic) +' A ');
