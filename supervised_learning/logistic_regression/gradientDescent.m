function T = gradientDescent(X, y, theta, alpha);

m = size(X, 1);
k = alpha/m;

delta = zeros(size(theta));
for i = 1:m,
  featureVector = extractFeatureVector(X, i);
  z = theta' * featureVector
  hXi = 1/(1 + e^-z)
  delta = delta + (hXi - y(i)) * featureVector;
end;

T = theta - k * delta;
