function g = sigmoidGradient(z)
% Returns the gradient of the sigmoid function


g = g = sigmoid(z) .* (1 - sigmoid(z));

end
