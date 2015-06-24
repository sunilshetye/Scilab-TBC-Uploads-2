clc;
clear;
a=[3.556 -1.668 0;-1.778 3.556 -1.778;0 -1.778 3.556];
b=[1.778;0;1.778];
ea=100;
count=1;
ai=inv(a);
while ea>4
    maxim=b(1);
    for i=2:3
        if abs(b(i))>abs(maxim) then
            maxim=b(i);
        end
    end
    eigen(count)=maxim;
    b=ai*(b./maxim);
    if count==1 then
        ea=20;
        count=count+1;
        
    else 
        ea=abs(eigen(count)-eigen(count-1))*100/abs(eigen(count));
        count=count+1;
    end
end
disp((1/eigen(count-1))^0.5,"The smallest eigen value")
