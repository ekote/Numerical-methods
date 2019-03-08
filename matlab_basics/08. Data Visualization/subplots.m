clc, clear, close all

%% Data: Voltages, Resistances and Currents
U = -10:20;

R1 = 10;
R2 = 20;
R3 = 30;

I1 = U / R1;
I2 = U / R2;
I3 = U / R3;

%% First Subplot
subplot(2, 2, [1 3])
plot(U, I1, 'b', 'LineStyle', '-.', 'LineWidth', 2, 'Marker', '+', 'MarkerEdgeColor', 'r')
grid on
grid minor

xlabel('Voltage, [V]', 'FontSize', 16, 'FontWeight', 'Bold', 'Color', 'r')
ylabel('Current, [A]', 'FontSize', 16, 'FontWeight', 'Bold', 'Color', 'b')

xLimMin = min(U) - (max(U) * 0.1);
xLimMax = max(U) + (max(U) * 0.1);
yLimMin = min(I1) - (max(I1) * 0.1);
yLimMax = max(I1) + (max(I1) * 0.1);

xlim([xLimMin xLimMax])
ylim([yLimMin yLimMax])

firstLegend = legend('R_1 = 10 [\Omega]');
set(firstLegend, 'FontSize', 15)
set(firstLegend, 'FontWeight', 'bold')
set(firstLegend, 'TextColor', 'b')
set(firstLegend, 'Location', 'northwest')
set(firstLegend, 'Orientation', 'vertical')
set(firstLegend, 'Box', 'off')

title('Change in Current for R_1', ...
    'FontSize', 15, ...
    'FontWeight', 'bold', ...
    'Color', 'k')

%% Second Subplot
subplot(2, 2, 2)
plot(U, I2, 'g', 'LineStyle', '--', 'LineWidth', 2, 'Marker', '*', 'MarkerEdgeColor', 'b')
grid on
grid minor

xlabel('Voltage, [V]', 'FontSize', 16, 'FontWeight', 'Bold', 'Color', 'r')
ylabel('Current, [A]', 'FontSize', 16, 'FontWeight', 'Bold', 'Color', 'b')

xLimMin = min(U) - (max(U) * 0.1);
xLimMax = max(U) + (max(U) * 0.1);
yLimMin = min(I2) - (max(I2) * 0.1);
yLimMax = max(I2) + (max(I2) * 0.1);

xlim([xLimMin xLimMax])
ylim([yLimMin yLimMax])

secondLegend = legend('R_2 = 20 [\Omega]');
set(secondLegend, 'FontSize', 15)
set(secondLegend, 'FontWeight', 'bold')
set(secondLegend, 'TextColor', 'b')
set(secondLegend, 'Location', 'northwest')
set(secondLegend, 'Orientation', 'vertical')
set(secondLegend, 'Box', 'off')

title('Change in Current for R_2', ...
    'FontSize', 15, ...
    'FontWeight', 'bold', ...
    'Color', 'k')

%% Third Subplot
subplot(2, 2, 4)
plot(U, I3, 'r', 'LineStyle', '-', 'LineWidth', 2, 'Marker', '^', 'MarkerEdgeColor', 'g')
grid on
grid minor

xlabel('Voltage, [V]', 'FontSize', 16, 'FontWeight', 'Bold', 'Color', 'r')
ylabel('Current, [A]', 'FontSize', 16, 'FontWeight', 'Bold', 'Color', 'b')

xLimMin = min(U) - (max(U) * 0.1);
xLimMax = max(U) + (max(U) * 0.1);
yLimMin = min(I3) - (max(I3) * 0.1);
yLimMax = max(I3) + (max(I3) * 0.1);

xlim([xLimMin xLimMax])
ylim([yLimMin yLimMax])

thirdLegend = legend('R_3 = 30 [\Omega]');
set(thirdLegend, 'FontSize', 15)
set(thirdLegend, 'FontWeight', 'bold')
set(thirdLegend, 'TextColor', 'b')
set(thirdLegend, 'Location', 'northwest')
set(thirdLegend, 'Orientation', 'vertical')
set(thirdLegend, 'Box', 'off')


title('Change in Current for R_3', ...
    'FontSize', 15, ...
    'FontWeight', 'bold', ...
    'Color', 'k')