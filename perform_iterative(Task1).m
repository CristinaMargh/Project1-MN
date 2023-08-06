function [x, err, steps] = perform_iterative (G, c, x0, tol, max_steps)
	% G -> iteration matrix
	% c -> iteration vector
	% x0 -> initial solution
	% tol -> accepted tolerance (norm of the difference between two solutions)
	% max_steps -> the maximum number of iterations
	
	% x -> final solution
	% err -> last calculated difference (as an euclidean norm)
	% steps -> actual number of steps performed

   % TODO: perform_iterative implementation
   for i = 1 : max_steps + 1
     x = G * x0 + c;
     if norm(x - x0) > tol 
       % we keep iterating
       x0 = x;
      else 
       % we reached an accepted error
       steps = i;
       err = norm(x - x0);
       break;
     endif
   endfor
   if i == max_steps + 1
    err = norm(x - x0);
    steps = max_steps + 1;
  endif
   endfunction
