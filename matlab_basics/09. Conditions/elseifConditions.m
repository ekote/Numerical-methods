clc, clear, close all

%% Initial Values
rows = 2;
cols = 2;
matrix = [];
secondMatrix = [];

%% Extracting the Conditions
isSquareMatrix = (rows == cols);
isSizeBetween3and5 = ((rows >= 3) && (rows <= 5));
isVerticalMatrix = (rows < cols);
isHorizontalMatrix = (rows > cols);

%% Nested If/ElseIf/Else Conditions
if (isSquareMatrix && isSizeBetween3and5)
    matrix = ones(rows, cols);
    
    if (numel(matrix) >= 20)
        matrix = matrix * 9;
    end
elseif (~isSquareMatrix)
    matrix = ones(rows, cols) * 2;
    
    if (isVerticalMatrix)
        secondMatrix = ones(rows, cols) * 3;
    
    elseif (isHorizontalMatrix)
        secondMatrix = ones(rows, cols) * 4;
    end
else
    matrix = zeros(rows, cols);
    secondMatrix = zeros(rows, cols);
end

%% Printing the Results
matrix
secondMatrix