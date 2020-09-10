function [X, y, theta1, theta2, theta3, theta4] = loadData();

    dataset = load('dataset.txt');
    X = dataset(:, 1:end-1);
    X = [ones(length(X),1), X];
    y = dataset(:, end);
    theta1 = zeros(size(X,2), 1);
    theta2 = zeros(size(X,2), 1);
    theta3 = zeros(size(X,2), 1);
    theta4 = zeros(size(X,2), 1);
end