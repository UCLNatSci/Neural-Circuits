function result = rewire_graph(G, p)
    for i=1:G.numnodes
        r = binornd(1, p);
        if r
            G = rewire_edge(G, i); 
        end
    end
    result = G;
end