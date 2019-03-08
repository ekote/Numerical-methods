clc, clear, close all

% Data To Work With
someMatrix = [1 2 3; 1 2 3; 6 6 5];

%% Zero Matrices
diagonalMatrixV1 = zeros(5);
diagonalMatrixV2 = zeros(3, 6);
diagonalMatrixV3 = zeros(size(someMatrix));

%% Speed up your code! Preallocate Memory, Examples and Proof
clear, clc, close all

% Be careful with the iterations, big matrices may freeze your PC.
iterations = 3000;
tic
a = zeros(iterations, iterations);

for i = 1:iterations
    for j = 1:iterations
        a(i, j) = j^2;
    end
end
toc

clear
iterations = 3000;
tic
for i = 1:iterations
    for j = 1:iterations
        a(i, j) = j^2;
        %[i j]
    end
end
toc



