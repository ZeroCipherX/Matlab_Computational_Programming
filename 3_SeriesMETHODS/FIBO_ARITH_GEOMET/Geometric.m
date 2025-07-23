clc;
clear;
a = input('Enter first term a: ');
r = input('Enter common ratio r: ');
n = input('Enter No. of terms n: ');
t = zeros(1, n);
s = zeros(1, n);
t(1) = a;
s(1) = t(1);
fprintf('t(1) = %d : sum = %d\n', t(1), s(1));
for i = 2:n
    t(i) = t(i-1) * r;
    s(i) = s(i-1) + t(i);
    fprintf('t(%d) = %d : sum = %d\n', i, t(i), s(i));
end
