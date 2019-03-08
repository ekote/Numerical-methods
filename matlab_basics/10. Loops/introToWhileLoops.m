clc, clear, close all

%% Simple example
number = 0;
counter = 0;

while (number ~= 50)
    number = randi([40 60], 1, 1);
    counter = counter + 1;
end

number
counter