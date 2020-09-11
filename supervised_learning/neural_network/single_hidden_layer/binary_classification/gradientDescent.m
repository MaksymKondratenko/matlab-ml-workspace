function [Doutput, Dhidden] = gradientDescent(delta3, delta2, xi, m, a2,  thetaHidden, thetaOutput, lambda);

    % delta3 is K x 1
    % delta2 is Sl x 1
    % xi is (n + 1) x 1; n == Sj-1
    % a2 is Sl x 1
    % thetaOutput is K x (Sl + 1)
    % thetaHidden is Sl x (Sl-1 + 1)
    outputRegParam = lambda * nullifyBiasCol(thetaOutput); % K x (Sl + 1)
    hiddenRegParam = lambda * nullifyBiasCol(thetaHidden); % Sj x (Sl-1 + 1)

    Doutput = 1/m * (thetaOutput + delta3 * a2') + outputRegParam; % K x (Sj + 1)
    Dhidden = 1/m * (thetaHidden + delta2 * xi') + hiddenRegParam; % Sj x (Sj-1 + 1); Sj-1 == n
end