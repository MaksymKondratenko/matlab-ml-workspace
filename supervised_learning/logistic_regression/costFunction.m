function J = costFunction(X, y, theta);

m = size(X, 1)
k = -1/m

costSum = 0;
for i = 1:m,
    features = extractFeatureVector(X,i);
    hXi = prediction(features, theta);
    costI = y(i) * log(hXi) + (1 - y(i)) * log(1 - hXi);
    costSum = costSum + costI;
    i++;
end;
J = k * costSum;