function [delta3, delta2] = backPropagation(a2, a3, yi, thetaOutput);

    % yi is K x 1, since is a label vector for an i-th row
    % thetaOutput is K x (Sl + 1)
    % a2 is (Sl + 1) x 1
    % a3 is K x 1
    delta3 = a3 - yi; % K x 1
    thetaOutputNoBias = thetaOutput(:, 2:end)';
    a2NoBias = a2(2: end);
    delta2 = thetaOutputNoBias * delta3 .* (a2NoBias .* (1 - a2NoBias)); % Sl x 1
end