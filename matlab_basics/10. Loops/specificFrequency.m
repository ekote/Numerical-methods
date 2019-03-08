clc, clear, close all

% Frequencies to be played in Hz
% frequencies = [500 1000 2000 5000 10000];
frequencies = 500:500:20000;

duration = 0.3;   % Duration of the Sound
amplitude = 1;    % Amplitude
fs = 44100;       % Sampling Rate
T = 1 / fs;       % Sampling Period
t = 0:T:duration; % Time Vector

signals = zeros(length(frequencies), length(t));

for i = 1:length(frequencies)
    % Calculating the sound vector for a given frequency
    signal = amplitude * cos(2 * pi * frequencies(i) * t);
    
    % Playing the sound
    sound(signal, fs)
    
    % Save the calculated signal for later use
    signals(i, :) = signal;
    
    % Pausing the loop so that we can hear all frequencies individually
    pause(duration + 0.05)
end