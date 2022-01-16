% Create a digraph using an
% adjacency matrix
M = [0 1 0;
     0 0 1;
     1 0 0];
G1 = digraph(M);
figure();
plot(G1);

% Create a digraph using an
% edge list
edges = [1 2;
         2 3;
         3 1];
G2 = digraph(edges(:,1), edges(:,2));
figure();
plot(G2);