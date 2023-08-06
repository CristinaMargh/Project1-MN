function [Adj] = get_adjacency_matrix (Labyrinth)
	% Labyrinth -> the matrix of all encodings
  
  % Adj -> the adjacency matrix associated to the given labyrinth
  
  % TODO: get_adjacency_matrix implementation
  [m,n] = size(Labyrinth);
  Adj = spalloc(m * n + 2, m * n + 2);
  v = zeros(1, 4);
  % decomposition in base 2
  for i = 1 : m
    for j = 1 : n
      for k = 4:-1:1
    v(k) = mod(Labyrinth(i, j), 2);
    % we use an aproximation
    Labyrinth(i,j)= floor(Labyrinth(i, j) / 2);
  endfor
  for k = 1 : 4
    if v(1) == 0
      if i == 1
        Adj((i - 1) * n + j, m * n + 1) = 1;
      else Adj((i - 1) * n + j, ((i - 1) - 1) * n + j) = 1;
      endif
    endif
    if v(2) == 0
      if i == m
        Adj((i - 1) * n + j, m * n + 1) = 1;
        else  Adj((i - 1) * n + j, i * n + j) = 1;
      endif
    endif
    if v(3) == 0
      if j == n
        Adj((i - 1) * n + j, m * n + 2) = 1;
        else Adj((i - 1) * n + j, (i - 1) * n + j + 1) = 1;
      endif
    endif
    if v(4) == 0
      if j == 1
        Adj((i - 1) * n + j, m * n + 2) = 1;
        else Adj((i - 1) * n + j, (i - 1) * n+j-1) = 1;
      endif
    endif
  endfor
 endfor
endfor
Adj(n * m + 1, n * m + 1) = 1;
Adj(n * m + 2, n * m + 2) = 1;
endfunction
