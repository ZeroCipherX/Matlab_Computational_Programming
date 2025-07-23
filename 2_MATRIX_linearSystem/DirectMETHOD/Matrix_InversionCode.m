clc;
clear;

disp('--- Matrix Inversion ---');
disp('Enter the coefficient matrix A :');
A = input('');
disp('Enter the constants matrix B :');
B = input('');
[n, m] = size(A); 
I = eye(n);
aug = [A I]; 

disp('Initial Augmented Matrix:');
disp(aug);

for i = 1:n
    disp(['Normalizing row ', num2str(i)]);
    aug(i, :) = aug(i, :) / aug(i, i); 
    disp(aug);

    for j = 1:n
        if i ~= j
            disp(['Eliminating column ', num2str(i), ' from row ', num2str(j)]);
            aug(j, :) = aug(j, :) - aug(j, i) * aug(i, :); 
            disp(aug);
        end
    end
end

invA = aug(:, n+1:end); 
X = invA * B; 
disp('Final Augmented Matrix (with inverse):');
disp(aug);

disp('The inverse of the matrix is:');
disp(invA);

disp('The solution for the system of equations is:');
disp(X);
