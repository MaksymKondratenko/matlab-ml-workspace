function prediction = prediction(X, theta);

    z = X * theta;
    prediction = 1 ./ (1 + e.^(-z));