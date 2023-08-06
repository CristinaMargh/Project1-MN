function [Y, InitialMatrix] = parse_data_set_file(file_path)
  % path -> a relative path to the .txt file

  % Y -> the vector with all actual values
  % InitialMatrix -> the matrix that must be transformed
  
  % TODO: parse_data_set_file implementation
% we open the file in 'read' mode
in = fopen(file_path, 'r');
m = fscanf(in, '%d', 1);
n = fscanf(in, '%d', 1);
InitialMatrix = cell(m, n);
for i = 1 : m
      Y(i) = fscanf(in, '%d', 1);
  for j = 1 : n
    % we consider string type elements
    InitialMatrix(i, j) = fscanf(in, '%s', 1);
  endfor
endfor
fclose(in);
endfunction
