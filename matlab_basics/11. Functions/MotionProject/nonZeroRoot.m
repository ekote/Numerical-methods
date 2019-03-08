function nzr = nonZeroRoot(x0, xV, xA, angle)
    % Find roots of ((a / 2) * t^2) + (v * t^1) + (x * t^0
    xRoots = roots([xA / 2, xV * angle, x0]);
    nzr = xRoots(xRoots ~= 0);
end