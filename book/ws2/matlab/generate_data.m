N_nodes = 20;
N_edges = 30;
M = randi(N_nodes, N_edges, 2);
plot(digraph(M(:,1),M(:,2)));

