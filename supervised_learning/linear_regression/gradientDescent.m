function T = gradientDescent(X, y, theta, alpha);

m = size(X, 1);
k = alpha/m;

delta = zeros(size(theta));
for i = 1:m,
  featureVector = extractFeatureVector(X, i);
  prediction = theta' * featureVector;
  delta = delta + (prediction - y(i)) * featureVector;
end;

T = theta - k * delta;
