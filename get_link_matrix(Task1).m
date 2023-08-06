function [Link] = get_link_matrix (Labyrinth)
	% Labyrinth -> the matrix of all encodings
  
  % Link -> the link matrix associated to the given labyrinth
  
  % TODO: get_link_matrix implementation
  [m,n] = size(Labyrinth);
  % initialization for sparse matrices
  Link = spalloc(m * n + 2, m * n + 2);
  adj = get_adjacency_matrix(Labyrinth);
  % We divide each element by the sum of the elements of the line on which 
  % it is located
 for i = 1 : (m * n + 2)
   Link(i, :) = adj(i, :) / sum(adj(i, :));
   endfor
endfunction
