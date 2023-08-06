function [G, c] = get_Jacobi_parameters (Link)
	% Link -> the link matrix (edge with probabilities matrix)
	
  % G -> iteration matrix
	% c -> iteration vector
	
  % TODO: get_Jacobi_parameters
  [dim1, dim2] = size(Link);
  % We divide the link matrix to obtain the 2 required components
  G = Link(1 : dim2 - 2, 1 : dim2 - 2);
  c = Link(1 : dim2 - 2, dim2 - 1);
endfunction
