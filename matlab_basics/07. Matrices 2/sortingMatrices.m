clc, clear, close all

% Data To Work With
someMatrix = [1 2 4 5 6 3; 1 3 4 5 2 3; 6 7 8 2 6 5; 1 3 5 4 2 3; 1 3 4 5 2 3;]

%% Sorting By Dimensions
sortByCols = sort(someMatrix)
sortByRows = sort(someMatrix, 2)

%% Sorting in Descending Order
sortByColsDesc = sort(someMatrix, 'descend')
sortByRowsDesc = sort(someMatrix, 2, 'descend')

