%©ALRAAAFI (ID-22111128:JSTUCSE4th)
clc;
clear all;
close all;


n = -10:1:20; %stat:step:end
x = ( n-9 >= 0);
y = ( n-16 >= 0);
dif = x - y;


subplot(2,2,1);
stem(n,x);
title("GRAPH of Y", '12');
xlabel('n Values');
ylabel('x(n) Values');
grid on;

subplot(2,2,2);
stem(n,y);
title("GRAPH of X", '12');
xlabel('n Values');
ylabel('y(n) Values');
grid on;


%dirent 2 singnal:
subplot(2,2,3);
stem(n,dif);
title("THIS IS DIRRENCE OF 2 GRAPH", '12');
xlabel('n Values');
ylabel('y(dif) Values');
grid on;