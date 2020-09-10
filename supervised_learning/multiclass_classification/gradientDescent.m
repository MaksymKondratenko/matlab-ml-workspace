function T = gradientDescent(X, y, theta, alpha, lambda);

m = size(X, 1);
k = alpha/m;
hX = prediction(X, theta);
regParam = lambda/m * theta

T = theta - k * X' * (hX - y) + regParam;
