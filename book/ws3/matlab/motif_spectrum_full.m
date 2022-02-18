function result = motif_spectrum_full(G)
    result = zeros(13,1);
    comb = combnk(1:G.numnodes, 3);
    for i=1:length(comb)
       v = comb(i,:);
       H = subgraph(G, v);
       i_class = triplet_class(H);
       if i_class > 0
           result(i_class) = result(i_class) + 1;
       end
    end
    result = result/sum(result);
end