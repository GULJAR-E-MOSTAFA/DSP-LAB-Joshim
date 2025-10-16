%©ALRAAAFI (ID-22111128:JSTUCSE4th)
clc;
clear all;
close all;


n = 0:0.05:1; %stat:step:end
A = 2;
y = A*sin( 2*pi*n );




%subplot(1,2,1);
stem(n,y);
hold on;
plot(n,y);
title("GRAPH of A*exp(jnw)", '12');
xlabel('TIME');
ylabel('AMPITUTE');
grid on;



