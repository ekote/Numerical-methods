clc, clear, close all

% Data To Work With
dietTrack = ...
     [123  140  160  145;   % Proteins
	  250  260  280  366;   % Carbs
	   70   65   68   72;   % Fats
 	 1850 1900 2150 1999;]; % Calories
 
%% Logical Extraction
overTheCaloriesLimit = dietTrack(:, dietTrack(4, :) > 2000);
bellowTheCaloriesLimit = dietTrack(:, dietTrack(4, :) < 2000);
specificDayRange = dietTrack(:, dietTrack(4, 2:3) < 2000);

%% Logical Indexes
bellowTheCaloriesLimit2 = find(dietTrack(4, :) < 2000);

%% Logical Selection
rowsToExtract = [1 3];
colsToExtract = dietTrack(2, :) < 290;

extractedData = dietTrack(rowsToExtract, colsToExtract)
extractedData = extractedData(:, 2:3)