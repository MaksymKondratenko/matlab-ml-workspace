function theta = learn(X, y, theta, alpha, threshold);

X_scaled = scaleFeatures(X);

iteration = 1;
while costFunction(X_scaled, y, theta) > threshold
  disp(sprintf('iteration %1.0f', iteration));
  theta = gradientDescent(X_scaled, y, theta, alpha)
  iteration++;
end;

theta = deScaleTheta(X, theta)
