clc, clear, close all

%% Simple For Loop
for i = 1:5
    i;
end

n = 1:5;

n(1);
n(2);
n(3);
n(4);
n(5);

%% Modify a Part of a Vector
v1 = 1:20;

for i = 1:(length(v1) / 2)
    v1(i) = v1(i) + 1;
end

%% Non Loop Equivalent
v2 = 1:20;

v2(1:(length(v2) / 2)) = v2(1:(length(v2) / 2)) + 1;

isequal(v1, v2)