//Caption: 2-D Linear Convolution
//Example3.1 &amp; Example3.4
//page 85 &amp; page 107
clc;
exec('conv2d2.sce');
exec('fft2d.sce');
exec('ifft2d.sce');
x =[4,5,6;7,8,9];
h = [1;1;1];
disp(x,'x=')
disp(h,'h=')
[y,X,H] = conv2d2(x,h);
disp(y,'Linear 2D convolution result y =')
//Result
//Linear 2D convolution result y =   
// 
//    4.     5.     6.   
//    11.    13.    15.  
//    11.    13.    15.  
//    7.     8.     9.