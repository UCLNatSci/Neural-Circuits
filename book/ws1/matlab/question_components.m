% initialise adjacency matrix
M = ...

N = length(M);
% Array to store whether each
% node have been visited
visited = zeros(N, 1);
% Array of component numbers
components = zeros(N, 1);
% Initial component number
c = 1;  
for j=1:N
    if visited(j)==0
        % Perform BFS and loop through
        % result. For each node, set
        % visited to 1 and component to c. 
        ...
        ...
        ...
        % increase component number c by 1
        ...
    end
end
disp(components);


 