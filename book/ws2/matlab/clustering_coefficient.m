function result = clustering_coefficient(G, i)
    % Returns clustering coefficient of
    % node i of simple directed graph G
    succ = successors(G, i);
    pre = predecessors(G, i);
    neighbours = unique([succ; pre]);
    H = subgraph(G, neighbours);
    n = H.numnodes;
    m = H.numedges;
    result = m/(n^2-n);
end