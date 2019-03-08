clc, clear, close all

rows = 4;
cols = 4;
matrix = [];

if ((rows == cols) && (rows >= 3))
    matrix = ones(rows, cols);
    
    if (numel(matrix) >= 20)
        matrix = matrix * 9;
    end
end

matrix