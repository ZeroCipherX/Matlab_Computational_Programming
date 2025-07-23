% Halley's Method
clc; clear;

% Input function
fprintf('Enter the function in terms of x (e.g., x^3 - x - 2):\n');
func_str = input('f(x) = ', 's');
f = str2func(['@(x)', func_str]);

% Input first derivative of the function
fprintf('Enter the first derivative of the function:\n');
df_str = input('f''(x) = ', 's');
df = str2func(['@(x)', df_str]);

% Input second derivative of the function
fprintf('Enter the second derivative of the function:\n');
ddf_str = input('f''''(x) = ', 's');
ddf = str2func(['@(x)', ddf_str]);

% Input parameters
x0 = input('Enter the initial guess: ');
tolerance = input('Enter the tolerance: ');
max_iterations = input('Enter the maximum iterations: ');

fprintf('\nIter\t x\t\t f(x)\t\t Error\n');
fprintf('------------------------------------------\n');

% Generate x values for plotting the function over an expanded range
x_vals = linspace(x0 - 1, x0 + 1, 100);  % Expand the range for better visualization
y_vals = arrayfun(f, x_vals);  % Compute corresponding y values for f(x)
root_approximations = [];

for iteration = 1:max_iterations
    fx = f(x0);
    dfx = df(x0);
    ddfx = ddf(x0);

    if dfx == 0
        error('First derivative is zero. Method fails.');
    end

    % Halley's method update
    x1 = x0 - (2 * fx * dfx) / (2 * dfx^2 - fx * ddfx);
    error = abs(x1 - x0);
    root_approximations = [root_approximations, x1];
    
    fprintf('%d\t %.6f\t %.6f\t %.6f\n', iteration, x0, fx, error);

    if error < tolerance
        break;
    end

    x0 = x1;
end

fprintf('\nRoot found at: %.6f\n', x1);

% Plotting
figure;
plot(x_vals, y_vals, 'b-', 'LineWidth', 1.5); hold on;  % Plot the function f(x)
plot(root_approximations, f(root_approximations), 'ro-', 'MarkerSize', 5, 'LineWidth', 1.5);  % Plot the root approximations
xlabel('x');
ylabel('f(x)');
title('Halley''s Method: 2D Plot of f(x) and Root Approximations');

% Create dynamic legend using the function string
legend(['f(x) = ', func_str], 'Root Approximations');

grid on;
