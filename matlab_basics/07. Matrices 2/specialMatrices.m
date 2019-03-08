clc, clear, close all

% Data To Work With
someMatrix = [1 2 3; 1 2 3; 6 6 5];

%% Matrices of Ones
% Square Ones Matrix
squareOnesV1 = ones(5);
squareOnesV2 = ones(5, 5);

% Ones Matrix of Different Sizes
threeByFiveOnes = ones(3, 5);
eightByNineOnes = ones(8, 9);

% Ones of The Same Size as Another Matrix
onesOfSameSize = ones(size(someMatrix));

%% Matrices of NonOnes
% V1 Fastest and needs less RAM
desiredNumber = 8;
matrixOfEightsV1 = ones(size(someMatrix)) * desiredNumber;

% Not as fast as V1
matrixOfEightsV2 = desiredNumber(ones(size(someMatrix)));

% Not as fast as V1
matrixOfEightsV3 = ones(size(someMatrix));
matrixOfEightsV3 = matrixOfEightsV3 * desiredNumber;

%% Eye Matrices
% Create an Eye Matrix
diagonalMatrixV1 = eye(5);
diagonalMatrixV2 = eye(3, 6);
diagonalMatrixV3 = eye(size(someMatrix));

% Diagonal Matrix Of NonOnes
diagonalNonOne = eye(size(someMatrix)) * 5;

% Extract The Diagonal Of Another Matrix
newDiagonal = someMatrix .* eye(size(someMatrix));