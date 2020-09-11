function [Doutput, Dhidden] = gradientDescent(delta3, delta2, xi, a2,  thetaHidden, thetaOutput, lambda);

    % delta3 is K x 1
    % delta2 is Sj x 1
    % xi is (n + 1) x 1
    % a2 is (Sj + 1) x 1
    % thetaHidden is Sj x (Sj-1 + 1)
    % thetaOutput is K x (Sj + 1)
    m = size(X, 1);
    outputRegParam = lambda * [0; thetaOutput(:, 2:end)] % K x (Sj + 1)
    hiddenRegParam = lambda * [0; thetaHidden(:, 2:end)] % Sj x (Sj-1 + 1)

    Doutput = 1/m * (thetaOutput + delta3 * a2') + outputRegParam; % K x (Sj + 1)
    Dhidden = 1/m * (thetaHidden + delta2 * xi') + hiddenRegParam; % Sj x (Sj-1 + 1); Sj-1 == n
end