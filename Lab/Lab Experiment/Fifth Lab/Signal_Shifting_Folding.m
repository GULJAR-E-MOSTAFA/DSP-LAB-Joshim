clc;clear all; close all;
%% Signal Shifting
t6=0:1:5; 
x3=[1,2,3,4,5,6]; 
subplot(2,2,1); 
stem(t6,x3); 
xlabel('time'); 
ylabel('amplitude');  
title('x sequence'); 


t7=t6-1; 
subplot(2,2,2); 
stem(t7,x3); 
xlabel('time'); 
ylabel('amplitude'); 
title('Left shifting or Advance of x sequence'); 


t8=t6+1; 
subplot(2,2,3); 
stem(t8,x3); 
xlabel('time'); 
ylabel('amplitude');  
title('Right shifting or Delay of x sequence');

figure
%% Signal Folding
t4=0:1:5; 
x2=[1,2,3,4,5,6]; 
subplot(2,2,1); 
stem(t4,x2); 
xlabel('time'); 
ylabel('amplitude');  
title('x sequence');   


t5=-t4; 
subplot(2,2,2); 
stem(t5,x2); 
xlabel('time'); 
ylabel('amplitude'); 
title('folding of x sequence'); 



