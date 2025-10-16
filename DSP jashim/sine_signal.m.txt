clc;clear all ;close all;
t=linspace(0,10,100); 
x=sin(pi*2*t); 
plot(t,x); 
 
y=cos(pi*2*t); 

hold on 
plot(t,y,'red');
xlabel('Time'); 
ylabel('Amplitude'); 
title ('Generetion of sine and cosine wave');





clc;clear all ;close all;
t=0:10:1000; 
f=2;
fs=1000;
x=sin(2*pi*f/fs*t); 
plot(t,x); 
 



 