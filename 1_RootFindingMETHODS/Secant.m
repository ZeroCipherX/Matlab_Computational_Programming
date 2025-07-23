% Secant Method
clc; clear;

% Input function
fprintf('Enter the function in terms of x (e.g., x^3 - x - 2):\n');
func_str = input('f(x) = ', 's');
f = str2func(['@(x)', func_str]);

% Input initial guesses and parameters
x0 = input('Enter the first initial guess (x0): ');
x1 = input('Enter the second initial guess (x1): ');
tolerance = input('Enter the tolerance: ');
max_iterations = input('Enter the maximum iterations: ');

fprintf('\nIter\t x0\t\t x1\t\t x2\t\t f(x2)\t\t Error\n');
fprintf('-----------------------------------------------------------------\n');

% Generate x values for plotting the function over the interval [x0, x1]
x_vals = linspace(x0 - 1, x1 + 1, 100);  % Expand the range for better visualization
y_vals = arrayfun(f, x_vals);  % Compute corresponding y values for f(x)
root_approximations = [];

for iteration = 1:max_iterations
    fx0 = f(x0);
    fx1 = f(x1);
    
    if fx1 == fx0
        error('Division by zero. Check your initial guesses.');
    end
    
    x2 = x1 - fx1 * (x1 - x0) / (fx1 - fx0);  % Secant method update
    error = abs(x2 - x1);
    root_approximations = [root_approximations, x2];
    
    fprintf('%d\t %.6f\t %.6f\t %.6f\t %.6f\t %.6f\n', iteration, x0, x1, x2, f(x2), error);

    if error < tolerance
        break;
    end

    x0 = x1;
    x1 = x2;
end

fprintf('\nRoot found at: %.6f\n', x2);

% Plotting
figure;
plot(x_vals, y_vals, 'b-', 'LineWidth', 1.5); hold on;  % Plot the function f(x)
plot(root_approximations, f(root_approximations), 'ro-', 'MarkerSize', 5, 'LineWidth', 1.5);  % Plot the root approximations
xlabel('x');
ylabel('f(x)');
title('Secant Method: 2D Plot of f(x) and Root Approximations');

% Create dynamic legend using the function string
legend(['f(x) = ', func_str], 'Root Approximations');

grid on;
