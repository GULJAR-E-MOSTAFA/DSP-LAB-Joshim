% MATLAB Code for Noise Removal from my recoded using a Bandstop Filter
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

% Check record error
if ~exist(fileName, 'file')
    error('Error: Audio file ''%s'' not found!!!!!!!!!!!!!!! yoyo', fileName);
end

% record read hocce [data, sampling_frequency]
[speech, Fs] = audioread(fileName);


if size(speech, 2) > 1
    speech = speech(:, 1); 
end

N = length(speech);         % Number of samples
t = (0:N-1)'/Fs;            % Time poinnt

%% 2. Add Artificial Noise 
% We'll add a pure sine wave tone at 2000 Hz as the 
NoiseFreq = 2000; 
NoiseAmp = 0.3;   

noise = NoiseAmp * sin(2*pi*NoiseFreq*t);

% amar voice + noise signal mix kora hoise
noisy_speech = speech + noise;


noisy_speech = noisy_speech / max(abs(noisy_speech)); 

disp(['Artificial noise (pure tone) at ', num2str(NoiseFreq), ' Hz added.']);

%% 3. Design the Bandstop Filter to Remove the Noise

% Passband Frequenci
Fstop1 = NoiseFreq - 100; % Start removing at 1900 Hz
Fstop2 = NoiseFreq + 100; % Finish removing at 2100 Hz

% Bandstop Filter 
filtered_speech = bandstop(noisy_speech, [Fstop1 Fstop2], Fs);

disp(['Bandstop filter applied to remove noise in the range [', num2str(Fstop1), '-', num2str(Fstop2), '] Hz.']);

%% 4. Plot Results 

figure('Name', 'Noise Removal using Bandstop Filter (Md. Tanvir Ahmed)');

% Calculate frequency analysis
N_fft = 2^nextpow2(N); 
[P_orig, F] = periodogram(speech, [], N_fft, Fs);
[P_noisy, ~] = periodogram(noisy_speech, [], N_fft, Fs);
[P_filtered, ~] = periodogram(filtered_speech, [], N_fft, Fs);

% --- Subplot 1: Original vs. Noisy ---
subplot(3, 1, 1);
plot(F, 10*log10(P_orig), 'k', 'LineWidth', 1.5);
hold on;
plot(F, 10*log10(P_noisy), 'r', 'LineWidth', 1);
title('Original Speech vs. Noisy Signal (Frequency Domain)');
xlabel('Frequency (Hz)');
ylabel('Power (dB/Hz)');
legend('Original Speech', 'Noisy Speech', 'Location', 'northeast');
xlim([0 Fs/2]);
grid on;

% Filter vs. Noisy
subplot(3, 1, 2);
plot(F, 10*log10(P_noisy), 'r', 'LineWidth', 1);
hold on;
plot(F, 10*log10(P_filtered), 'b', 'LineWidth', 1.5);
title(['Noisy vs. Bandstop Filtered Signal (Noise Peak at ', num2str(NoiseFreq), ' Hz Removed)']);
xlabel('Frequency (Hz)');
ylabel('Power (dB/Hz)');
legend('Noisy Speech', 'Bandstop Filtered', 'Location', 'northeast');
xlim([0 Fs/2]);
grid on;

% --- Subplot 3: Time Domain Comparison
subplot(3, 1, 3);
plot(t, noisy_speech, 'r');
hold on;
plot(t, filtered_speech, 'b');
title('Time Domain Comparison (Zoomed)');
xlabel('Time (s)');
ylabel('Amplitude');
legend('Noisy Speech', 'Bandstop Filtered', 'Location', 'northeast');
xlim([0.5 0.52]); 
grid on;


%% 5. Sound Output 
disp('--- Starting Sequential Audio Playback (for Comparison) ---');

% Play Original
disp('1. Playing Original Speech...');
soundsc(speech, Fs);
pause(length(speech)/Fs + 0.5); % Wait for playback

% Play Noisy
disp('2. Playing Noisy Speech (with 2000 Hz tone)...');
soundsc(noisy_speech, Fs);
pause(length(noisy_speech)/Fs + 0.5); % Wait

% Play Filter
disp('3. Playing Bandstop Filtered Speech...');
soundsc(filtered_speech, Fs);
pause(length(filtered_speech)/Fs + 0.5); % Wait 

disp('--- amar kaj Finished ---');