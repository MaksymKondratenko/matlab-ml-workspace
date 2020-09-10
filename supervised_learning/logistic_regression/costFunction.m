function J = costFunction(X, y, theta, lambda);

m = size(X, 1);
hX = prediction(X, theta);
regParam = lambda / (2 * m) * sum(theta(2:end).^2);

J = 1/m * (-y' * log(hX) - (1 - y)' * log(1 - hX)) + regParam;