function [difference, hotter] = differenceInTemperatures(temps1, temps2)

if (((size(temps1, 1) > 1) && (size(temps1, 2) > 1)))
    error('temps1 is a matrix! We need a vector!')
elseif (((size(temps2, 1) > 1) && (size(temps2, 2) > 1)))
    error('temps2 is a matrix! We need a vector!')
elseif (size(temps1, 2) == 1)
    error('We need Row Vectors! temps1 is a column!')
elseif (size(temps2, 2) == 1)
    error('We Need Row Vectors! temps2 is a column!')
elseif (length(temps1) ~= length(temps2))
    error('This Function Requires Vectors of The Same Size')
end

difference = temps1 - temps2;

hotter = zeros(size(difference));

for i = 1:length(difference)
    if difference(i) > 0
        hotter(i) = 1;
    elseif difference(i) == 0
        hotter(i) = 2;
    else
        return
    end
end


% Some other code
end