clc;clear all;close all;
t=-3:1:3; 
y=[zeros(1,3),ones(1,4)]; 
subplot(2,2,1); 
stem(t,y); 
xlabel('time'); 
ylabel('amplitude');  
title('unit step function');

t1=0:1:4; 
y1=t1; 
subplot(2,2,2); 
stem(t1,y1); 
xlabel('time'); 
ylabel('amplitude');  
title('unit ramp function');  

t2=-3:1:3; 
y2=[zeros(1,3),1,zeros(1,3)]; 
subplot(2,2,3); 
stem(t2,y2); 
xlabel('time'); 
ylabel('amplitude'); 
title('unit impulse function');

t3=-5:1:5; 
y3=exp(t3); 
subplot(2,2,4); 
plot(t3,y3); 
xlabel('time'); 
ylabel('amplitude'); 
title('exponential function');