clc, clear, close all

%% Initial Conditions
angle = pi / 3;
vX = 10;
vY = 20;
aY = -9.8;
t = 0:0.01:4.5;

% Calculate X and Y
x = vX * t;
y = vY * t + (aY * t.^2) / 2;

% Variables for the Loop
reachedYZero = false;
i = 1;

%% Calculate The X and Y Points in Space
plot(0, 0)
hold on

while (~reachedYZero)
    plot(x(i), y(i), 'or', 'LineWidth', 2)
    
    i = i + 1;
    
    if (y(i) < 0.1)
        plot(x(i), y(i), 'or', 'LineWidth', 2)
        reachedYZero = true;
    end
end

%% Final Plot and Removing Redundant Values
x(i + 1:end) = [];
y(i + 1:end) = [];

plot(x, y, 'b', 'LineWidth', 2)
grid on
grid minor