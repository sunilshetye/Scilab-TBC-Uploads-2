//lubricants//
//example 3.7.7//
clc
wt_oil=1.55//weight f oil saponified(gms)//
blank=26//volume blank titration reading(ml)//
back=15//volume back titration reading(ml)//
volume=blank-back//volume of alcoholic KOH consumed(ml)//
normality_KOH=1/2//normality of KOH //
S=volume*normality_KOH*56/wt_oil//formula for saponification value//
printf("\nSaponification value of oil is %.1f mgs KOH",S);