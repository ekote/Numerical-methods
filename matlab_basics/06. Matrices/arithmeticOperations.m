clc, clear, close all

% Data To Work With
dietTrackW1 = ...
     [123  140  160  145;  % Proteins
	  250  260  280  366;  % Carbs
	   70   65   68   72;  % Fats
 	 1850 1900 2150 1999]; % Calories


dietTrackW2 = ...
     [135  142  155  144;  % Proteins
	  243  255  297  344;  % Carbs
	   70   77   61   50;  % Fats
 	 1850 1950 2100 1750]; % Calories

%% Arithmetic Operations
totalForTwoWeeks = dietTrackW1 + dietTrackW2;
difference = dietTrackW1 - dietTrackW2;

increaseByTenPerc = totalForTwoWeeks .* 1.1;
decreaseByTenPerc = totalForTwoWeeks - (totalForTwoWeeks .* 0.1);

averageForEachDay = totalForTwoWeeks ./ 2;

%% Matrix Multiplication
% Data to work with
firstMatrix = [1 2 3 4; 3 4 5 6; 4 3 5 6;];
secondMatrix = [1 2 3; 1 2 4; 4 3 4; 5 4 3;];

% Multiplication
squareMatrixMultiplication = dietTrackW1 * dietTrackW2;
multiplication = firstMatrix * secondMatrix;