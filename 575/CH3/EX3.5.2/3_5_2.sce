clc
exec('352.sci')
//In this code I used a function to achieve the conversion
function[centigrade]=conversion(fahrenheit)
    centigrade=(fahrenheit-32)/1.8
endfunction
difference=conversion(80)-conversion(20)
printf("Equivalent temperature of %d-%d temperature in C =%f",T2,T1,difference)
deltaTF=T2-T1
deltaTC=deltaTF/1.8
printf(" \n By second method, result=%f",deltaTC)