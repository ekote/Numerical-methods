function x = calculateOneDMotion(x0, xV, xA, angle, t)
% x(t) = x0 + vx * t + (ax * t^2) / 2

x = x0 + (xV * t * angle) + ((xA * t.^2) / 2);

end