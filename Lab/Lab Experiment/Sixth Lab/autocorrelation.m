clc;
clear all;
close all;

% x=[1 2 3 4];
% subplot(2,1,1);
% stem(x);
% y=xcorr(x,x);
% subplot(2,1,2);
% stem(y)

t=0:1:100;
f=0.05;
x=sin(2*pi*f*t);
subplot(2,1,1);
plot(t,x);
m=xcorr(x,x);
t1=t;
t2=-fliplr(t1);
n1=min(t1)+min(t2);
n2=max(t1)+max(t2);
n=n1:1:n2;
subplot(2,1,2);
plot(n,m);
