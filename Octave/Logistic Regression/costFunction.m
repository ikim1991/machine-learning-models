function [J, grad] = costFunction(theta, X, y)
% Compute cost and gradient for logistic regression

% Number of training examples
m = length(y);

grad = zeros(size(theta));

J = (-1/m) * (y' * log(sigmoid(X * theta)) + (1 - y)' * log(1 - sigmoid(X * theta)));
grad = (1/m) * ((sigmoid(X * theta) - y)' * X);

end
