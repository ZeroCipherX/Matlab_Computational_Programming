clc;
clear;

disp('--- Power Method ---');
disp('Enter the square matrix A:');
A = input('');

n = size(A, 1);
x = ones(n, 1); % Initial guess
tol = input('Enter the tolerance: ');
max_iter = input('Enter the maximum number of iterations: ');

disp('Iteration Table:');
disp('Iter | Eigenvalue | Eigenvector');

lambda_old = 0;

for k = 1:max_iter
    y = A * x;
    % Find the largest absolute value
    lambda = max(abs(y));
    x = y / lambda; % Normalize
    fprintf('%3d | %.4f |', k, lambda);
    fprintf(' %.4f', x);
    fprintf('\n');

    if abs(lambda - lambda_old) < tol
        break;
    end
    lambda_old = lambda;
end

disp('Dominant Eigenvalue:');
disp(lambda);
disp('Corresponding Eigenvector:');
disp(x);

