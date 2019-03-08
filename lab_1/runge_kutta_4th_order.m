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

% RK4
% k1 = f(t_i, y_i)
% k2 = f(t_i + h/2, h*k_1/2)
% k3 = f(t_i + h/2, h*k_2/2)
% k4 = f(t_i + h, h*k_3)

% y_{i+1} = y_{i} + h/6 * (k1 + 2k2 + 2k3 + k4)


y = zeros(2001,1);

y(1) = d;

for i=2:2001    
	% TODO
end

plot(y)
