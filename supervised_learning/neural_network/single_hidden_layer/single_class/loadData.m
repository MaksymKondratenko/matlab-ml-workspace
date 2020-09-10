function [X, y, thetaHidden, thetaOutput] = loadData(Sj, Lj);

    dataset = load('dataset.txt');
    X = dataset(:, 1:end-1);
    X = [ones(length(X),1), X];
    y = dataset(:, end);
    thetaHidden = zeros(Sj, size(X,2));
    thetaOutput = zeros(Lj, Sj + 1);
end