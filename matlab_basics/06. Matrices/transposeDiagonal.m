clc, clear, close all

% Data to work with
firstMatrix = [1 2 3 4; 3 4 5 6; 4 3 5 6;];
secondMatrix = [1 2 3 4; 1 2 4 2; 4 3 4 3;];
squareMatrix = [1 4 5; 3 4 2; 4 4 4;];
nonSquareMatrix = [1 4 5 6; 5 3 4 5; 6 5 3 4;];
vector = [4 4 2 3 4 5];

%% Transposing and Multiplication
secondMatrix'
multiplication = firstMatrix * secondMatrix'

%% Take the diagonal of a matrix
% Square Matrix
diagOfSqrtMatrix = diag(squareMatrix)

% Non Square Matrix
diagOfNonSqrtMatrix = diag(nonSquareMatrix)

% Shift the Diagonal
shiftedSqrtDiagonalUp = diag(squareMatrix, 1)
shiftedSqrtDiagonalDown = diag(squareMatrix, -1)
shiftedNonSqrtDiagonalUp = diag(nonSquareMatrix, 1)
shiftedNonSqrtDiagonalDown = diag(nonSquareMatrix, -2)

%% Create a diagonal matrix from a Vector
diagonalMatrix = diag(vector)