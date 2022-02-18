function result = global_cc(G)
    % Returns global clustering
    % coefficient of simple directed graph G
    cc = zeros(G.numnodes, 1);
    for i=1:G.numnodes
        succ = successors(G, i);
        pre = predecessors(G, i);
        neighbours = unique([succ; pre]);
        H = subgraph(G, neighbours);
        n = H.numnodes;
        m = H.numedges;
        cc(i) = m/(n^2-n);
    end
    result = nanmean(cc);
end