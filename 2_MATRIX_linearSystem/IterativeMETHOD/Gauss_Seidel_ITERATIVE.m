clc;
clear;

disp('--- Gauss-Seidel Iteration ---');
A = input('Enter the coefficient matrix A: ');
B = input('Enter the constants matrix B: ');

n = size(A, 1);
x = zeros(n, 1);
tol = input('Enter the tolerance: ');
max_iter = input('Enter the maximum iterations: ');

disp('Iter| x1      x2      x3    | Error');
for k = 1:max_iter
    x_old = x;
    for i = 1:n
        s1 = sum(A(i, 1:i-1) * x(1:i-1));
        s2 = sum(A(i, i+1:n) * x_old(i+1:n));
        x(i) = (B(i) - s1 - s2) / A(i, i);
    end
    err = max(abs(x - x_old));
    fprintf('%3d |', k);
    fprintf(' %.4f', x);
    fprintf(' | %.4f\n', err);
    if err < tol
        break;
    end
end

disp('Solution:');
disp(x);
