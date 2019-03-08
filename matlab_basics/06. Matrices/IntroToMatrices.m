clc, clear, close all

%% Creating a Matrix
dietTrack = ...
     [123  140  160  145;   % Proteins
	  250  260  280  366;   % Carbs
	   70   65   68   72;   % Fats
 	 1850 1900 2150 1999;]; % Calories


%% Extracting elements from a Matrix
carbsDayOne = dietTrack(1,1);
proteinsDayThree = dietTrack(2, 3);
caloriesDayFour = dietTrack(4, 4);