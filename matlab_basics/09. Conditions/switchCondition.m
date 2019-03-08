clc, clear, close all

number = 55;
secondNumber = 20

%% Simple Switch
switch (number)
    case 99
        number + 5
    case 100
        number + 1
    case 101
        number + 2
    case 102
        number + 3
    otherwise
        number
end

%% Comparing Switch with If/ElseIf/Else
if (number == 99)
    number + 1
elseif (number == 100)
    number + 2
elseif (number == 101)
    number + 3
elseif (number == 102)
    number + 4
else
    number
end

%% Switching on the rows of Matrix and generating it
rows = 2;
matrix = [];

switch (rows)
    case 3
        matrix = ones(rows) * 3
    case 4
        matrix = ones(rows) * 4
    case 5
        matrix = ones(rows) * 5
    case 6
        matrix = ones(rows) * 6
    otherwise
        matrix = zeros(rows)
end
