clc;
clear;

tol = input('Enter tolerance (Es): ');
x0 = input('Enter initial value of x (x0): ');
y0 = input('Enter initial value of y (y0): ');
x_end = input('Enter final value of x (x_end): ');
h = input('Enter step size (h): ');
func_str = input('Enter the function in terms of x and y (e.g., x+y, sin(x), etc.): ', 's');

f = str2func(['@(x, y)', func_str]);

fprintf('\nIter\t x\t\t y\t\t Error\n');
fprintf('------------------------------------------------\n');

x_vals = x0:h:x_end; 
y_vals = zeros(size(x_vals)); 
y_vals(1) = y0; 
errors = zeros(size(x_vals)); 

for i = 1:(length(x_vals) - 1)
    x = x_vals(i);
    y = y_vals(i);

    y_next = y + h * f(x, y);

    errors(i + 1) = abs(y_next - y);
    y_vals(i + 1) = y_next;

    fprintf('%d\t %.6f\t %.6f\t %.6f\n', i, x, y_next, errors(i + 1));

     if errors(i + 1) < tol
        break;
    end
end

fprintf('\nSolution completed. Final value of y at x = %.6f is y = %.6f\n', x_vals(end), y_vals(end));
% Plotting
figure;
plot(x_vals, y_vals, 'b-', 'LineWidth', 1.5); hold on;
plot(x_vals, y_vals, 'ro', 'MarkerSize', 5, 'LineWidth', 1.5);
xlabel('x');
ylabel('y');
title('Numerical Solution Using Taylor Series');
legend('Numerical Solution', 'Approximations');
grid on;