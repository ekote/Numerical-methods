clc, clear, close all

number = 100;

%% Multiple Conditions
divisibleByTwoOrFive = ((rem(number, 2) == 0) || (rem(number, 5) == 0));
withinThe30to60Range = ((number >= 30) && (number <= 60));

if (divisibleByTwoOrFive && withinThe30to60Range)
    number
end