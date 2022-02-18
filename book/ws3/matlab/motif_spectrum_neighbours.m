function result = motif_spectrum_neighbours(G, n)
    result = zeros(13,1);
    for i=1:n
       j = randi(G.numnodes);
       v = get_neighbours(G, j);
       if length(v) >= 1
           k = v(randi(length(v)));
           v = get_neighbours(G, [j, k]);
           if length(v) >= 1
               l = v(randi(length(v)));
               H = subgraph(G, [j, k, l]);
               i_class = triplet_class(H);
               if i_class > 0
                   result(i_class) = result(i_class) + 1;
               end
           end
       end
    end
    result = result/sum(result);
end