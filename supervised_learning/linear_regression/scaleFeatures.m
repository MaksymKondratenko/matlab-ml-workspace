function X = scaleFeatures(X);

maxXj = max(X)
maxX = max(maxXj)

if maxX > 1 || maxX < -1,
  X = X ./ max(X);
end;
