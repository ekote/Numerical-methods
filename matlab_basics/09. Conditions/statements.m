clc, clear, close all

number = 103;

rows = 8;
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
