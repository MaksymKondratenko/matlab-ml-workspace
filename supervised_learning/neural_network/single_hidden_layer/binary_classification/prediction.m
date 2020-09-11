function [a2wb, a3] = prediction(xi, thetaHidden, thetaOutput);

    % xi is (Sj-1 + 1) x 1, since is a feature vector
    % thetaHidden is Sj x (Sj-1 + 1)
    % thetaOutput is K x (Sj + 1)
    z2 = thetaHidden * xi; % Sj x 1
    a2 = sigmoid(z2); % Sj x 1
    a2wb = [1; a2]; % (Sj + 1) x 1

    z3 = thetaOutput * a2wb; % K x 1
    a3 = sigmoid(z3); % K x 1
end