clc;
clear;
n = input('Enter the number of terms: ');
t = zeros(1, n);
s = zeros(1, n);
t(1) = 0;
s(1) = t(1);
fprintf('t(1) = %d : sum = %d\n', t(1), s(1));
if n > 1
    t(2) = 1;
    s(2) = s(1) + t(2);
    fprintf('t(2) = %d : sum = %d\n', t(2), s(2));
end
for i = 3:n
    t(i) = t(i-1) + t(i-2);
    s(i) = s(i-1) + t(i);
    fprintf('t(%d) = %d : sum = %d\n', i, t(i), s(i));
end
