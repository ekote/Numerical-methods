clc, clear, close all

% Vectors to work with
firstVector = [2 4 5 6 1 2 3 4];
smallVector = [3 4 5 2];

%% Length of a Vector
length(firstVector);
length(smallVector);

%% Sum of a Vector
sum(firstVector);
sum(smallVector);

%% Average Value in a Vector
avrg = sum(firstVector) / length(firstVector);

%% Select Subvector Based on Length of Smaller Vector
add = firstVector(1:length(smallVector)) + smallVector;
startIndex = 3;
endIndex = length(smallVector) + startIndex - 1;
firstVector(startIndex:endIndex) = firstVector(startIndex:endIndex) + smallVector;