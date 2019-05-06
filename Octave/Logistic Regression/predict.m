function p = predict(theta, X)
% Predict whether the label is 0 or 1 using learned logistic


% Number of training examples
m = size(X, 1);
p = zeros(m, 1);

for i = 1:m

  if sigmoid(X(i,:) * theta) >= 0.5
    p(i) = 1;
  else
    p(i) = 0;

  endif


endfor


end
