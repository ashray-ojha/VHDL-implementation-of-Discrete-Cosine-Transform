close all
clear all 
clc
 x=[3 1 2 0 1 2 3 3];
 %x = [2 0 4 0 1 3 2 2.5];
 l=length(x);
 e=1;
 for k=1:8
     if(k==1)
        e=1/sqrt(2);
     else
         e=1;
     end
     y(k) = 0;
     for n=1:8
         y(k)=y(k) + x(n)*cos(((2*(n-1))+1)*pi*(k-1)/16);
     end 
     y(k)=y(k)*e;
 end
 disp(y);