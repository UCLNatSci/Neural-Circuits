function result = sample_graph(G, n)
    a = randperm(G.numnodes, n);
    result = subgraph(G, a);
end