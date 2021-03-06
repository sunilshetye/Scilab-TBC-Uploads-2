clear
clc

G=[
%inf %inf 1.5 1
0    %inf 2.0 .5
3.5  %inf 0   0
0    %inf 2  .8
]


ld=[
1 2 %i*.2
2 3 %i*.1
3 4 %i*.1
1 4 %i*.2
1 3 %i*.2
]

n=4
e=5
Y=zeros(n,n)

for i=1:e
    ynew = 1/(ld(i,3))
    y0=0
    n1=real(ld(i,1))
    n2=real(ld(i,2))
    if(n1==0)
        Y(n2,n2)=Y(n2,n2)+ynew+y0
    else
        Y(n1,n1)= Y(n1,n1)+ynew+y0
        Y(n1,n2)= Y(n1,n2)-ynew
        Y(n2,n1)= Y(n2,n1)-ynew
        Y(n2,n2)= Y(n2,n2)+ynew+y0
    end
end

G(1,1)= G(1,3)+G(2,3)+G(3,3)+G(4,3)-(G(2,1)+G(3,1)+G(4,1))

G(1,5)=G(1,1)-G(1,3)
G(2,5)=G(2,1)-G(2,3)
G(3,5)=G(3,1)-G(3,3)
G(4,5)=G(4,1)-G(4,3)

//d1=0
A=%i * [
Y(2,2) Y(2,3) Y(2,4)
Y(3,2) Y(3,3) Y(3,4)
Y(4,2) Y(4,3) Y(4,4)
]
d(1)=0
d(2:4)=inv(A) * [G(2,5) G(3,5) G(4,5)]'
d=round((d)*1000)/1000
G(1,6)= %i *((Y(1,1) * cos(d(1)-d(1)))+(Y(1,2) *  cos(d(1)-d(2)))+(Y(1,3) * cos(d(1)-d(3)) )+(Y(1,4) *  cos(d(1)-d(4))));
G(2,6)= %i *((Y(2,1) * cos(d(2)-d(1)))+(Y(2,2) *  cos(d(2)-d(2)))+(Y(2,3) * cos(d(2)-d(3)) )+(Y(2,4) *  cos(d(2)-d(4))));
G(3,6)= %i *((Y(3,1) * cos(d(3)-d(1)))+(Y(3,2) *  cos(d(3)-d(2)))+(Y(3,3) * cos(d(3)-d(3)) )+(Y(3,4) *  cos(d(3)-d(4))));
G(4,6)= %i *((Y(4,1) * cos(d(4)-d(1)))+(Y(4,2) *  cos(d(4)-d(2)))+(Y(4,3) * cos(d(4)-d(3)) )+(Y(4,4) *  cos(d(4)-d(4))));

G(:,6)=round(G(:,6) *10000)/10000
G(:,2)=G(:,6) + G(:,4)
G(:,2)=round(G(:,2)*1e4)/1e4
mprintf("\n(a) Q1= %.4f, Q2= %.4f, Q3= %.3f, Q4= %.4f, ", G(1,2),G(2,2),G(3,2),G(4,2))

Ql=G(1,6)+G(2,6)+G(3,6)+G(4,6)
mprintf("\n(b) reactive line losses=%.4fpu",Ql)

X=ld(:,3)/%i

P(1)=round((sin(d(1)-d(2))/X(1))*1000)/1000
P(2)=round((sin(d(2)-d(3))/X(2))*1000)/1000
P(3)=round((sin(d(3)-d(4))/X(3))*1000)/1000
P(4)=round((sin(d(1)-d(4))/X(4))*1000)/1000
P(5)=round((sin(d(1)-d(3))/X(5))*1000)/1000

Q(1)=round(((1-cos(d(1)-d(2)))/X(1))*10000)/10000
Q(2)=round(((1-cos(d(2)-d(3)))/X(2))*10000)/10000
Q(3)=round(((1-cos(d(3)-d(4)))/X(3))*10000)/10000
Q(4)=round(((1-cos(d(1)-d(4)))/X(4))*10000)/10000
Q(5)=round(((1-cos(d(1)-d(3)))/X(5))*10000)/10000

mprintf("\n(c)")
mprintf("\nP12 = -P21 = %.3f, Q12=Q21=%.4f",P(1),Q(1))
mprintf("\nP23 = -P32 = %.3f, Q23=Q32=%.3f",P(2),Q(2))
mprintf("\nP34 = -P43 = %.3f, Q34=Q43=%.3f",P(3),Q(3))
mprintf("\nP14 = -P41 = %.3f, Q14=Q41=%.4f",P(4),Q(4))
mprintf("\nP13 = -P31 = %.3f, Q13=Q31=%.4f",P(5),Q(5))
