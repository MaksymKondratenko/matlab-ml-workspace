function [delta3, delta2] = backPropagation(a2, a3, yi, thetaOutput);

    % yi is 1 x K, since is a label for an i-th row
    % thetaOutput is K x (Sl-1 + 1)
    % a2 is (Sl-1 + 1) x 1
    % a3 is K x 1
    delta3 = a3 - yi' % K x 1
    delta2 = thetaOutput' * delta3 .* (a2 .* (1 - a2)) % (Sl-1 + 1) x 1
end