function result = random_undirected_graph(N, k)
    p = k/(N-1);
    M = triu(binornd(1, p, N), 1);
    M = M + M';
    result = graph(M);
end