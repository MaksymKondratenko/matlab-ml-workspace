function matrix = nullifyBiasCol(matrix);

    % let matrix is i x j, where 1st column contains bias values
    i = size(matrix, 1);
    j = size(matrix, 2);
    zeroVec = zeros(i, 1); % i x 1
    matrix = [zeroVec, matrix(:, 2:j)]; % i x j
end