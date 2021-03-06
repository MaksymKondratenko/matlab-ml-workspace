function J = costFunction(X, y, theta);

m = size(X, 1);
hX = X * theta;

J = 1/(2*m) * sum((hX-y).^2);