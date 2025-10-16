%©ALRAAAFI (ID-22111128:JSTUCSE4th)
clc;
clear all;
close all;


n = 0:1:40; %stat:step:end
w = pi/10;
A = 1;
y = A*exp( n.*w*i );
r = real(y);
z = imag(y);



subplot(2,2,1);
stem(r,z);
title("GRAPH of A*exp(jnw)", '12');
xlabel('TIME');
ylabel('AMPITUTE');
grid on;


subplot(2,2,2);
plot(r,z);
title("GRAPH of A*exp(jnw)", '12');
xlabel('TIME');
ylabel('AMPITUTE');
grid on;

 

subplot(2,2,3);
stem(n,r);
title("GRAPH of real: cos wave", '12');
xlabel('TIME');
ylabel('AMPITUTE');
grid on;


subplot(2,2,4);
stem(n,z);
title("GRAPH of imagain: sin wave", '12');
xlabel('TIME');
ylabel('AMPITUTE');
grid on;

