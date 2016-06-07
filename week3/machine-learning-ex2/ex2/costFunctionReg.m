function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta


	h = sigmoid(X*theta);
	reg_theta = [0;theta(2:end);]
	difference = h - y;
	theta_cost = sum(reg_theta.*reg_theta)*lambda/(2*m);
	cost_t1 = -y.*log(h);
	cost_t2 = (1-y).*log(1-h);
	cost = sum(cost_t1-cost_t2)/m;
	J = cost + theta_cost;
	grad_sum_inner = X'*difference;
	grad_sum = grad_sum_inner/m;
	grad_theta = reg_theta*lambda/m;
	grad = grad_sum + grad_theta;
	%grad = (1/m)*(X'*(h-y)+lambda*reg_theta);




% =============================================================

end
