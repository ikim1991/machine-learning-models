function J = computeCost(X, y, theta)
% Computes and returns the Cost, J of our data points

% Number of training examples
m = length(y);

J = (0.5/m) * sum(((X * theta) - y).^2);

end
