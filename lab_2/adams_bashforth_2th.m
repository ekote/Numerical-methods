
h = 0.2;
d = 1;

% x' = 1 - tx

x = zeros(26,1);
t = zeros(26,1);
x(1) = d;
t(1) = 0.0;

for i = 2:26
    x(i) = x(i-1) + h*(3/2 *(1 - t(i-1) * x(i-1)) - 1/2* (1 - t(i-1) * x(i-1)));
    t(i) = t(i-1) + 0.2;
end

plot(x)