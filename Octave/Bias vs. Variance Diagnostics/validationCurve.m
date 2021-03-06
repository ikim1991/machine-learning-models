function [lambda_vec, error_train, error_val] = ...
    validationCurve(X, y, Xval, yval)
% Generate the train and validation errors needed to plot a validation curve that we can use to select lambda


% Selected values of lambda (you should not change this)
lambda_vec = [0 0.001 0.003 0.01 0.03 0.1 0.3 1 3 10]';

for i= 1:length(lambda_vec)

  lambda = lambda_vec(i);
  theta = trainLinearReg(X, y, lambda);
  error_train(i) = linearRegCostFunction(X, y, theta, 0);
  error_val(i) = linearRegCostFunction(Xval, yval, theta, 0);


endfor
