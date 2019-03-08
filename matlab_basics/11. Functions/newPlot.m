function newPlot(x, y, xname, yname, plotname)

plot(x, y, 'b', 'LineWidth', 2, 'Marker', 'o', 'MarkerEdgeColor', 'r')
grid on

xlim([min(x) max(x)])
ylim([min(y) max(y)])

xlabel(xname)
ylabel(yname)
title(plotname)

end