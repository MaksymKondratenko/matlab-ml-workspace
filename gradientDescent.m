function T = gradientDescent(X, y, theta, alpha);

m = size(X, 1);
k = alpha/m;

hX = X*theta
delta = hX-y

for i=1:size(theta),
  T(i,1) = theta(i) - k* sum(delta .* X(:, i));
end;
T
