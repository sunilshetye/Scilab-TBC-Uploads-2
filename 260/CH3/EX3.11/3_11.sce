//Eg-3.11
//pg-93

clear
clc

 A=[1 1 -1;1 2 -2;-2 1 1];
 B=[1;0;1];
 

n=3;


matsol=zeros(3,3);//initialising matrix matsol
Z=A;
Y=B;
I=[1 0 0;0 1 0;0 0 1];//creates an identity matrix of size n*n
X=zeros(3,1);
inverse=zeros(3,3);
ABI=zeros(3,7);
ABI(:,:)=[A(:,:) B(:,:) I(:,:)];//augumented matrix of A,B,I
  for k=1:n//proceeds from 1st row to the last row
        u=k;
        big=abs(ABI(k,k));          
        for t=k+1:n  //this loop is for selecting the elementhaving max absolute value in a column                   
        dummy=abs(ABI(t,k));     
        if dummy>big then
            big=dummy;
            u=t;
        end
    end
        if u~=k then
        for j=1:2*n+1//interchanging rows to make max absolute element as pivot 
            dummy=ABI(u,j);
            ABI(u,j)=ABI(k,j);
            ABI(k,j)=dummy;
        end
        end
        pivot=ABI(k,k);
       
        
        ABI(k,:)=ABI(k,:)/pivot;
   
        for i=1:n
            if i~=k;
            factor=ABI(i,k);
            ABI(i,:)=ABI(i,:)-ABI(k,:)*factor;
        end
    end
    X(:,:)=[ABI(:,n+1)];//determining X using augumented matrix

    matsol=inv(Z)*Y;//using matlab inbuilt functions to get X

end

disp("result")
disp(X)
 
  
            