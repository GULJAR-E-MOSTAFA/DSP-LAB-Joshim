%©ALRAAAFI (ID-22111128:JSTUCSE4th)
clc;
clear all;
close all;

x = [1,2,3,1]; % p =1 ; singnal
n = [ 0, 1, 2, 3 ];

h = [1,2,1,-1];
m = [-1,0,1,2];


stat = min( min(n), min(m) );
last = stat + length(x) + length(h) - 2;

N = stat:1:last;
SM = zeros( 1, length(N) ); %this is convolution Sum

Y = zeros(length(x), length(h));

for i=1: length(h)
    Y(:, i) = x*h(i);
end



for i=1: length(x)
    for j=1: length(h)
        s = i+j-1;
        SM(s) = SM(s)+Y(i,j);
    end
end


stem( N, SM );

fprintf("CONVOLUTION SUM IS:\n");
disp(SM);

%build in fn: conv(x,h)