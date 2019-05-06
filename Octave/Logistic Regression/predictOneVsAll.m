function p = predictOneVsAll(all_theta, X)
% Predict the label for a trained one-vs-all classifier

m = size(X, 1);
num_labels = size(all_theta, 1);

p = zeros(size(X, 1), 1);

% Add ones to the X data matrix
X = [ones(m, 1) X];

[pred, index] = max(sigmoid(X * all_theta'), [], 2);

p = index;

end
