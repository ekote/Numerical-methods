%% Relational Operators
lessThan = 1 < 2;
greaterThan = 1 > 2;
equalTo = 1 == 2;
greaterThanOrEqualTo = 1 >= 2;
lessThanOrEqualTo = 1 <= 2;
notEqualTo = 1 ~= 2;
equalTo = 1 == 1;
notEqualTo = 1 ~= 1;
lessThanOrEqualTo = 1 <= 1;

firstRadius = 2;
secondRadius = 5;

lessThan = firstRadius < secondRadius;
greaterThan = firstRadius > secondRadius;
%% Sign and Absolute
% sign
sign(5)
sign(-5)
sign(1)
sign(-6777)

% abs
abs(5)
abs(8)
abs(-8)
abs(-55)

%% Roots, GCD, LCM
% roots 
roots([1 3 -2 4])
roots([1 0 -1])
roots([1 0 0 2])
roots([1 0 1 0 -1])

% gcd
gcd(6, 2)
gcd([2 4 6 15], 2)
gcd([5 6 7], [2 3 4])

% lcm
lcm(9, 27)
lcm([3 5 8 15], 4)
lcm([5 6 7], [2 3 4])

%% Permutations and Prime Numbers
% Permutations
perms([2 3])
perms([2 3 4])
perms([2 3 5 1 7])
perms([1 2 3 4 5 6])

% Combinations
combnk([2 3], 1)
combnk([2 3], 2)
combnk([2 3 4 5 6 7], 2)
combnk([2 3 4 5 6 7], 3)
combnk([2 3 4 5 6 7], 5)

% Get Prime Numbers
primes(10)
primes(100)
primes(28)

% Check if a number is prime number

isPrime(4)
isPrime(5)
isPrime(67280421310721)