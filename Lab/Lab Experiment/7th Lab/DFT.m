
clc;
close all;
clear all;

%signal 1
t = 0 : 1 : 100 ; % Time Samples
f = 20; % Input Signal Frequency
fs = 100; % Sampling Frequency
x = 4*sin(2*pi*f/fs*t); % Generate Sine Wave

subplot(2,1,1);
stem(t,x); 
%plotting input sequence
ylabel('Amplitude');
xlabel('Time');
title('Input');


N = length(x); %finding the length of entered sequence for N point FFT
for k = 1:N %for every value of k
y(k) = 0; 
for n = 1:N %for every value of n
y(k) = y(k)+x(n)*exp(-1i*2*pi*(k-1)*(n-1)/N); 
%as per FFT formula 0 to n-1
end
end


magnitude = abs(y); % absolute values of individual FFT complex 

t = 0:N-1;
subplot(2,1,2);
stem(t,magnitude);
%plotting FFT sequence
ylabel('Amplitude');
xlabel('Frequency');
title('FFT');

