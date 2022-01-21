% Calculates the shortest path
% between nodes 1 and 2. Returns
% a vector of node indices
path = shortestpath(G2, 1, 2)

% Calculates a matrix of path
% distances between every pair of nodes
d = distances(G2)

% Returns a vector of successors
% of node 1
s = successors(G2, 1)

% Returns a vector of predecessors
% of node 1
p = predecessors(G2, 1)