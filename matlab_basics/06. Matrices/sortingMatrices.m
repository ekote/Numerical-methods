clc, clear, close all

% Data To Work With
someMatrix = [1 2 4 5 6 3; 1 3 4 5 2 3; 6 7 8 2 6 5; 1 3 5 4 2 3; 1 3 4 5 2 3;];

sortingByCols = sort(someMatrix)
sortingByRows = sort(someMatrix, 2)

sortByColsDesc = sort(someMatrix, 'descend')
sortByRowsDesc = sort(someMatrix, 2, 'descend')