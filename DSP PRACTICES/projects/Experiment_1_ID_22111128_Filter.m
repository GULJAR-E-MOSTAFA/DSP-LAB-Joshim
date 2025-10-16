% MATLAB Code to Apply Four Filters, Plot, and Play Audio Output
%MD. Tanvir Ahmed rafi
%ID: 22111128 (EVEN ID)
%Lab Project
%Jamalpur science and technology university -JSTU
%Session: 2021-2022
%Depertment: CSE (4th batch)


clc;        
clear;      
close all;  

%% 1. amar audio file load hobe
fileName = 'Audio_ID_22111128.wav';

% audio file e error takle chkeck korbe
if ~exist(fileName, 'file')
    error('Error: Audio file ''%s'' not found. Make sure it is in the current directory.', fileName);
end

% amar recood file ta read hobe [data, sampling_frequency]
[x, Fs] = audioread(fileName);

% first channel use hobe
if size(x, 2) > 1
    x = x(:, 1); 
end

N = length(x);              % Number of samples
t = (0:N-1)/Fs;             % Time point ata

%% 2. Filter peramiter setup kora 

% sampling freq hobe: < Fs/2.

% Low Pass: Keep everything below 1000 Hz (menning: high-frequency noise remove hobe)
LP_Fpass = 1000; 

% High Pass: Keep everything above 3000 Hz (menning: low-frequency noise remove hobe)
HP_Fpass = 3000;

% Band Pass: Keep frequencies between 500 Hz and 2000 Hz ( specific range bade baki sob remove) 
BP_Fpass = [500 2000];

% Band Stop: Remove frequencies between 1500 Hz and 2500 Hz ( specific range remove hobe)
BS_Fstop = [1500 2500];

%% 3. Apply Filters and Store Results Dekbo:
disp('Applying digital filters...');

% Use the simple-to-implement time-domain functions:
y_lp = lowpass(x, LP_Fpass, Fs);
y_hp = highpass(x, HP_Fpass, Fs);
y_bp = bandpass(x, BP_Fpass, Fs);
y_bs = bandstop(x, BS_Fstop, Fs);

% Collect all filtered signals for plotting/playing -_-
filtered_signals = {x, y_lp, y_hp, y_bp, y_bs};
titles = {'Original Signal', ...
          ['Low Pass (<', num2str(LP_Fpass), ' Hz)'], ...
          ['High Pass (>', num2str(HP_Fpass), ' Hz)'], ...
          ['Band Pass (', num2str(BP_Fpass(1)), '-', num2str(BP_Fpass(2)), ' Hz)'], ...
          ['Band Stop (Filter ', num2str(BS_Fstop(1)), '-', num2str(BS_Fstop(2)), ' Hz)']};

%% 4. Frequency Domain plot kore graph e dekhano
figure('Name', 'Frequency Response Comparison (Md. Tanvir Ahmed) ');

for k = 1:5
    subplot(5, 1, k);
    
    % Calculate power 
    [Pxx, F] = periodogram(filtered_signals{k}, [], N, Fs);
    
    plot(F, 10*log10(Pxx));
    title(titles{k});
    xlabel('Frequency (Hz)');
    ylabel('Power (dB/Hz)');
    xlim([0 Fs/2]);
    grid on;
end

% Adjust figure:
sgtitle(['Filter Effects on ', fileName, ' (Fs=', num2str(Fs), ' Hz)']);


%% 5. Singnal gular output (Sequential play hobe )
disp('--- Starting Audio Playback ---');
for k = 1:5
    fprintf('Playing: %s...\n', titles{k});
    
    % Play the audio :
    soundsc(filtered_signals{k}, Fs);
    
    % time delay hoe play ho
    pause(length(x)/Fs + 0.5); 
end
disp('--- Audio Playback Finished ---');