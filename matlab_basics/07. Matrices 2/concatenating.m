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

 
%% Concatenating Matrices Horizontally
mainDietMatrix = [dietTrackW1 dietTrackW2];
mainDietMatrixW1W2H = [dietTrackW1 dietTrackW2];
mainDietMatrixW2W1 = [dietTrackW2 dietTrackW1];

%% Concatenating Vertically
addFibersIntake = [30 40 30 35 40 30 37 36];
concatHorAndVert = [dietTrackW1 dietTrackW2; addFibersIntake];
mainDietMatrixW1W2VV1 = [mainDietMatrix; addFibersIntake];
mainDietMatrixW1W2VV2 = [addFibersIntake; mainDietMatrix];