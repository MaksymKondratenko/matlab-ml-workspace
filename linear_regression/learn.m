function theta = learn(X, y, theta, alpha, threshold);

disp('Scaling features');
X_scaled = scaleFeatures(X);
disp('Learning started');

iteration = 1;
while costFunction(X_scaled, y, theta) > threshold
  disp(sprintf('iteration %1.0f', iteration));
  theta = gradientDescent(X_scaled, y, theta, alpha)
  iteration++;
end;

disp('Training finished. Reverting scale.');
theta = deScaleTheta(X, theta)
