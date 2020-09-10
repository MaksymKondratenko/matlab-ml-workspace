function [X, y, thetaHidden, thetaOutput] = loadData(Sj);

    Lj = 4;
    dataset = load('dataset.txt');
    X = dataset(:, 1:end-Lj);
    X = [ones(length(X),1), X];
    y = dataset(:, end-Lj:end);
    thetaHidden = zeros(Sj, size(X,2));
    thetaOutput = zeros(Lj, Sj + 1);
end