clc
exec('1112.sci')
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
function [dv]=fun(t)
    dv=(10^6)*exp(-t/100) -10^7
endfunction
[vol,err]=intg(0,60,fun) //intg is an inbuilt function which can calculate definite integrals
printf(" \n Volume at the end of 60 days=%E",vol+v0)