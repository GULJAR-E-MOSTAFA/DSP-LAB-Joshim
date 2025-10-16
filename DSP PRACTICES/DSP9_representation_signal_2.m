%©ALRAAAFI (ID-22111128:JSTUCSE4th)
clc;
clear all;
close all;


fs = 100; %sample frequency or sampling rate
T = 1/fs;
F = 2; %frequency
duration = 2; %sec
t = 0:T:duration;
A = 3; %amplitute
y = A*sin(2*pi*F*t); %signal


subplot(1,2,1);
stem(t,y);
hold on;
plot(t,y);
title("GRAPH of A*sin(2*pi*f*t)", '12');
xlabel('TIME');
ylabel('AMPITUTE');
grid on;


%sample position
n = t./T; %sample point each
subplot(1,2,2);
stem(n,y);
hold on;
plot(n,y);
title("GRAPH of A*sin(2*pi*f*t)", '12');
xlabel('Sample point');
ylabel('AMPITUTE');
grid on;

