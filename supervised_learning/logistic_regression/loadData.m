function [X, y, theta] = loadData();

    dataset = load('dataset.txt');
    X = dataset(:, 1:end-1);
    X = [ones(length(X),1), X];
    y = dataset(:, end);
    theta = zeros(size(X,2), 1);
end