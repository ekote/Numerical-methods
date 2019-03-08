 d = 0.01;
 a = 1/d - 1; 

 % starting from 1
 % 2/0.01 = 200
 M = zeros(2/d + 1, 1);
 
 for t = 1:(2/d +1)
    M(t, 1) = 1/(lambertw(a*exp(a - t)) + 1);
 end
 
plot(M)
