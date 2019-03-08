clc, clear, close all

tempsWeekOne = randi([28 34], 1, 7);
tempsWeekTwo = randi([28 29], 1, 7);


average(tempsWeekOne)
sumFunction(tempsWeekOne)
newPlot(1:length(tempsWeekOne), tempsWeekOne, 'Days', 'Temperature', 'Temperatures for 1 Week')
[diffInTemps, whichIsHotter] = differenceInTemperatures(tempsWeekOne, tempsWeekTwo)