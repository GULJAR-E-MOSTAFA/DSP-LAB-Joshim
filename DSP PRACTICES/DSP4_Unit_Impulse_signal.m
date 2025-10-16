%©ALRAAAFI (ID-22111128:JSTUCSE4th)
clc;
clear all;
close all;
n = -10:1:10; %stat:step:end
p = 0;
u = ( n-p == 0);
stem(n,u);
xlabel('n Values');
ylabel('u(n) Values');
grid on;



