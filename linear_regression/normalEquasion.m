function J = costFunctionByNormalEquasion(X, y);

J = pinv(X'*X)*X'*y;
