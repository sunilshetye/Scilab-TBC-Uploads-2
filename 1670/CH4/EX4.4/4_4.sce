//Example 4.4
//Power Method
//Page no. 93
clc;close;clear;

A=[3,-1,0;-1,2,-1;0,-1,3];
e=0.001;
q0=[1;1;1];
for i=1:5
    q1=A*q0;
    a=max(q1)
    for j=1:3
        q2(j)=q1(j)/a;
    end
    printf('\nq(%i) = %.4f     a = %.4f      Scaled q(%i) = %.3f\n       %.3f                                  %.3f\n       %.3f                                      %i\n\n',i,q1(1),a,i,q2(1),q1(2),q2(2),q1(3),q2(3))
    q1=q2;
    q0=q1;
end
q0=-q0/q0(2)
printf('Hence the largest eigenvalue is %.1g with the corresponding eigenvector as %.1g\n                                                                       %.1g\n                                                                        %.1g',a,q0(1),q0(2),q0(3))