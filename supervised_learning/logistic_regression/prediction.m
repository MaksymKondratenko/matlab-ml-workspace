function hX = prediction(featureVector, theta);

    z = theta' * featureVector;
    hX = 1 / (1 + e^-z);