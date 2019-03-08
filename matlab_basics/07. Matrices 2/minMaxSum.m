clc, clear, close all

% Data To Work With
someMatrix = [1 2 4 5 6 3; 1 3 4 5 2 3; 6 7 8 2 6 5];

%% Sum
% Sum by Columns
sumOfTheMatrixC = sum(someMatrix);

% Sum by Rows
sumOfTheMatrixR = sum(someMatrix, 2);

% Total Sum
fullSumV1 = sum(sum(someMatrix));
fullSumV2 = sum(someMatrix(:));

%% Mean
% Mean by Columns
meanOfTheMatrixC = mean(someMatrix);

% Mean by Rows
meanOfTheMatrixR = mean(someMatrix, 2);

% Total Mean
totalMeanV1 = mean(mean(someMatrix));
totalMeanV2 = mean(someMatrix(:));

%% Min, Max
% Min, Max by Columns
minByC = min(someMatrix);
maxByC = max(someMatrix);

% Min, Max by Rows
minByR = min(someMatrix, 2);
maxByR = max(someMatrix, 2)

% Total Min, max
totalMinV1 = min(min(someMatrix)); 
totalMinV2 = min(someMatrix(:));

totalMaxV1 = max(max(someMatrix));
totalMaxV2 = max(someMatrix(:));