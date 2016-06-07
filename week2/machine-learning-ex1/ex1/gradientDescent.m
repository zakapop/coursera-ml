function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

    hypothesis = X*(theta);
    difference = hypothesis-y;
    total_difference_theta = zeros(1,length(theta));
    for i=1:length(theta)
        total_difference_theta(i) = sum(difference.*X(:,i));
        theta(i) = theta(i) - (alpha/m) * total_difference_theta(i);
    endfor

    %hypothesis = X*(theta);
    %difference = hypothesis-y;
    %total_difference_theta0 = sum(difference.*X(:,1));
    %total_difference_theta1 = sum(difference.*X(:,2));
    %theta(1) = theta(1) - (alpha/m) * total_difference_theta0;
    %theta(2) = theta(2) - (alpha/m) * total_difference_theta1;

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);
    
end
J_history

end
