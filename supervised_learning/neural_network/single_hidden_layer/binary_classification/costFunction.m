function cost = costFunction(xi, y, thetaHidden, thetaOutput, lambda);

    % xi is n x 1 since it is a feature vector
    % thetaHidden is Sj x (Sj-1 + 1)
    % thetaOutput is K x (Sj + 1)
    m = size(X, 1);
    J = zeros(m, 1)
    for i = 1:m,
        xi = X(i,:)'; % n x 1
        yi = y(i,:)'; % K x 1
        [a2, hxi] = prediction(xi, thetaHidden, thetaOutput); % [(Sj + 1) x 1, K x 1]
        J(i) = -1/m * (-yi' * log(hxi) - (1 - yi)' * log(1 - hxi)); % 1 x 1
    end

    regParam = lambda / (2 * m) * (sum(sum(thetaOutput.^2)) + sum(sum(thetaHidden.^2))); % 1 x 1
    cost = sum(J) + regParam;
end