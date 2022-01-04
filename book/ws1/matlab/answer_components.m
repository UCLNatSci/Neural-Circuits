M = [0, 1, 0, 0, 0;
     1, 0, 0, 0, 0;
     0, 0, 0, 1, 0;
     0, 0, 1, 0, 0;
     0, 0, 0, 0, 1]
N = length(M);

% Array to store whether each
% node have been visited
visited = zeros(N, 1);
% Array of component numbers
components = zeros(N, 1);
% Initial component number
c = 1;
% Loop through all nodes
for k=1:N
    % if the node hasn't been visited...
    if visited(k)==0
        % ...perform BFS and loop through
        % result. Update visited and 
        % components arrays. 
        v = bfs(M, k);
        for k=v
            visited(k) = 1;
            components(k) = c;
        end
        % update component number
        c = c + 1;
    end
end
disp(components);