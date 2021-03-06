//water and its treatment//
//example 2.18.20.A//
clc
conc_SH=1.29//in terms of g/lit//
strength_SH=conc_SH//in terms of mgs/lit//
volume_SH=50//in terms of ml//
volume_H=100//in terms of ml//
EDTA_SH=32//volume for Std hardwater(ml)//
EDTA_H=14//volume for sample hardwater(ml)//
AB_EDTA=8.5//volume required after boiling(ml)//
CaCO3_equivalent_SH=strength_SH*volume_SH//in terms of CaCO3 equivalent//
one_ml_EDTA=CaCO3_equivalent_SH/EDTA_SH//in terms of CaCO3 equivalent//
To_sample=one_ml_EDTA*EDTA_H/volume_H//total hardness for given volume//
To=To_sample*1000//total hardness per litre(ppm)//
P_sample=AB_EDTA*one_ml_EDTA/volume_H//permanent hardness for given volume//
P=P_sample*1000//permanent hardness per litre(ppm)//
T=To-P
printf("\nTotal Hardness is %.f mg/l or ppm",To);
printf("\nPermanent Hardness is %.1f mg/l or ppm",P);
printf("\nTemporary Hardness is %.1f mg/l or ppm",T);