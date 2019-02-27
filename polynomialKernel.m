function sim2 = polynomialKernel(x1, x2, sigma, coef, e)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
x1 = x1(:); x2 = x2(:);

sim2 = (sigma*(x1'*x2)+coef).^e;

end

