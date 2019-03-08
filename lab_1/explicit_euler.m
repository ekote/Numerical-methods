d = 0.01;
% d = 0.01, 0.005, 0.001
% h = 0.1, 0.01, 0.001
h = 0.1;

% dy/dt = y^2 - y^3 
% y' = y^2 - y^3 

% 0 < t < 2/d
% y(0) = d
% ? E_avg
% ? E_max

% EXPLICIT EULER
% y_{i+1} = y_{i} + hf(t_{i}, y_{i})
% our f is y^2 - y^3

y = zeros(2001,1);

y(1) = d;

for i=2:2001    
    y(i) = y(i-1) + h*(y(i-1)^2 - y(i-1)^3);
end

plot(y)
