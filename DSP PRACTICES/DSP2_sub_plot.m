clc;
clear all;
close all;



x = 0:0.5:2*pi;
%x = stat:inct=rement:end
y = sin(x);
z = cos(x);


%Continious Signal
subplot(2,2,1);
%subplot(row,col,fig no);
title('Sin WAVE');
plot(x,y);
xlabel('TIME');
ylabel('AMPLITUTE');
grid on;

subplot(2,2,2);
%subplot(row,col,fig no);
title('Cos WAVE');
plot(x,z);
xlabel('TIME');
ylabel('AMPLITUTE');
grid on;




%Discrete Signal:
subplot(2,2,3);
%subplot(row,col,fig no);
title('Sin WAVE');
stem(x,y); %x mean n
xlabel('TIME');
ylabel('AMPLITUTE');
grid on;

subplot(2,2,4);
%subplot(row,col,fig no);
title('Cos WAVE');
stem(x,z);
xlabel('TIME');
ylabel('AMPLITUTE');
grid on;