clc, clear, close all

measuredVoltage = [14.2 14.1 14.3 12.6 14.7 12.8 12 12 14.2 14.1 12.7 14.4 12.5 14.2 14.1 12];

%% Logical/Conditional Extraction
% Extraction
lessThanFourteen = measuredVoltage(measuredVoltage < 14);
moreThanFourteen = measuredVoltage(measuredVoltage > 14);
equalToTwelve = measuredVoltage(measuredVoltage == 12);

averageVoltage = sum(measuredVoltage) / length(measuredVoltage)
lessThanAvarage = measuredVoltage(measuredVoltage < sum(measuredVoltage) / length(measuredVoltage))

%% Logical Selection and Manipulation Values
% Selection
measuredVoltage(measuredVoltage < 14) = 14;
measuredVoltage(measuredVoltage < 14) = measuredVoltage(measuredVoltage <= 14) + 2;

%% Multiple Conditions
lowVoltage = measuredVoltage((measuredVoltage >= 12) & (measuredVoltage < 14));