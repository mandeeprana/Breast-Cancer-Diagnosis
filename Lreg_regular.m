%% Initialization
clear ; close all; clc
load('datatrain.mat');

%% =========== Part 1: Regularized Logistic Regression with static value of lambda ============
%X = mapFeature(Xtrain(1:209,:), Xtrain(210:418,:));
initial_theta = zeros(size(Xtrain, 2), 1);
lambda = 1;

% Compute and display initial cost and gradient for regularized logistic regression
[cost, grad] = costFunctionReg(initial_theta, Xtrain, ytrain, lambda);
fprintf('Cost at initial theta (zeros): %f\n', cost);

fprintf('\nProgram paused. Press enter to continue.\n');
pause;

%% ============= Part 2: Regularization and Accuracies with optimal value of lambda =============
% see how regularization affects the decision coundart
% Try the following values of lambda (0, 1, 10, 100).
% Initialize fitting parameters
initial_theta = zeros(size(Xtrain, 2), 1);

% Set regularization parameter lambda to 1 (you should vary this)
lambda = 0.0001;

% Set Options
options = optimset('GradObj', 'on', 'MaxIter', 400);
% Optimize
[theta, J, exit_flag] = ...
	fminunc(@(t)(costFunctionReg(t, Xtrain, ytrain, lambda)), initial_theta, options);

ptrain = predict(theta, Xtrain);
fprintf('Train Accuracy: %f\n', mean(double(ptrain == ytrain)) * 100);

load('datatest.mat');
ptest = predict(theta, Xtest);
fprintf('Test Accuracy: %f\n', mean(double(ptest == ytest)) * 100);

