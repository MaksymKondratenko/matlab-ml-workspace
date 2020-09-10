function prediction = prediction(xi, thetaHidden, thetaOutput);

    % thetaHidden is a Sj x (Sj-1 + 1), and xi is (Sj-1 + 1) x 1, since is a feature vector
    z2 = thetaHidden * xi; % Sj x 1
    a2 = sigmoid(z2); % Sj x 1
    a2wb = [1; a2]; % (Sj + 1) x 1

    z3 = thetaOutput * a2wb; % Lj x 1
    prediction = sigmoid(z3); % Lj x 1
end