function p = predict(Theta1, Theta2, X)
% Predict the label of an input given a trained neural network

% Number of training examples
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly
p = zeros(size(X, 1), 1);

a1 = [ones(m, 1) X];
z2 = a1 * Theta1';
a2 = sigmoid(z2);
a2 = [ones(m, 1) a2];
z3 = a2 * Theta2';
a3 = sigmoid(z3);

[pred, index] = max(a3, [], 2);

p = index;


end
