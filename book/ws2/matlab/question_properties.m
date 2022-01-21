acd = H.numedges / (H.numnodes^2 - H.numnodes);

histogram(H.indegree);
hold on;
histogram(H.outdegree);

H = digraph(randi([0 1], 4));
H = H.simplify();

clusters = zeros(1, H.numnodes);

%degree = H.indegree + H.outdegree;

for i=1:H.numnodes
    neighbours = unique([successors(H,i);predecessors(H,i)]);
    K = subgraph(H, neighbours);
    n = K.numnodes;
    clusters(i) = K.numedges/(n^2-n);
end
disp(clusters);
disp(clustering_coef_bd(H.adjacency));

