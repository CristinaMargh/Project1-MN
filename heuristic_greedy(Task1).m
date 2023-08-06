function [path] = heuristic_greedy (start_position, probabilities, Adj)
	% start_position -> the starting point in the labyrinth
	% probabilities -> vector of associated probabilities: including WIN and LOSE
	% Adj -> adjacency matrix
	
	% path -> the states chosen by the algorithm
  
  % TODO: heuristic_greedy implementation
  m = length(Adj);
  n = size(Adj, 2);
  % the components with which we will go among the elements
  node = start_position;
  next = start_position;
  path(1) = node;
  poz = 1;  
  visited(start_position) = 0;
  while(!visited(start_position))
    pro = 0;
  for i = 1 : n
    if Adj(node, i) != 0 && probabilities(i) > pro
      pro = probabilities(i);
      next = i;
  endif
endfor

if pro == 1
  visited(start_position) = 1;
else 
  poz = poz + 1;
  % we can add the value
  path(poz) = next;
  node = next;
  endif
 
endwhile
  path(poz + 1) = m - 1;
endfunction
