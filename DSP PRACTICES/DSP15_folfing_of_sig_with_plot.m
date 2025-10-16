%©ALRAAAFI (ID-22111128:JSTUCSE4th)
clc;
clear all;
close all;

x = [1,2,-1,5,4]; % p =1
n = -1:3;

y = fliplr(x);
N = -fliplr(n);



subplot(2,1, 1);
stem( n,x );
grid on;
xlabel('sample points on X','Color',[0,0,1]);
ylabel('AMP points on Y','Color',[1,0,0]);
title('Orginal Signal')



subplot(2,1, 2);
stem( N,y );
grid on;
xlabel('sample points on X','Color',[0,0,1]);
ylabel('AMP points on Y','Color',[1,0,0]);
title('folding Signal')



