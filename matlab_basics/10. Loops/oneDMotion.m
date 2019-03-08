clc, clear, close all
% x(t) = x0 + vx * t + (ax * t^2) / 2
% y(t) = y0 + vy * t + (ay * t^2) / 2

%% Initial Conditions
angle = pi / 3;
vX = 10;
vY = 20;
aY = -9.8;
t = 0:0.1:4.5;

x = zeros(size(t));
y = zeros(size(t));

%% Calculate The X and Y Points in Space
for i = 1:length(t)
    x(i) = vX * t(i);
    y(i) = vY * t(i) + (aY * t(i)^2) / 2;
end

%% Calculate The X and Y Points in Space Without a Loop
% x1 = vX * t;
% y1 = vY * t + ((aY * (t.^2)) / 2);

%% Visualize the Results
plot(x, y, 'g', 'LineWidth', 2)
grid on
grid minor