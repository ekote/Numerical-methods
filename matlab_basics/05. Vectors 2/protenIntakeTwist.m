clc, clear, close all

% 1. Create a variable with maximum allowed daily protein (ADP for short)
% 2. Extract proteins that are over that maximum allowed value
% 3. Count the amount of days above the ADP
% 4. Extract the specific days (the days themselves, the days numbers, day 3, day 7) on which we were 
% over the ADP; bellow the ADP; exactly on the ADP
% 5. Check which days are more, the days bellow the ADP or the days above the ADP

%% Initial Date
% Randomly Generated Data
proteinIntake = randi([50 65], 1, 28);
ADP = 60;

%% Extracting Amount and Occurances of Above, Bellow and on the ADP
% Extracting Days above ADP and counting them
occurancesOverTheADP = proteinIntake(proteinIntake > ADP);
daysAmountOverTheADP = length(occurancesOverTheADP);

% Extracting the specific days of above, bellow and on the ADP
daysOverTheADP = find(proteinIntake > ADP);
daysLessThanADP = find(proteinIntake < ADP);
daysOnADP = find(proteinIntake == ADP);

% Checking which days are more
% lessOrMoreThanADP = length(daysOverTheADP) < length(daysLessThanADP)
lessOrMoreThanADP = length([daysOverTheADP daysOnADP]) < length(daysLessThanADP);