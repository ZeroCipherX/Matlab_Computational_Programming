clc;
clear;

disp('--- Gauss-Jordan Elimination ---');
disp('Enter the coefficient matrix A:');
A = input('');
disp('Enter the constants matrix B:');
B = input('');

[n, m] = size(A);
aug = [A B]; % Augmented matrix

disp('Initial Augmented Matrix:');
disp(aug);

% Gauss-Jordan Elimination
for i = 1:n
    disp(['Normalizing row ', num2str(i)]);
    aug(i, :) = aug(i, :) / aug(i, i);
    disp(aug);
    
    for j = 1:n
        if i ~= j
            disp(['Eliminating column ', num2str(i), ' from row ', num2str(j)]);
            factor = aug(j, i);
            for k = 1:n+1
                aug(j, k) = aug(j, k) - factor * aug(i, k);
            end
            disp(aug);
        end
    end
end

disp('Solution:');
disp(aug(:, end));
