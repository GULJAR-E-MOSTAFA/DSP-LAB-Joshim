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

y = y1+y2;