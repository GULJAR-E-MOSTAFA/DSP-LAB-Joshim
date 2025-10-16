% MATLAB Code for FFT Spectrum and Time Shifting on Audio_ID_22111128.wav
%MD. Tanvir Ahmed rafi
%ID: 22111128 (EVEN ID)
%Lab Project
%Jamalpur science and technology university -JSTU
%Session: 2021-2022
%Depertment: CSE (4th batch)

clc;        
clear;     
close all;  

%% 1. Load Audio File
fileName = 'Audio_ID_22111128.wav';

if ~exist(fileName, 'file')
    error('Error: Audio file ''%s'' not found. Make sure it is in the current directory.', fileName);
end

% Read the audio
[x, Fs] = audioread(fileName);

if size(x, 2) > 1
    x = x(:, 1); 
end

N = length(x);  % samples
t = (0:N-1)'/Fs;     % Time 

disp(['File "', fileName, '" loaded with Sampling Rate (Fs) = ', num2str(Fs), ' Hz.']);

%% 2. Implement FFT
X = fft(x);

% Calculate the single
P2 = abs(X/N);
P1 = P2(1:floor(N/2)+1);
P1(2:end-1) = 2*P1(2:end-1); 

%  N/2 koreci karon fft er symatri proparty er karone
f = Fs*(0:floor(N/2))/N;

%% 3. Apply Time Shifting

% Define the shift amount in seconds
shift_sec = 0.05; 
delay_samples = round(shift_sec * Fs); % Shift in samples

% a) Time Delay

x_delay = [zeros(delay_samples, 1); x(1:N-delay_samples)];

%  b) Time Advance 
x_advance = [x(delay_samples+1:N); zeros(delay_samples, 1)];

disp(['Signal shifted by ', num2str(delay_samples), ' samples (', num2str(shift_sec*1000), ' ms).']);

%% 4. Plot Result

figure('Name', 'FFT and Time Shifting (Md. Tanvir Ahmed)');

% Subplot 1: Frequency Spectrum (FFT)
subplot(2, 1, 1);
plot(f, P1);
title('Frequency Spectrum (FFT Magnitude) of Original Signal');
xlabel('Frequency (Hz)');
ylabel('|P1(f)| (Magnitude)');
grid on;
xlim([0 Fs/2]); % Nyquist frequency

% --- Subplot 2: Time Shifting Comparison
subplot(2, 1, 2);
zoom_samples = round(0.1 * Fs);
plot_t = (0:zoom_samples-1)/Fs;


plot_x = x(1:zoom_samples);
plot_delay = x_delay(1:zoom_samples);
plot_advance = x_advance(1:zoom_samples);

plot(plot_t, plot_x, 'k', 'LineWidth', 2);
hold on;
plot(plot_t, plot_delay, 'r');
plot(plot_t, plot_advance, 'b');

title(['Time Shifting Comparison (Zoomed to 100 ms)']);
xlabel('Time (s)');
ylabel('Amplitude');
legend('Original Signal', ['Delayed (', num2str(shift_sec*1000), ' ms)'], ['Advanced (', num2str(shift_sec*1000), ' ms)'], 'Location', 'best');
grid on;

%% 5. Sound Output Sequential 
disp('--- Starting Sequential Audio Playback ---');

% Play Original
disp('1. Playing Original Speech...');
soundsc(x, Fs);
pause(length(x)/Fs + 0.5); 

% Play Delayed
disp('2. Playing Delayed Speech (The audio starts later)...');
soundsc(x_delay, Fs);
pause(length(x_delay)/Fs + 0.5); 

% Play Advanced
disp('3. Playing Advanced Speech (The audio may sound slightly clipped/different)...');
soundsc(x_advance, Fs);
pause(length(x_advance)/Fs + 0.5); 

disp('--- amar lab Project Finished @_@ ---');