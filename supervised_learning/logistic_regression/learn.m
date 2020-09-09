function theta = learn(X, y, theta, alpha, threshold);
disp('Scaling features');
X_scaled = scaleFeatures(X);
disp('Learning started');

for i = 1:3000
  disp(sprintf('iteration %1.0f', i));
  cost = costFunction(X_scaled, y, theta)
  theta = gradientDescent(X_scaled, y, theta, alpha);
end;

disp('Training finished. Reverting scale.');
theta = deScaleTheta(X, theta)
