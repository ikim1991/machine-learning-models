function [J grad] = nnCostFunction(nn_params, ...
                                   input_layer_size, ...
                                   hidden_layer_size, ...
                                   num_labels, ...
                                   X, y, lambda)
% Implements the neural network cost function for a two layer

% Reshape nn_params back into the parameters Theta1 and Theta2, the weight matrices for our 2 layer neural network
Theta1 = reshape(nn_params(1:hidden_layer_size * (input_layer_size + 1)), ...
                 hidden_layer_size, (input_layer_size + 1));

Theta2 = reshape(nn_params((1 + (hidden_layer_size * (input_layer_size + 1))):end), ...
                 num_labels, (hidden_layer_size + 1));

% Setup some useful variables
m = size(X, 1);
Y = zeros(m, num_labels);

for i = 1:m

  Y(i, y(i)) = 1;

endfor

Theta1_grad = zeros(size(Theta1));
Theta2_grad = zeros(size(Theta2));

% Foreward-Feed
a1 = [ones(m, 1) X];
a2 = sigmoid(a1 * Theta1');
a2 = [ones(m, 1) a2];
a3 = sigmoid(a2 * Theta2');

J = (-1/m) * sum(sum(Y .* log(a3) + (1 - Y) .* (log(1 - a3)), 2)) + (lambda/(2*m)) * (sum(sum(Theta1(:, 2:end) .^2, 2)) + sum(sum(Theta2(:, 2:end) .^2, 2)));

for j = 1:m

  a1 = [ones(1,1) X(j, :)];
  a2 = sigmoid(a1 * Theta1');
  a2 = [ones(1, 1) a2];
  a3 = sigmoid(a2 * Theta2');

  d3 = a3 - Y(j, :);
  d2 = (d3 * Theta2(:,2:end)) .* sigmoidGradient(a1 * Theta1');

  Theta1_grad = Theta1_grad + d2' * a1;
  Theta2_grad = Theta2_grad + d3' * a2;

endfor

  Theta1_grad0 = Theta1_grad(:, 1);
  Theta1_gradj = Theta1_grad(:, 2:end) + lambda * Theta1(:, 2:end);
  Theta2_grad0 = Theta2_grad(:, 1);
  Theta2_gradj = Theta2_grad(:, 2:end) + lambda * Theta2(:, 2:end);
  Theta1_grad = [Theta1_grad0 Theta1_gradj]./m;
  Theta2_grad = [Theta2_grad0 Theta2_gradj]./m;


% Unroll gradients
grad = [Theta1_grad(:) ; Theta2_grad(:)];


end
