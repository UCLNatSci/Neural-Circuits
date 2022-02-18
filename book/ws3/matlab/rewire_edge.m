function result = rewire_edge(G, i)
    G = G.rmedge(i);
    edge = randperm(G.numnodes, 2);
    G = G.addedge(edge(1), edge(2));
    result = G;
end