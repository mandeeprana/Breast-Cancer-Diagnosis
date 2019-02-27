%% Initialization
clear ; close all; clc
load('datatrain.mat');

%% ============ Part 1: Compute Cost and Gradient at initial value of theta ============
[m, n] = size(Xtrain);
Xtrain = [ones(m, 1) Xtrain];
% Initialize fitting parameters
initial_theta = zeros(n + 1, 1);
% Compute and display initial cost and gradient
[cost, grad] = costFunction(initial_theta, Xtrain, ytrain);

fprintf('Cost at initial theta (zeros): %f\n', cost);
fprintf('Gradient at initial theta (zeros): \n');
fprintf(' %f \n', grad);

fprintf('\nProgram paused. Press enter to continue.\n');
pause;

%% ============= Part 2: Using fminunc finding optimal theta and cost value  =============
options = optimset('LargeScale', 'on', 'GradObj', 'on', 'MaxIter', 100);

%  Run fminunc to obtain the optimal theta
%  This function will return theta and the cost 
[theta, cost] = ...
	fminunc(@(t)(costFunction(t, Xtrain, ytrain)), initial_theta, options);

fprintf('Cost at theta found by fminunc: %f\n', cost);
fprintf('theta: \n');
fprintf(' %f \n', theta);

fprintf('\nProgram paused. Press enter to continue.\n');
pause;

%% ============== Part 3: Predict and Accuracies ==============
%  After learning the parameters, you'll like to use it to predict the outcomes
%  on unseen data. In this part, you will use the logistic regression model

prob = sigmoid([1 45 85 22 3 12 4 56 34 23 12] * theta);
fprintf('determinging the probability of %f\n\n', prob);

ptrain = predict(theta, Xtrain);
fprintf('Train Accuracy: %f\n', mean(double(ptrain == ytrain)) * 100);

load('datatest.mat');
[p, q] = size(Xtest);
Xtest = [ones(p, 1) Xtest];

ptest = predict(theta, Xtest);
fprintf('Test Accuracy: %f\n', mean(double(ptest == ytest)) * 100);

fprintf('\nProgram paused. Press enter to continue.\n');
pause;

