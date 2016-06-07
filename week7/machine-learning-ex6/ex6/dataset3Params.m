function [C, sigma] = dataset3Params(X, y, Xval, yval)
%EX6PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = EX6PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;
cArray = [.01 .03 0.1 0.3 1 3 10 30];
sigArray = cArray;
col = columns(sigArray);
errorMatrix = zeros(col,col);


% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

% for i = 1:col
% 	for j = 1:col
% 		model = svmTrain(X, y, cArray(i), @(x1, x2) gaussianKernel(x1,x2,sigArray(j)));
% 		predictions = svmPredict(model, Xval);
% 		predError = mean(double(predictions ~= yval));
% 		errorMatrix(i,j) = predError;
% 	end
% end

% [M, ix] = min(errorMatrix(:));
% [ix_row, ix_col] = ind2sub(size(errorMatrix),ix);
% C = cArray(ix_row)
% sigma = sigArray(ix_col)
C = 1;
sigma = 0.1;

% =========================================================================

end
