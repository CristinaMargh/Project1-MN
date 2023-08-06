function [Error] = ridge_regression_cost_function(Theta, Y, FeatureMatrix, lambda)
  % Theta -> the vector of weights
  % Y -> the vector with all actual values
  % FeatureMatrix -> the matrix with all training examples
  % lambda -> regularization parameter that controls the amount of 
  %           shrinkage applied to the regression coefficients

  % Error -> the error of the regularized cost function

  % TODO: ridge_regression_cost_function implementation
   m = length(FeatureMatrix);
   n = size(FeatureMatrix, 2);
    % we use sum to avoid 'for'
   Error1 =  sum(power(FeatureMatrix(1:m, :) * Theta(2:end) - Y(1:m), 2)) / (2 * m);
   Error = Error1 + lambda * sum(power(Theta(1:n), 2));
endfunction
