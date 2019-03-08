clc, clear, close all

%% Initial Date
% Protein Intake for 28 days - 4 weeks
proteinIntake = [60 62 63 60 59 59 55 56 60 57 61 60 62 63 ...
                 63 62 61 55 57 55 50 52 60 63 62 54 55 55];

%% Extracting Weeks Into Separate Vectors
% +1 or -6 because, no +1 or -7 will place us at the end of the given week,
% we want t ostart from the first day of the next (+1) or the first day of
% the current week (-6)

% Extracting Separate Weeks
proteinsW1 = proteinIntake(1:7);
proteinsW2 = proteinIntake(8:(2 * 7));
proteinsW3 = proteinIntake(((2 * 7) + 1):(3 * 7));
proteinsW4 = proteinIntake((end - 6):end);

% Combining Weeks
proteinW1W2 = [proteinsW1 proteinsW2];
proteinW3W4 = [proteinsW3 proteinsW4];

%% Calculating the % Diffferences
% ((value1 - value2) / value2) * 100 to get how much more or less, the
% first value had compared to the second value, if we want to get the
% opposite, we simply switch to ((value2 - value1) / value1) * 100

percentDifferences = ((proteinsW1 - proteinsW4) ./ proteinsW4) * 100;
percentDifferences2 = ((proteinW1W2 - proteinW3W4) ./ proteinW3W4) * 100;





