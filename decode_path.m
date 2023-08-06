function [decoded_path] = decode_path (path, lines, cols)
	% path -> vector containing the order of the states that arrived
	% 		 to a winning position
	% lines -> numeber of lines
	% cols -> number of columns
	
	% decoded_path -> vector of pairs (line_index, column_index)
  %                 corresponding to path states
  % hint: decoded_path does not contain indices for the WIN state

  % TODO: decode_path implementation
 l = length(path);
 poz = 1;
 % initialization 
 decoded_path = zeros(l - 1, 2);
 for i = 1 : lines
   for j = 1 : cols
     for k = 1 : l
       % we compare the value from each node with the general formula found
     if path(k) == (i - 1) * cols + j
       decoded_path(k, 1) = i;
       decoded_path(k, 2) = j;
      endif
    endfor
   endfor
 endfor
endfunction
