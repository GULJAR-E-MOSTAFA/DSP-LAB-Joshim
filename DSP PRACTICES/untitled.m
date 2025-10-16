clc;
 clear all;
 close all;
 %continuous sinusoidal signal
 a=input('Enter the amplitude:');
 f=input('Enter the Timeperiod:');
 t=0:1:30;
 x=a*sin(2*pi*f*t);
 subplot(2,3,1);
 plot(t,x);
 xlabel('time');
 ylabel('Amplitude');
 title('Sinusoidal signal');
 fftx=fft(x);
 realfftx=abs(fftx);
 subplot(2,3,2);
 stem(t,realfftx);
 xlabel('time');
 ylabel('Amplitude');
 title('FFT signal');

