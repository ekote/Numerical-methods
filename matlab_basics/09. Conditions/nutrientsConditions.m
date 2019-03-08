clc, clear, close all

%% Initial data
% Data
days = 1:14;
nutrientsForTwoWeeks = [randi([250 350], size(days)); % Carbs
    randi([130 160], size(days));                     % Protein
    randi([50 80], size(days));                       % Fat
    randi([1800 2000], size(days))];                  % Calories

% Base Lines
carbsBaseLine = linspace(300, 300, length(days));
proteinBaseLine = linspace(145, 145, length(days));
fatBaseLine = linspace(65, 65, length(days));
caloriesBaseLine = linspace(1900, 1900, length(days));

%% All data in a single subplot
allAx = subplot(2, 3, [1 4]);
plot(days, nutrientsForTwoWeeks(1, :));

hold on
plot(days, nutrientsForTwoWeeks(2, :))
plot(days, nutrientsForTwoWeeks(3, :))
hold off

allXLabel = xlabel('Days');
allYLabel = ylabel('Intake, [g]');
allTitle = title('2 Weeks Nutritions Intake');
allLegend = legend({'Carbs', 'Protein', 'Fat'});

%% Carbs - Second Subplot
carbsAx = subplot(2, 3, 2);
plot(days, nutrientsForTwoWeeks(1, :))
hold on
plot(days, carbsBaseLine)
hold off

carbsXLabel = xlabel('Days');
carbsYLabel = ylabel('Carbs Intake, [g]');
carbsTitle = title('2 Weeks Carbs Intake');
carbsLegend = legend('Carbs');

%% Protein - Third Subplot
proteinAx = subplot(2, 3, 3);
plot(days, nutrientsForTwoWeeks(2, :))
hold on
plot(days, proteinBaseLine)
hold off

proteinXLabel = xlabel('Days');
proteinYLabel = ylabel('Protein Intake, [g]');
proteinTitle = title('2 Weeks Protein Intake');
proteinLegend = legend('Protein');

%% Fat - Fourth Subplot
fatAx = subplot(2, 3, 5);
plot(days, nutrientsForTwoWeeks(3, :))
hold on
plot(days, fatBaseLine)
hold off

fatXLabel = xlabel('Days');
fatYLabel = ylabel('Fat Intake, [g]');
fatTitle = title('2 Weeks Fat Intake');
fatLegend = legend('Fat');

%% Calories - Fifth Subplot
caloriesAx = subplot(2, 3, 6);
plot(days, nutrientsForTwoWeeks(4, :))
hold on
plot(days, caloriesBaseLine)
hold off


caloriesXLabel = xlabel('Days');
caloriesYLabel = ylabel('Daily Calories, [kcal]');
caloriesTitle = title('2 Weeks Calories Intake');
caloriesLegend = legend('Calories');

%% Properties of the Subplots
ax = [allAx, carbsAx, proteinAx, fatAx, caloriesAx];
axLines = [carbsAx.Children, proteinAx.Children, fatAx.Children, caloriesAx.Children];
baseLines = axLines(1, :);
dataLines = axLines(2, :);
legendsH = [allLegend, carbsLegend, proteinLegend, fatLegend, caloriesLegend];
labelsAndTitles = [allXLabel, allYLabel, allTitle, carbsXLabel, carbsYLabel, carbsTitle, ...
    proteinXLabel, proteinYLabel, proteinTitle, fatXLabel, fatYLabel, fatTitle, ...
    caloriesXLabel, caloriesYLabel, caloriesTitle];

% Properties for Axes
set(ax, 'Xlim', [0 15])
set(ax, 'XGrid', 'on', 'YGrid', 'on')
set(ax, 'XMinorGrid', 'on', 'YMinorGrid', 'on')

% Properties for Data Lines
set(dataLines, 'LineWidth', 2)

% Properties for Base Lines
set(baseLines, 'LineWidth', 2)

% Properties for Labels and Titles
set(labelsAndTitles, 'FontSize', 15)

% Properties for Legends
set(legendsH, 'FontSize', 15)

%% Conditional Properties
checkCarbs = mean(nutrientsForTwoWeeks(1, :)) - mean(carbsBaseLine)
checkProteins = mean(nutrientsForTwoWeeks(2, :)) - mean(proteinBaseLine)
checkFats = mean(nutrientsForTwoWeeks(3, :)) - mean(fatBaseLine)
checkCalories = mean(nutrientsForTwoWeeks(4, :)) - mean(caloriesBaseLine)

lessThanZero = (checkCarbs < 0) && (checkProteins < 0) && (checkFats < 0) && (checkCalories < 0);
equalToZero = (checkCarbs == 0) && (checkProteins == 0) && (checkFats == 0) && (checkCalories == 0);
moreThanZero = (checkCarbs > 0) && (checkProteins > 0) && (checkFats > 0) && (checkCalories > 0);

if (lessThanZero)
    set(dataLines, 'Color', 'g')
elseif (equalToZero)
    set(dataLines, 'Color', 'y')
elseif (moreThanZero)
    set(dataLines, 'Color', 'r')
else
    switch(sign(checkCarbs))
        case -1
            set(dataLines(1), 'Color', 'g')
            set(baseLines(1), 'Color', 'b')
        case 0
            set(dataLines(1), 'Color', 'y')
            set(baseLines(1), 'Color', 'b')
        case 1
            set(dataLines(1), 'Color', 'r')
            set(baseLines(1), 'Color', 'b')
        otherwise
    end
    
    switch(sign(checkProteins))
        case -1
            set(dataLines(2), 'Color', 'g')
            set(baseLines(2), 'Color', 'b')
        case 0
            set(dataLines(2), 'Color', 'y')
            set(baseLines(2), 'Color', 'b')
        case 1
            set(dataLines(2), 'Color', 'r')
            set(baseLines(2), 'Color', 'b')
        otherwise
    end
    
    switch(sign(checkFats))
        case -1
            set(dataLines(3), 'Color', 'g')
            set(baseLines(3), 'Color', 'b')
        case 0
            set(dataLines(3), 'Color', 'y')
            set(baseLines(3), 'Color', 'b')
        case 1
            set(dataLines(3), 'Color', 'r')
            set(baseLines(3), 'Color', 'b')
        otherwise
    end
    
    switch(sign(checkCalories))
        case -1
            set(dataLines(4), 'Color', 'g')
            set(baseLines(4), 'Color', 'b')
        case 0
            set(dataLines(4), 'Color', 'y')
            set(baseLines(4), 'Color', 'b')
        case 1
            set(dataLines(4), 'Color', 'r')
            set(baseLines(4), 'Color', 'b')
        otherwise
    end
end













