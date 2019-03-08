clc, clear, close all

% Vectors to work with
firstVector = [1 2 3 4];
secondVector = [1 2 3 4];

%% Basic Arithmetic Operations between Vectors
% Addition and Subtraction

addition = firstVector + secondVector;
subtraction = firstVector - secondVector;

%% Arithmetic Operations between Vector and Number
% Intro, addition, subtraction, multiplication, division, powering
addWithNum = firstVector + 5;
subWithNum = firstVector - 3;
multWithNum = firstVector * 10;
divWithNum = firstVector / 8;
sqrtOfVector = sqrt(firstVector);

%% Proteins Example
recommendedProteinIntake = 150;
proteinWeekOne = [100 120 175 134 143 176 150];

difference = recommendedProteinIntake - proteinWeekOne;

plot(1:7, zeros(1, 7))
hold on
plot(difference)

%% Element by Element Operations between Vectors
% Multiplication, Division, Powering
elByElMulti = firstVector .* secondVector;
elByElDiv = firstVector ./ secondVector;
elByElPow = firstVector .^ secondVector;
elByElPowWithNum = firstVector .^ 3;