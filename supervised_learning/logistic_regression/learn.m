function theta = learn(X, y, theta, alpha, lambda);
disp('Scaling features');
X_scaled = scaleFeatures(X);
disp('Learning started');

accuracy = 0.01;
iteration = 1;
while accuracy < 0.95 && iteration <= 2000,
  disp(sprintf('iteration %1.0f', iteration));
  cost = costFunction(X_scaled, y, theta, lambda)
  theta = gradientDescent(X_scaled, y, theta, alpha, lambda);
  accuracy = mean(prediction(X, deScaleTheta(X, theta)) >= 0.5 == y)
  iteration++;
  diagram(iteration, 1) = accuracy;
  diagram(iteration, 2) = cost;
end;

disp('Training finished. Reverting scale.');
theta = deScaleTheta(X, theta)
plot(diagram);

if size(X, 2) == 3,
    plotClassification(X, y);
end
