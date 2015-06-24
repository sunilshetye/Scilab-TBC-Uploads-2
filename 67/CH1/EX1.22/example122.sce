//Example 1.22
clc;
x1=[1,1,1,1]
x2=[2,2,2,2]
a1=1
b1=1
Wc=%pi
for t=1:length(x1)
    x3(t)=a1*x1(t)+b1*x2(t)
end
for t=1:length(x1)
    y1(t)=x1(t)*cos(Wc*t)
    y2(t)=x2(t)*cos(Wc*t)
    y3(t)=x3(t)*cos(Wc*t)
end
for t=1:length(y1)
    z(t)=a1*y1(t)+b1*y2(t)
end
count=0
for n=1:length(y1)
    if(y3(t)==z(t))
        count=count+1;
     end   
end
if(count==length(y3))
disp('It satisfy the superposition principle');
disp('THE GIVEN SYSTEM IS LINEAR ');
else
    disp('It does not satisfy superposition principle ');
    disp('THE GIVEN SYSTEM IS NON LINEAR');
end