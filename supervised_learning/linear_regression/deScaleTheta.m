function theta = deScaleTheta(X_non_scaled, theta);

maxXj = max(X_non_scaled);
maxX = max(maxXj);

if maxX > 1 || maxX < -1,
  theta = theta ./ (max(X_non_scaled))';
end;

