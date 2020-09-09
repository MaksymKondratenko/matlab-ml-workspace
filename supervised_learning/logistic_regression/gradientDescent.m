function T = gradientDescent(X, y, theta, alpha);

m = size(X, 1);
k = alpha/m;
hX = prediction(X, theta);

T = theta - k * X' * (hX - y);
