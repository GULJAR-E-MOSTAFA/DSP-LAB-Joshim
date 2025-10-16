%©ALRAAAFI (ID-22111128:JSTUCSE4th)
clc;
clear all;
close all;

fs = 1000;
F = 3;
A = 1;
T = 1/fs;
duration = 1.5;
t = 0:T:duration;
y = A*sin(2*pi*F*t);
sample = size(t);


subplot(2,2,1);
plot(t,y);


noise = rand(sample);
noise_Sig = y + noise;



subplot(2,2,2);
plot(t,noise);



subplot(2,2,3);
plot(t,noise_Sig);