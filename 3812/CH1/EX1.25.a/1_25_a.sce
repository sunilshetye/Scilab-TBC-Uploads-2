//Example 1.25<a>
//To check whether the given discrete system is a Linear System (or) Non-Linear System y(t)= t*x(t)
clear;
clc;
x1=[1,1,1,1];
x2=[2,2,2,2];
a=1;
b=1;
for t=1:length(x1)
x3(t)=a*x1(t)+b*x2(t);
end
for t=1:length(x1)
y1(t)=t*x1(t);
y2(t)=t*x2(t);
y3(t)=t*x3(t);
end
for t=1:length(y1)
z(t)=a*y1(t)+b*y2(t);
end
count=0;
for n=1:length(y1)
if(y3(t)==z(t))
count=count+1;
end
end
if(count==length(y3))
disp('Since It satisifies the superposition principle')
disp('The given system is a Linear system')
else
disp('Since It does not satisify the superposition principle')
disp('The given system is a Non-Linear system')
end
