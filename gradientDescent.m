function T = gradientDescent(X, y, theta, alpha);

m = size(X, 1);
k = alpha/m;

delta = zeros(size(theta));
for i=1:m,
  trainingRecord = X(i,:)';
  delta = delta + (theta'*trainingRecord - y(i)) * trainingRecord;
end;

T = theta - k * delta;
