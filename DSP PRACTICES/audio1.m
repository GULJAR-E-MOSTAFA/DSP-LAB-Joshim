clc;clear all;
 
%% Load audio signal
[y,fs]=audioread('sample.wav');
%% Play audio
y=y(:,1); 
sound(y,fs);
 
%% find length
t=(0:length(y)-1)/fs;
 
%% Plot signal
plot(t,y);