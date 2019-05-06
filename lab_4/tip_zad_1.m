function dy = f(x,y)
	dy = [y(2)
	2*y(1)+2*exp(x)*sin(x)+6*exp(x)*cos(x)]; %obliczanie pochodnej
end
function d2y=fun(a)
	d2y=exp(a).*sin(a)-2*exp(a).*cos(a)+3*a ;%funkcja analityczna
end
