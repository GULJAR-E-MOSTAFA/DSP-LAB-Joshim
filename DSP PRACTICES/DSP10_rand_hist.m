%©ALRAAAFI (ID-22111128:JSTUCSE4th)
clc;
clear all;
close all;

%uniform distribution
y = rand(1,100);
x = 1:1:100;

subplot(2,2,1);
stem(x,y);



subplot(2,2,2);
histogram(y,10);





%random distribution
z = randn(1,100);
subplot(2,2,3);
stem(x,z);

subplot(2,2,4);
histogram(z,10)