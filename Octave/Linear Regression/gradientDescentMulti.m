function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
% Performs gradient descent to learn theta

% Number of training examples
m = length(y);
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

  theta = theta - (alpha/m) * (((X * theta) - y)' * X)';

    % Save the cost J in every iteration
    J_history(iter) = computeCostMulti(X, y, theta);

endfor

end
