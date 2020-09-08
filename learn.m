function theta = learn(X, y, theta, alpha, threshold);

iteration = 1;
while costFunction(X, y, theta) > threshold
  disp(sprintf('iteration %1.0f', iteration));
  theta = gradientDescent(X, y, theta, alpha)
  iteration++;
end;

