function [Y, InitialMatrix] = parse_csv_file(file_path)
  % path -> a relative path to the .csv file
  
  % Y -> the vector with all actual values
  % InitialMatrix -> the matrix that must be transformed

  % TODO: parse_csv_file implementation
 in = fopen(file_path, 'r');
 alls = dlmread(in, ',');
  fclose(in);
   in = fopen(file_path, 'r');
 m = length(alls);
 n =size(alls, 2);
 format='%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s';

 alls = textscan(in, format, 'HeaderLines', 1, 'Delimiter', ',');
 InitialMatrix = cell(m,n-1);
 InitialMatrix = reshape(InitialMatrix, m, n-1);
 Y = str2double(alls{1});
 InitialMatrix = [alls{2}, alls{3}, alls{4}, alls{5}, alls{6}, alls{7}, alls{8}, alls{9}, alls{10}, alls{11}, alls{12}, alls{13}];
 fclose(in);
endfunction
