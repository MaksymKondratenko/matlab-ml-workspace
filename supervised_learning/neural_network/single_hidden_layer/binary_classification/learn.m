function [Thidden, Toutput] = learn(X, y, thetaHidden, thetaOutput, lambda);
    % X is m x n
    % y is m x K
    % thetaHidden is Sl x (Sl-1 + 1)
    % thetaOutput is K x (Sl + 1)
    disp('Learning started');

    cost = zeros(2, 1);
    cost(1) = costFunction(X, y, thetaHidden, thetaOutput, lambda);

    m = size(X, 1);
    for i = 1:m,
      disp(sprintf('Training record: %1.0f', i));
        xi = X(i,:)'; % n x 1
        yi = y(i,:)'; % K x 1
        [a2, a3] = prediction(xi, thetaHidden, thetaOutput) % [Sl x 1, K x 1]
        [delta3, delta2] = backPropagation(a2, a3, yi, thetaOutput) % [K x 1, Sl x 1]
        [thetaOutput, thetaHidden] = gradientDescent(delta3, delta2, xi, m, a2, thetaHidden, thetaOutput, lambda) % [K x (Sj + 1), Sj x (Sj-1 + 1)]
    end;

    disp('Training finished.');
    Thidden = thetaHidden;
    Toutput = thetaOutput;

    cost(2) = costFunction(X, y, thetaHidden, thetaOutput, lambda);
    figure(1);
    plot(cost);
end