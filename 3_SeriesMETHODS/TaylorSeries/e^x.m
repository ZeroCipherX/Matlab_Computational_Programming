clc;
clear;

tol = input('Enter tolerance (Es): ');
x = input('Enter the value of x: ');

fprintf('\nS.no\t Terms\t\t Sum\t\t Aerror\t\t Terror\n');
fprintf('---------------------------------------------------------\n');

t(1) = 1;
s(1) = t(1);
n = 1;
terror = abs(exp(x) - s(1));
aerror = tol + 1;
fprintf('%d\t %.6f\t %.6f\t %.6f\t %.6f\n', n, t(1), s(1), aerror, terror);

while aerror > tol
    n = n + 1;
    t(n) = (x^(n - 1)) / factorial(n - 1);
    s(n) = s(n - 1) + t(n);
    aerror = abs(s(n) - s(n - 1));
    terror = abs(exp(x) - s(n));
    fprintf('%d\t %.6f\t %.6f\t %.6f\t %.6f\n', n, t(n), s(n), aerror, terror);
end

fprintf('\nFinal sum = %.6f, True error = %.6f\n', s(n), terror);

% Plotting
figure;
n_vals = 1:n;
plot(n_vals, s, 'b-o', 'LineWidth', 1.5);
xlabel('Number of Terms');
ylabel('Sum (Approximation)');
title('Taylor Series Approximation for e^x');
grid on;
