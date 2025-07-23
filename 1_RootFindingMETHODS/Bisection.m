% Bisection Method
clc; clear;

fprintf('Enter the function in terms of x (e.g., x^3 - x - 2):\n');
func_str = input('f(x) = ', 's');
f = str2func(['@(x)', func_str]);

a = input('Enter the lower bound (a): ');
b = input('Enter the upper bound (b): ');
tolerance = input('Enter the tolerance: ');
max_iterations = input('Enter the maximum iterations: ');

if f(a) * f(b) > 0
    error('The function must have opposite signs at the endpoints.');
end

fprintf('\nIter\t a\t\t b\t\t c\t\t f(c)\t\t Error\n');
fprintf('-----------------------------------------------------------------\n');

x_vals = linspace(a, b, 100);
y_vals = arrayfun(f, x_vals); 
root_approximations = [];

for iteration = 1:max_iterations
    c = (a + b) / 2;
    fc = f(c);
    error = abs(b - a) / 2;
    root_approximations = [root_approximations, c];
    
    fprintf('%d\t %.6f\t %.6f\t %.6f\t %.6f\t %.6f\n', iteration, a, b, c, fc, error);

    if abs(fc) < tolerance || error < tolerance
        break;
    end

    if f(a) * fc < 0
        b = c;
    else
        a = c;
    end
end

fprintf('\nRoot found at: %.6f\n', c);

% Plotting
figure;
plot(x_vals, y_vals, 'b-', 'LineWidth', 1.5); hold on;  % Plot the function f(x)
plot(root_approximations, f(root_approximations), 'ro-', 'MarkerSize', 5, 'LineWidth', 1.5);  % Plot the midpoints (root approximations)
xlabel('x');
ylabel('f(x)');
title('Bisection Method: 2D Plot of f(x) and Root Approximations');


legend(['f(x) = ', func_str], 'Root Approximations');

grid on;
