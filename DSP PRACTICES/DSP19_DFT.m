%©ALRAAAFI (ID-22111128:JSTUCSE4th)
clc;
clear all;
close all;

T = 0.005;
fs = 1/T;
t = 0:T:1;

amp = 1;
fq = 50;
x = amp*sin( 2*pi*fq*t );
N = length(x);

E = exp((-1*i*2*pi)/N);

for (k=1: N)
    for (n=1: N)
        TM(k,n) = E^( (n-1)*(k-1) );
    end
end

dft = x*TM;


subplot( 2,1,1 );
plot( t,x );



subplot( 2,1,2 );

ff = (0:N-1)*(fs/N);


stem( ff,abs(dft) );



%stem(ff,abs(fft(x))); %buildin f