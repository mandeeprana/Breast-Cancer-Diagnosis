function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
% Initialize some useful values
m = length(y); % number of training examples
J = 0;
grad = zeros(size(theta));

theta_reg = [0;theta(2:size(theta))];
J = 1 ./ m * (-y' * log(sigmoid(X*theta))-(1-y')*log(1-sigmoid(X*theta)))+ (lambda/(2*m)) * (theta_reg'*theta_reg);
grad = 1 ./ m * (X' * (sigmoid(X*theta)-y)+ lambda * (theta_reg));

end