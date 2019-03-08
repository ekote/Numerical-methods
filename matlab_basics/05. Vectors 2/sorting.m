clc, clear, close all

someVector = [3 2 4 1 -5 7 6 8];

%% Sorting Vectors
sort(someVector)

%% Descending Sort
sort(someVector, 'descend')

%% Sort a subvector in a vector
someVector(1:3) = sort(someVector(1:3))
someVector(4:7) = sort(someVector(4:7))