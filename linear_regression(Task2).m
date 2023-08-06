function [Error] = linear_regression_cost_function(Theta, Y, FeatureMatrix)
  % Theta -> the vector of weights
  % Y -> the vector with all actual values
  % FeatureMatrix -> the matrix with all training examples

  % Error -> the error of the regularized cost function

  % TODO: linear_regression_cost_function implementation
  m = size(FeatureMatrix, 1);
  Error = sum(power(FeatureMatrix(1:m, :) * Theta(2:end) - Y(1:m), 2)) / (2 * m);
  endfunction
