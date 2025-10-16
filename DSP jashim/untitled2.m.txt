clc; clear all;
 
f = 10;              
fs = 1000;           
duration = 1;        
 
t = 0:1/fs:duration;
 
x = sin(2*pi*f*t);
 
figure;
plot(t, x, 'b', 'LineWidth', 1.5);    
hold on;
stem(t, x, 'r', 'Marker', 'o', 'LineStyle', 'none');  
title('10 Hz Sine Wave Sampled at 1000 Hz');
xlabel('Time (seconds)');
ylabel('Amplitude');
legend('Sine Wave', 'Sampling Points')