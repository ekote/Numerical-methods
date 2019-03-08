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

% HEUN

% y_{i+1} = y_{i} + h*( f(t_i, y_i) +  f(t_i+1, y_i + h * f(t_i, y_i) ) ) /2
% 

y = zeros(2001,1);
y(1) = d;

for i=2:2001    
	% TODO implement equation    
end

plot(y)
