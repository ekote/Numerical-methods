clc, clear, close all

%% Initial Equations
% Pythagorean Theorem
% c^2 = a^2 + b^2
% a^2 = c^2 - b^2
% b^2 = c^2 - a^2

% Derived Equations
% a = sqrt(c^2 - b^2)
% b = sqrt(c^2 - b^2)
% c = sqrt(a^2 + b^2)

%% Initial Values
a = 3;
b = 4;
c = 0;

%% Equations
% Add or Remove a % infront of the equations to turn them On or Off

% a = sqrt(c^2 - b^2)
% b = sqrt(c^2 - a^2)
c = sqrt(a^2 + b^2)
