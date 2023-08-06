function [Theta] = gradient_descent(FeatureMatrix, Y, n, m, alpha, iter)
  % FeatureMatrix -> the matrix with all training examples
  % Y -> the vector with all actual values
  % n -> the number of predictors
  % m -> the number of trainings
  % alpha -> the learning rate
  % iter -> the number of iterations

  % Theta -> the vector of weights
  
  % TODO: gradient_descent implementation
  Theta_prev = zeros(n + 1, 1);
  % we use the previous value for iterations
  Theta = Theta_prev;
  while(iter > 0)
  for j = 1 : n
    sum = 0;
    for i = 1 : m
  sum = sum + (FeatureMatrix(i, :) * Theta_prev(2:end)- Y(i, 1)) * FeatureMatrix(i, j);
  endfor
    Theta(j + 1, 1) = Theta_prev(j + 1, 1) - sum * alpha / m;
  endfor
  Theta_prev = Theta;
  iter--;
endwhile
endfunction
