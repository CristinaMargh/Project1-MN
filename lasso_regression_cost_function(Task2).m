function [Error] = lasso_regression_cost_function(Theta, Y, FeatureMatrix, lambda)
  % Theta -> the vector of weights
  % Y -> the vector with all actual values
  % FeatureMatrix -> the matrix with all training examples
  % lambda -> regularization parameter that controls the amount of 
  %           shrinkage applied to the regression coefficients

  % Error -> the error of the regularized cost function

  % TODO: lasso_regression_cost_function implementation
    m = length(FeatureMatrix);
    n = size(FeatureMatrix, 2);
    Error2 = 0;
    Error1 =  sum(power(FeatureMatrix(1:m, :) * Theta(2:end) - Y(1:m), 2)) / m;
    for i = 1:n
       Error2 = Error2 + norm(Theta(i, 1));
     endfor
     Error = Error1 + lambda * Error2;
  endfunction
