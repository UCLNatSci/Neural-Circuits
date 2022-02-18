function graph_properties(conn, roi, min_weight)

    idx = (conn{:,3}==roi & conn{:,4}>=min_weight);

    h_source = conn{idx,1};
    h_target = conn{idx,2};

    G = digraph(cellstr(h_source), cellstr(h_target));
    [bin, binsize] = conncomp(G);
    [m, i] = max(binsize);
    idx = (bin == i);
    %G = subgraph(G, idx);
    
    fig1 = plot_graph(G);
    saveas(fig1, sprintf('graph_%s_%d.pdf', roi, min_weight));
        
    n = G.numnodes;
    e = G.numedges;
    p = e/(n^2-n);
    
    M = binornd(1, p, n);
    G_rand = digraph(M);
    G_rand = G_rand.simplify();
    
    fig1 = plot_graph(G_rand);
    saveas(fig1, sprintf('graph_null_%s_%d.pdf', roi, min_weight));
    
end

