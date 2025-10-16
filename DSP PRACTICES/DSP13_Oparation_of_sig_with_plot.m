%©ALRAAAFI (ID-22111128:JSTUCSE4th)
clc;
clear all;
close all;

x1 = [1,2,-1,5,4]; % p =1
n1 = -1:3;
x2 = [ -3, -1, 5, 2, 0, 1 ]; %p = 4
n2 = -3:2;

n = min( min(n1), min(n2) ) : max( max(n1), max(n2) );
y1 = zeros(1, length(n));
y2 = zeros(1, length(n));

y1( (n>=min(n1)) & max(n1)>=n  ) = x1;
y2( n>=(min(n2)) & n<=max(n2) ) = x2;

ad = y1+y2;
sb = y1-y2;
ml = y1.*y2;
%dv = y1./y2;

disp(ad);
disp(sb);
disp(ml);




subplot(3,2, 1);
stem( n1,x1 );
grid on;
xlabel('sample points on X','Color',[0,0,1]);
ylabel('AMP points on Y','Color',[1,0,0]);
title('X1 Signal')

subplot(3,2, 2);
stem( n2,x2 );
grid on;
xlabel('sample points on X','Color',[0,0,1]);
ylabel('AMP points on Y','Color',[1,0,0]);
title('X2 Signal')

subplot(3,2,3);
stem( n,ad );
grid on;
xlabel('sample points on X','Color',[0,0,1]);
ylabel('AMP points on Y','Color',[1,0,0]);
title('ADDITION of X1 and X2')


subplot(3,2,4);
stem( n,sb );
grid on;
xlabel('sample points on X','Color',[0,0,1]);
ylabel('AMP points on Y','Color',[1,0,0]);
title('SUBSTRUCTION of X1 and X2')


subplot(3,2,5);
stem( n,ml );
grid on;
xlabel('sample points on X','Color',[0,0,1]);
ylabel('AMP points on Y','Color',[1,0,0]);
title('MULTIPLICATION of X1 and X2')