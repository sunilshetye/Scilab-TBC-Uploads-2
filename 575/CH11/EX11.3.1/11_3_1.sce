clc
exec('1131.sci')
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
MCv=(m1*Cv1 + m2*Cv2)*1000*4.184
disp(MCv)
tf=(T1-T2)*MCv/Qdot
printf(" \n Time required = %d in sec and %f in min",tf+1,tf/60)