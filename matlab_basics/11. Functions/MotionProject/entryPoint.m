clc, clear, close all
% x(t) = x0 + vx * t + (ax * t^2) / 2
% y(t) = y0 + vy * t + (ay * t^2) / 2

%% Setup
% Initial Conditions
angle = pi / 4;                % Initial Angle, [rad]
x0 = 0;                        % Initial X Position, [m]
xV = 1:1:10;                   % Velocities on the X Axis, [m/s]
xA = 0;                        % Initial Acceleration on the X axis, [m/s^2]
xAngle = cos(angle);           % The X Component of the Angle
y0 = 0;                        % Initial Y Position, [m]
yV = 15:1:24;                  % Velocities on the Y Axis, [m/s]
yA = -9.8;                     % Initial Acceleration on the Y Axis, [m/s^2]
yAngle = sin(angle);           % The Y Component of The Angle
positionsOfThePoint = 50;      % How many points to be calculated during the motion

%% Preallocation of x, y, t vectors
x = zeros(length(xV), positionsOfThePoint);
y = zeros(size(x));
t = zeros(size(x));

%% Generating Time Vectors
for i = 1:length(yV)
    % Find roots of ((a / 2) * t^2) + (v * t^1) + (x * t^0) for Y
    % Roots of Y show us where the motion starts and ends on the "surface"
    % level
    nonZeroYRoot = nonZeroRoot(y0, yV(i), yA, yAngle);

    % Creating a time vector with linearly spaced values, between the two roots
    % of Y equation, so that we start and end on "the surface"
    t(i, :) = linspace(0, nonZeroYRoot, positionsOfThePoint);
end

%% Plot Setup and Customizations
xMax = zeros(size(xV));
yMax = zeros(size(xV));
xMin = zeros(size(xV));
yMin = zeros(size(xV));

for i = 1:length(xV)
    yMax(i) = (yV(i) * t(i, end / 2) * yAngle + (yA * t(i, end / 2)^2) / 2) * 1.1;
    xMax(i) = (xV(i) * t(i, end) * xAngle) * 1.1;
    yMin(i) = yV(i) * t(i, 1) * yAngle + (yA * t(i, 1) ^ 2 / 2) - yMax(i) * 0.1;
    xMin(i) = xV(i) * t(i, 1) * xAngle - xMax(i) * 0.1;
end

setupPlot(xMin, xMax, yMin, yMax)

%% Calculating and Plotting
for i = 1:length(xV)
    x(i, :) = calculateOneDMotion(x0, xV(i), xA, xAngle, t(i, :));
    y(i, :) = calculateOneDMotion(y0, yV(i), yA, yAngle, t(i, :));
    
    for j = 1:(positionsOfThePoint - 1)
        plot([x(i, j) x(i, j + 1)], [y(i, j) y(i, j + 1)], 'r')
        pause(0.05)
    end
    
    plot(x(i, :), y(i, :), 'LineWidth', 2)
end
