clc;
clear;

disp('--- Jacobi Iteration ---');
A = input('Enter the coefficient matrix A: ');
B = input('Enter the constants matrix B: ');

n = size(A, 1);
x = zeros(n, 1);
tol = input('Enter the tolerance: ');
max_iter = input('Enter the maximum iterations: ');

disp('Iter| x1      x2      x3    | Error');
for k = 1:max_iter
    x_new = zeros(n, 1);
    for i = 1:n
        s = sum(A(i, :) * x) - A(i, i) * x(i);
        x_new(i) = (B(i) - s) / A(i, i);
    end
    err = max(abs(x_new - x));
    fprintf('%3d |', k);
    fprintf(' %.4f', x_new);
    fprintf(' | %.4f\n', err);
    if err < tol
        break;
    end
    x = x_new;
end

disp('Solution:');
disp(x_new);
