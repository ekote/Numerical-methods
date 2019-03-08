clc, clear, close all

% Vectors to work with
firstVector = [2 4 5 6 1 2 3 4];
secondVector = [3 4 5 2];
thirdVector = [8 5 6 5 3];

%% Concatenating Vectors
% Concatenating two vectors
mainVector = [1 5 34 3];
mainVector = [firstVector secondVector];

% Concatenating three or more vectors
mainVector = [1 5 34 3];
mainVector = [firstVector secondVector thirdVector];

%% Appending values or vectors to the same vector
% Appending vector to a vector
mainVector = [1 5 34 3];
mainVector = [mainVector firstVector];

firstVector = [firstVector secondVector thirdVector];

% Appending values to a vector
mainVector = [1 5 34 3];
mainVector = [mainVector 1];