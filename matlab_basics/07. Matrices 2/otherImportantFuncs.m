clc, clear, close all

% Data To Work With
someMatrix = [1 2 4 5 6 3; 1 3 4 5 2 3; 6 7 8 2 6 5; 1 3 5 4 2 3; 1 3 4 5 2 3;]

%% Triangle Matrices Upper and Lower
% Upper Triangle
upperTriangle = triu(someMatrix);
upperTriangleShifted = triu(someMatrix, 2);

% Lower Triangle
lowerTriangle = tril(someMatrix);
lowerTriangleShifted = tril(someMatrix, 2);

%% Unique Elements and Rows
% Get All Unique Elements
allUniqueElements = unique(someMatrix);

% Get All Unique Rows
allUniqueRows = unique(someMatrix, 'rows');


%% Is This Element or Row a Member Of The Matrix
isFiveAMember = ismember(5, someMatrix);
isOneHundredAMember = ismember(100, someMatrix);
isTheVectorAMember = ismember([1 2 4 5 6 3], someMatrix, 'rows');

%% Shifting Matrices
shiftDown = circshift(someMatrix, 2);
shiftUp = circshift(someMatrix, -1);
shiftRight = circshift(someMatrix, 2, 2);
shiftLeft = circshift(someMatrix, -1, 2);