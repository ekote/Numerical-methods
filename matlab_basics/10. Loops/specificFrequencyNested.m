clc, clear, close all

% Frequencies to be played in Hz
frequencies = [100 1000 2000 3000];
% frequencies = 500:500:1500;

% Amplitudes
amplitudes = 0.6:0.2:1;

amplitude = 1;
duration = 0.3;   % Duration of the Sound
fs = 44100;       % Sampling Rate
T = 1 / fs;       % Sampling Period
t = 0:T:duration; % Time Vector

signals = zeros(length(frequencies), length(t), length(amplitudes));

for i = 1:length(frequencies)
    for j = 1:length(amplitudes)
        % Recalculating the signal with the new amplitude
        signal = amplitudes(j)* cos(2 * pi * frequencies(i) * t);
        
        % Save the Signal
        signals(i, :, j) = signal;
        
        % Playing the Signal
        sound(signal, fs)
        
        % Plotting the Signal
        subplot(length(frequencies), 1, i)
        hold on
        ylim([-1 1])
        plot(t(1:1000), signal(1:1000))
        
        % Pausing between each signal
        pause(duration + 0.05)
    end
end