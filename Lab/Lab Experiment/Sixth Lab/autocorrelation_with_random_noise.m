clc;
clear all;
close all;
 t=0:1:1000;
 x=randn(1,length(t));
 subplot(2,1,1);
 plot(t,x);
 y=xcorr(x,x);
 t1=t;
 t2=-fliplr(t1);
 n1=min(t1)+min(t2);
 n2=max(t1)+max(t2);
 n=n1:1:n2;
 
 subplot(2,1,2);
 plot(n,y);
 

