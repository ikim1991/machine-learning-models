function [X_norm, mu, sigma] = featureNormalize(X)
% Feature Normalization

% Mean
mu = mean(X);

% Standard Deviation
sigma = std(X);

% Normalized X
X_norm = (X - mu) ./ sigma;

end
