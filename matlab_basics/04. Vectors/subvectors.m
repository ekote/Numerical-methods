clc, clear, close all

% Vector to work with
CollectedData = [1 2 3 4 5 6 7];
lessCollectedData = [1 2 3 4];

%% Extracting a Copy of a Subvector
firstThreeSubV = [CollectedData(1) CollectedData(2) CollectedData(3)];
easySubV = CollectedData(1:3);
middleV = CollectedData(3:6);

%% Working on a Subvector within a Vector without Extraction
CollectedData(2:5) = CollectedData(2:5) .* 3;
CollectedData(3:6) = CollectedData(3:6) + lessCollectedData;

