clc, clear, close all

% Data To Work With
someMatrix = [1 2 4 5 6 3; 1 3 4 5 2 3; 6 7 8 2 6 5; 2 3 5 3 2 3; 8 3 6 5 -3 3; -1 3 7 5 2 3;];

%% Sum of Diagonal
sumOfDiag = trace(someMatrix);
sumOfDiagShifted = sum(diag(someMatrix, 2));

%% Rank
rankOfMatrix = rank(someMatrix);

%% Determinant
detOfMatrix = det(someMatrix);

%% Inverse Matrix
inverseMatrix = inv(someMatrix);