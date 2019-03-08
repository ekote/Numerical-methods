clc, clear, close all

% Vectors to work with
firstVector = [1 2 3];
secondVector = [5 4 5];

%% Dot Product
% Multiplying two vectors
dotProductV1 = firstVector * secondVector';
dotProductV2 = dot(firstVector, secondVector);

%% Cross Product
crossProduct = cross(firstVector, secondVector);