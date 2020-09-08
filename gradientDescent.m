function T = gradientDescent(X, y, theta, alpha);

m = size(X, 1);
k = alpha/m;

hX = X*theta
delta = hX-y
T(1,1) = theta(1) - k* sum(delta .* X(:, 1));
T(2,1) = theta(2) - k* sum(delta .* X(:, 2))
