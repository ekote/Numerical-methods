clc, clear, close all

% Vectors to work with
myFirstVector = [4 5 6 7 8 8];

%% Vectors Intro, Indexing
myFirstVector(1)
myFirstVector(2)
myFirstVector(5)

%% Generating Vectors with Steps
% Intro
oneToTenVector = [1 2 3 4 5 6 7 8 9 10];
easyOneToThou = 1:1000;
easyVector2 = -10:8;

% With extracted variables for easy manipulation
start1 = 4;
step = 2;
ending1 = 50;
stepVector = start1:step:ending1;
 
%% Generating Vectors with Points
% Intro
pointsVector1 = linspace(1, 10, 2);
pointsVector2 = linspace(10, 100, 30);

% With extracted variables for easy manipulation
start2 = -10;
ending2 = 10;
pointsInBetween = 40;
pointsVector = linspace(start2, ending2, pointsInBetween);