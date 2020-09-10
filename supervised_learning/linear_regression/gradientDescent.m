function T = gradientDescent(X, y, theta, alpha);

m = size(X, 1);
k = alpha/m;

T = theta - k * X * (X * theta - y);
