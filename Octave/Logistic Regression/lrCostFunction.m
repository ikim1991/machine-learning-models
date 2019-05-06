function [J, grad] = lrCostFunction(theta, X, y, lambda)
% Compute cost and gradient for logistic regression with regularization


% Number of training examples
m = length(y);

% You need to return the following variables correctly
J = 0;
grad = zeros(size(theta));

J = (-1/m) * (y' * log(sigmoid(X * theta)) + (1 - y)' * log(1 - sigmoid(X * theta))) + (lambda/(2*m)) * sum(theta(2:end).^2);

grad0 = (1/m) * (sigmoid(X * theta) - y)' * X(:, 1);
gradj = (1/m) * ((sigmoid(X * theta) - y)' * X(:, 2:end)) + (lambda/m) * theta(2:end)';
grad = [grad0 gradj];
grad = grad(:);
end
