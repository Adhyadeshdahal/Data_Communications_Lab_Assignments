k = 1:1:30;
fk = exp(k);

maximum_val = max(fk);
disp("Maximum value in fk:")
disp(maximum_val)

minimum_val = min(fk);
disp("Minimum value in fk:")
disp(minimum_val)

sum_all = sum(fk);
disp("Sum of all entries in fk:")
disp(sum_all)

product_all = prod(fk);
disp("Product of all entries in fk:")
disp(product_all)

mean_val = mean(fk);
disp("Mean of all entries in fk:")
disp(mean_val)

variance_val = var(fk);
disp("Variance of all entries in fk:")
disp(variance_val)

dimension_val = size(fk);
disp("Dimension of fk:")
disp(dimension_val)

length_val = length(fk);
disp("Length of fk:")
disp(length_val)




X=[2 5;4 6]
Y=[1 5;6 -2]
sum_XY = X + Y;
disp("Sum of X and Y:")
disp(sum_XY)

diff_XY = X - Y;
disp("Difference between X and Y:")
disp(diff_XY)

product_XY = X * Y;
disp("Product between X and Y:")
disp(product_XY)

transpose_X = X'

disp("Transpose of X:")
disp(transpose_X)

inverse_X = inv(X);
disp("Inverse of X:")
disp(inverse_X)

elementwise_multiplication = X .* Y;
disp("Element-wise multiplication between X and Y:")
disp(elementwise_multiplication)

elementwise_division = X ./ Y;
disp("Element-wise division between X and Y:")
disp(elementwise_division)

squared_X = X .^ 2;
disp("Square of each element in X:")
disp(squared_X)

power_XY = X .^ Y;
disp("Each element in X raised to the power of the corresponding element in Y:")
disp(power_XY)


f = [1, 4, -2, 4-2i];
g = [-3, 5+7i, 6, 2];

addition = f + g;
disp("Addition of f and g:")
disp(addition)

dot = f * g';
disp("Dot product of f and g:")
disp(dot)

average = mean(f);
disp("Average of f:")
disp(average)

average_energy = mean(f.^2);
disp("Average energy of f:")
disp(average_energy)


