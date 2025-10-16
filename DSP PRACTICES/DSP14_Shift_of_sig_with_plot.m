%©ALRAAAFI (ID-22111128:JSTUCSE4th)
clc;
clear all;
close all;

x = [1,2,-1,5,4]; % p =1
n = -1:3;

%right shift +ve
n1 = n+2;

%left shift -ve
n2 = n-3;




subplot(2,2, 1);
stem( n,x );
grid on;
xlabel('sample points on X','Color',[0,0,1]);
ylabel('AMP points on Y','Color',[1,0,0]);
title('Orginal Signal')



subplot(2,2, 2);
stem( n1,x );
grid on;
xlabel('sample points on X','Color',[0,0,1]);
ylabel('AMP points on Y','Color',[1,0,0]);
title('n+2 Left Shift Signal')



subplot(2,2, 3);
stem( n2,x );
grid on;
xlabel('sample points on X','Color',[0,0,1]);
ylabel('AMP points on Y','Color',[1,0,0]);
title('n-3 left Signal')