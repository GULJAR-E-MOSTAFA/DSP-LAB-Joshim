clc;clear all;close all;

t=0:10:1000; 
f=10;
fs=1000;
x=sin(2*pi*f/fs*t); 
subplot(2,2,1);
plot(t,x); 
 
xlabel('Time');
ylabel('Amplitude');
title('First Signal 10 Hz');
%%
t1=0:10:1000; 
f1=8;
fs1=1000;
x1=sin(2*pi*f1/fs1*t1); 
subplot(2,2,2);
plot(t1,x1); 
 
xlabel('Time');
ylabel('Amplitude');
title('Second Signal 8Hz');

%%
%%
t2=0:10:1000; 
f2=8;
fs2=1000;
x2=sin(2*pi*f2/fs2*t2); 
subplot(2,2,3);
plot(t2,x2); 
 
xlabel('Time');
ylabel('Amplitude');
title('Second Signal 8Hz');
%% Signal Addition
add=x-x1-x2;
subplot(2,2,4);
plot(t,add);
xlabel('Time');
ylabel('Amplitude');
title('Additio Signal');

 
