%©ALRAAAFI (ID-22111128:JSTUCSE4th)
clc;
clear all;
close all;

n = 1:0.1:100;
r = 0.92;
w = pi/4;

y1 = r.^(-n);
y2 = cos(w.*n) - i*sin( w.*n );
y = y1.*y2;

subplot(3,1,1);
plot(n,y1);
xlabel('Sample No');
ylabel('amplitude');
title('r^-^n when r= ');


subplot(3,1,2);
plot(n,y2);
xlabel('Sample No');
ylabel('amplitude');
title('cos(wt) when w=pi/4');


subplot(3,1,3);
plot(n,real(y));
xlabel(' ');
ylabel('amplitude');
title('Real part of z^-^n= r^-^n *cos(wn)');





syms f a x;
f = a^x;
ztrans(f)
iztrans(f)