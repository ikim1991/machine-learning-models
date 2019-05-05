function J = computeCostMulti(X, y, theta)
% Compute cost for linear regression with multiple variables


% Number of training examples
m = length(y);

J = (0.5/m) * sum(((X * theta) - y).^2);

end
