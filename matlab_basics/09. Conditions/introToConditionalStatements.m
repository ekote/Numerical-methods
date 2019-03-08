clc, clear, close all

%% True or False
a = 3;
b = 4;
c = 0;

if true
    c = sqrt(a^2 + b^2)
end

if false
    c = sqrt(a^2 + b^2)
end

%% Relational Operator and NOT
a = 0;
b = 4;

if (a == 0)
    a = sqrt(c^2 - b^2)
end

if (b ~= 0)
    b = sqrt(c^2 - a^2)
end

if (c <= 0)
    c = sqrt(a^2 + b^2)
end

%% Test for size equality and then concatenate
aV = [1 3 2; 2 3 3; 2 4 3];
bV = [2 3 3; 2 3 3; 3 2 3; 3 3 4];

% Horizontal Concatenation
if (size(aV, 1) == size(bV, 1))
    aV = [aV bV]
end

% Vertical Conatenation
if (size(aV, 2) == size(bV, 2))
    aV = [aV; bV]
end

%% Check if a number is Even or Odd
number = randi([1 100], 1, 1)

if (rem(number, 2) == 0)
    disp('The number is even')
else
    disp('The number is odd')
end

%% OR, NOR - Generating a Zeros Matrix
firstDimension = 2;
secondDimension = 5;
matrix = [];

% OR - If EITHER of the two conditions IS true, execute the code
if ((firstDimension == 3) || (secondDimension == 5))
    matrix = zeros(firstDimension, secondDimension)
end

% NOR - If BOTH conditions are NOT true, execute the code
if ~((firstDimension == 3) || (secondDimension == 5))
    matrix = zeros(secondDimension, firstDimension)
end

%% AND, NAND - Check for a value in a given range
number = randi([1 100], 1, 1)

% AND - If BOTH conditions are TRUE, execute the code
if ((number >= 20) && (number <= 40))
    numberTimesPi = number * pi
else
    numberDividedByPi = number / pi
end

% NAND - If AT LEAST ONE condition is FALSE, execute the code
if ~((number >= 20) && (number <= 40))
    disp('The number is within the required range')
else
    disp('The number is not within the required range')
end
