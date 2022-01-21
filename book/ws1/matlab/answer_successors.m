M = [0, 1, 1, 1, 0, 0, 0;
     1, 0, 0, 1, 0, 0, 0;
     0, 0, 0, 1, 1, 0, 1;
     0, 0, 0, 0, 0, 0, 0;
     0, 0, 0, 1, 0, 0, 0;
     0, 0, 0, 1, 0, 0, 1;
     0, 0, 1, 1, 0, 1, 0];
 
 % i is the starting node
 i = 1;
 
 % a) Print all length-2 walks
 
 disp('length-2 walks:')

 v1 = get_successors(M, i);
 % Loop through successors of node i
 for j=v1
     v2 = get_successors(M, j);
     % Loop through successors of node j
     for k=v2
        disp([i, j, k]);
     end
 end
 
 % b) Print all length-2 paths
 
  disp('length-2 paths:')
 
  v1 = get_successors(M, i);
 % Loop through successors of node i
 for j=v1
     % check if j is a repeated node
     if j ~= i
         v2 = get_successors(M, j);
         % Loop through successors of node i
         for k=v2 
            % check if k is a repeated node
            if k ~= i & k ~= j
                disp([i, j, k]);
            end
         end
     end
 end