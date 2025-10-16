clc;
clear all;
close all;
% x=[1 2 3 4];
% subplot(2,2,1);
% stem(x);
% 
% y=[4 3 2 1];
% subplot(2,2,2);
% stem(y);
% z=xcorr(x,y);
% 
% subplot(2,2,3);
% stem(z);

t=0:1:100;
f=0.05;
x=sin(2*pi*f*t);
subplot(3,1,1);
plot(t,x);
title('sine wave');
y=randn(1,length(t));
z=x+y;
subplot(3,1,2);
plot(t,z);
title('after noise added');

m=xcorr(x,z);
t1=t;
t2=-fliplr(t1);
n1=min(t1)+min(t2);
n2=max(t1)+max(t2);
n=n1:1:n2;
subplot(3,1,3);
plot(n,m);



t=0:1:5;
t1=-fliplr(t);
