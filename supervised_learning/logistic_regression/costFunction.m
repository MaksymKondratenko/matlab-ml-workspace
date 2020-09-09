function J = costFunction(X, y, theta);

m = size(X, 1);
hX = prediction(X, theta);

J = 1/m * (-y' * log(hX) - (1 - y)' * log(1 - hX));