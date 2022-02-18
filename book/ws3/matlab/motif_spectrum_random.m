function result = motif_spectrum_random(G, n)
    result = zeros(13,1);
    for i=1:n
       v = randsample(G.numnodes, 3);
       H = subgraph(G, v);
       i_class = triplet_class(H);
       if i_class > 0
           result(i_class) = result(i_class) + 1;
       end
    end
    result = result/sum(result);
end