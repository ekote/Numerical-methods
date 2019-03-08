clc, clear, close all

someVector = [1 3 3 0 0 2 3 4 5 6 7 8];
zeroVector = [0 0 0 0 0]
%% Find non-zero element indexes
find(someVector)
find(someVector, 4)

%% Find zero element indexes
find(~someVector)
find(~someVector, 1)

%% Get the values of non-zero elements
someVector(find(someVector))
someVector(find(someVector, 3))

%% Any Zeros?
any(someVector)
any(zeroVector)