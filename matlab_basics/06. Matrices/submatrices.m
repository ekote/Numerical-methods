clc, clear, close all

% Data to work with
dietTrack = ...
     [123  140  160  145;   % Proteins
	  250  260  280  366;   % Carbs
	   70   65   68   72;   % Fats
 	 1850 1900 2150 1999;]; % Calories

%% Extracting Rows and Columns
% Extracting Rows
carbsDaysOneToFour = dietTrack(2, 1:4)
carbsForAllDays = dietTrack(2, 1:end)
carbsForAllDays2 = dietTrack(2, :)

% Extracting Columns
allNutrientsDayOne = dietTrack(:, 1)
allNutrientsDayFour = dietTrack(:, 4)

%% Extracting Submatrices
carbsFatsDayThreeFour = dietTrack(2:3, 3:4)

%% Selecting Submatrices
dietTrack(2:3, 3:4) = 100
dietTrack(2:3, 3:4) = dietTrack(2:3, 3:4) + 10
