%% Simple example
number = 0;
counter = 0;

while (number ~= 50)
    number = randi([10 60], 1, 1);
    counter = counter + 1;
    
    if (counter >= 10)
        break
    end
end

number
counter