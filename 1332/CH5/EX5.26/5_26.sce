//Example 5.26
//QD Method
//Page no. 194
clc;clear;close;

a=[32,-48,18,-1]
for i=1:5
    e(i,1)=0;
    e(i,4)=0;
end
q(1,1)=-a(2)/a(1);
q(1,2)=0;q(1,3)=0;
e(1,2)=a(3)/a(2);
e(1,3)=a(4)/a(3);
for i=2:16
    for j=1:3
        q(i,j)=e(i-1,j+1)+q(i-1,j)-e(i-1,j)
    end
    for j=1:2
        e(i,j+1)=e(i-1,j+1)*q(i,j+1)/q(i,j)
    end
end
printf('e0\t\tq1\t\te1\t\tq2\t\te2\t\tq3\t\te3\n')
printf('------------------------------------------------------------------------------------------------------------\n')
for i=1:14
    for j=1:3
        printf('\t\t%.10f\t',q(i,j))
    end
    printf('\n')
    for j=1:4
        printf('%.10f\t\t\t',e(i,j))
    end
    printf('\n')
end
printf('\t\t%.10f\t\t\t%.10f\t\t\t%.10f\n',q(15,1),q(15,2),q(15,3))
printf('\nThe exact roots are \t%.10f    and    %.10f',q(15,1),q(15,3))