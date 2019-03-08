function setupPlot(xMin, xMax, yMin, yMax)
plot(0, 0)
hold on
grid on
grid minor

% Labels and Titles
xlabel('Distance, [m]', 'FontSize', 13)
ylabel('Height, [m]', 'FontSize', 13)
title('2D Motion of a Point in Space', 'FontSize', 15)

xLimits = [min(xMin) max(xMax)];
yLimits = [min(yMin) max(yMax)];

xlim(xLimits)
ylim(yLimits)

% Black line y = 0
plot(xLimits, [0 0], 'k', 'LineWidth', 2)

% Black line x = 0
plot([0 0], yLimits, 'k', 'LineWidth', 2)


end