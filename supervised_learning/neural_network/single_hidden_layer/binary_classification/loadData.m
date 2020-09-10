function [X, y, thetaHidden, thetaOutput] = loadData(Sj);

    dataset = load('dataset.txt');
    X = dataset(:, 1:end-1);
    X = [ones(length(X),1), X];
    y = dataset(:, end);
    thetaHidden = zeros(Sj, size(X,2));
    thetaOutput = zeros(1, Sj + 1);
end