function [FeatureMatrix] = prepare_for_regression(InitialMatrix)
  % InitialMatrix -> the matrix that must be transformed

  % FeatureMatrix -> the matrix with all training examples
  
  % TODO: prepare_for_regression implementation
  [m,n] = size(InitialMatrix);
  FeatureMatrix=zeros(m, n + 1);
  for i = 1 : m
     index = 1;
    for j = 1 : n
      if strcmp(InitialMatrix(i, j), 'no')
        FeatureMatrix(i, index) = 0;
        elseif strcmp(InitialMatrix(i, j), 'yes')
          FeatureMatrix(i, index) = 1;
        elseif strcmp(InitialMatrix(i, j), 'semi-furnished')
          FeatureMatrix(i, index) = 1;
          index++;
          FeatureMatrix(i, index) = 0;
       elseif strcmp(InitialMatrix(i, j), 'unfurnished')
          FeatureMatrix(i, index) = 0;
          index++;
          FeatureMatrix(i, index) = 1;
       elseif strcmp(InitialMatrix(i, j), 'furnished')
          FeatureMatrix(i, index) = 0;
          index++;
          FeatureMatrix(i, index) = 0;
    else
      % we convert the cell array 
      aux = cell2mat(InitialMatrix(i, j));
      % back to a numeric matrix
      FeatureMatrix(i, index) = str2num(aux);
    endif
      index++;
    endfor
  endfor

endfunction
