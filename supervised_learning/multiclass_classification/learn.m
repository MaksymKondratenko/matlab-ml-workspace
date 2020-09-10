function thetas = learn(X, y, thetas, alpha, lambda);

    disp('Scaling features');
    X_scaled = scaleFeatures(X);
    disp('Learning started');

    nClasses = 4;
    for i = 1 : nClasses,
        yClass = y == i;
        theta = thetas(:, i);

        accuracy = 0.01;
        iteration = 1;
        while accuracy < 0.95 && iteration <= 500,
          disp(sprintf('iteration %1.0f', iteration));
          cost = costFunction(X_scaled, yClass, theta, lambda)
          theta = gradientDescent(X_scaled, yClass, theta, alpha, lambda);
          accuracy = mean(prediction(X, deScaleTheta(X, theta)) >= 0.5 == yClass)
          diagram(iteration, 1) = accuracy;
          diagram(iteration, 2) = cost;
          iteration++;
        end;
        thetas(:, i) = deScaleTheta(X, theta)

        figure(i);
        plot(diagram);
        disp(sprintf('Training for class %1.0f with accuracy %1.2f and cost %1.6f', i, accuracy, cost));
    end

    disp('Training finished. Reverting scale.');

    if size(X, 2) == 3,
        plotClassification(X, y);
    end
end