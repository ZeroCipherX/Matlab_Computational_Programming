clc;
clear;

disp('--- Gauss Elimination ---');
disp('Enter the coefficient matrix A:');
A = input('');
disp('Enter the constants matrix B:');
B = input('');

[n, m] = size(A);
aug = [A B]; % Augmented matrix

disp('Initial Augmented Matrix:');
disp(aug);

% Forward Elimination
for k = 1:n-1
    for i = k+1:n
        factor = aug(i, k) / aug(k, k);
        for j = k:n+1
            aug(i, j) = aug(i, j) - factor * aug(k, j);
        end
        disp(['Eliminating row ', num2str(i), ' using row ', num2str(k)]);
        disp(aug);
    end
end

% Back Substitution
x = zeros(n, 1);
x(n) = aug(n, end) / aug(n, n);

for i = n-1:-1:1
    s = 0;
    for j = i+1:n
        s = s + aug(i, j) * x(j);
    end
    x(i) = (aug(i, end) - s) / aug(i, i);
end

disp('Solution:');
disp(x);
