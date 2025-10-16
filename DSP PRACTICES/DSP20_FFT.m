%©ALRAAAFI (ID-22111128:JSTUCSE4th)
clc;
clear all;
close all;

T = 0.005;
fs = 1/T;
t = 0:T:1-T;

amp = 1;
fq = 50;

f1=9;
f2=39;
f3=25;
y1=10*sin(2*pi*f1*t);
y2=10*sin(2*pi*f2*t);
y3=10*sin(2*pi*f3*t);
x=y1+y2+y3;

N = length(x);

%N = 2^nextpow2(N);
%fft1 = fft( x,N );

fft1 = fft( x );


subplot( 3,3,1 );
plot( t,y1 );

subplot( 3,3,2 );
plot( t,y2 );

subplot( 3,3,3 );
plot( t,y3 );



subplot( 3,3,[4,5,6] );
plot(t,x);

ff = (0:N-1)*(fs/N);
subplot( 3,3,[7,8,9] );
plot(ff,abs(fft1));
hold on;
stem( ff, abs(fft1) );

