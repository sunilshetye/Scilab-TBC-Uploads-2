// 4-Stage Runge-Kutta method 
clc;
clear;
close();
format('v',8);
funcprot(0);
disp('Integral 0 to 2 exp(x)dx');
deff('[ud]=f(u,v)','ud=u^2-2*u*v');
deff('[vd]=g(x,u,v)','vd=u*x+u^2*sin(v)');
un = 1;
vn = -1;
xn = 0;
h = 0.05;
for i = 1:2
    k1 = f(un,vn);
    disp(k1);
    l1 = g(xn,un,vn);
    disp(l1);
    k2 = f(un+.5*h*k1,vn+.5*h*l1) ;
    disp(k2);
    l2 = g(xn+.5*h,un+.5*h*k1,vn+.5*h*l1) ;
    disp(l2);
    k3 = f(un+.5*h*k2,vn+.5*h*l2) ;
    disp(k3);
    l3 = g(xn+.5*h,un+.5*h*k2,vn+.5*h*l2) ;
    disp(l3);
    k4 = f(un+h*k3,vn+h*l3);
    disp(k4);
    l4 = g(xn+h,un+h*k3,vn+h*l3);
    disp(l4);
    un_1 = un + h*(k1+2*k2+2*k3+k4)/6;
    disp(un_1,'u(n+1) : ');
    vn_1 = vn + h*(l1+2*l2+2*l3+l4)/6;
    disp(vn_1,'v(n+1) : ');
    un = un_1;
    vn = vn_1;
    xn = xn +h;
end
ann = [un vn];
disp(ann,'Calculated U2 n V2 values : ');