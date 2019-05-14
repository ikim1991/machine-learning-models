function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
% Compute cost and gradient for regularized linear regression with multiple variables


% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly
J = 0;
grad = zeros(size(theta));

J = (1/(2*m)) * sum(((X * theta) - y).^2) + (lambda/(2*m)) * sum(theta(2:end).^2);

grad0 = (1/m) * ((X * theta) - y)' * X(:,1);
gradj = (1/m) * ((X * theta) - y)' * X(:,2:end) + (lambda/m) * theta(2:end)';
grad = [grad0 gradj];
grad = grad(:);


end
