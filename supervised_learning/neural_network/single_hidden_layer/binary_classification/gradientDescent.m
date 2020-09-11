function [Doutput, Dhidden] = gradientDescent(delta3, delta2, xi, a2,  thetaHidden, thetaOutput);

    % delta3 is K x 1
    % delta2 is Sj x 1
    % xi is (n + 1) x 1
    % a2 is (Sj + 1) x 1
    % thetaHidden is Sj x (Sj-1 + 1)
    % thetaOutput is K x (Sj + 1)
    Doutput = thetaOutput + delta3 * a2'; % K x (Sj + 1)
    Dhidden = thetaHidden + delta2 * xi'; % Sj x (Sj-1 + 1); Sj-1 == n
end