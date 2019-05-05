% Multivariate Linear Regresion Model

% Initialize Environment
clear ; close all; clc

% Loading Dataset, where X represents the house size and number of bedrooms and Y represents the house price
data = load('housing.txt');
X = data(:, 1:2);
y = data(:, 3);

% Number of Training examples
m = length(y);

% Print out some data points
fprintf('First 10 examples from the dataset: \n');
fprintf(' x = [%.0f %.0f], y = %.0f \n', [X(1:10,:) y(1:10,:)]');

% Feature Scaling and Mean Normalization
fprintf('Normalizing Features ...\n');

[X mu sigma] = featureNormalize(X);

% Add bias term to X
X = [ones(m, 1) X];

% Running Gradient Descent to fit parameter Theta
fprintf('Running gradient descent ...\n');

% Initialize Gradient Descent settings
alpha = 0.01;
num_iters = 400;

% Initialize Theta and Run Gradient Descent
theta = zeros(3, 1);
[theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters);

% Plot the convergence graph
figure;
plot(1:numel(J_history), J_history, '-b', 'LineWidth', 2);
xlabel('Number of iterations');
ylabel('Cost J');
title('Cost vs. Number of Iterations')

% Display gradient descent's result
fprintf('Theta computed from gradient descent: \n');
fprintf(' %f \n', theta);
fprintf('\n');

% Estimate the price of a 1650 sq-ft, 3 br house
norm = ([1650 3] - mu) ./ sigma;
price = [1 norm] * theta;
fprintf(['Predicted price of a 1650 sq-ft, 3 br house ' ...
         '(using gradient descent):\n $%f\n'], price);

% Using Normal Equation to fit parameter Theta
fprintf('Solving with normal equations...\n');

%% Load Data
data = csvread('housing.txt');
X = data(:, 1:2);
y = data(:, 3);
m = length(y);

% Add intercept term to X
X = [ones(m, 1) X];

% Calculate the parameters from the normal equation
theta = normalEqn(X, y);

% Display normal equation's result
fprintf('Theta computed from the normal equations: \n');
fprintf(' %f \n', theta);
fprintf('\n');

% Estimate the price of a 1650 sq-ft, 3 br house
price = [1 1650 3] * theta;

fprintf(['Predicted price of a 1650 sq-ft, 3 br house ' ...
         '(using normal equations):\n $%f\n'], price);
