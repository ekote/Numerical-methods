clc, clear, close all

%% Random Vector Floating Point, Specific Range
fpVector = rand(1, 10);

fpStart = 5;
fpEnding = 25;
fpNumOfNumbers = 17;
fpSpecificRange = fpStart + (fpEnding - fpStart) * rand(1, fpNumOfNumbers);

%% Random Vector Integers, Specific Range
iVector = randi(7, 1, 10);

iStart = 6;
iEnding = 27;
iNumOfNumbers = 10;
iSpecificRange = iEnding - randi(iStart, 1, iNumOfNumbers);

%% Random Vector FP, Non Repeating, Specific Range
noRepVector = randperm(20, 10);

noRepStart = 6;
noRepEnding = 27;
noRepNumOfNumbers = 10;

noRepSpecificRange = noRepStart + randperm(noRepEnding - noRepStart, 5);