function J = costFunctionByNormalEquation(X, y);

J = pinv(X'*X)*X'*y;
