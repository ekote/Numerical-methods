clc, clear, close all

% Data to work with
firstMatrix = [1 2 3 4; 3 4 5 6; 4 3 5 6;];
vector = [1 2 3 4 5];

%% Length and Size
lengthOfMatrix = length(firstMatrix)
sizeOfMatrix =size(firstMatrix)
sizeOfVector = size(vector)
firstDimSize = size(firstMatrix, 1)
secondDimSize = size(firstMatrix, 2)

%% How many elements in a Matrix
elementsInMatrix = size(firstMatrix, 1) * size(firstMatrix, 2)
elementsInMatrix2 = numel(firstMatrix)