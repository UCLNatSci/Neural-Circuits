function result = triplet_class(G)
    triplets = {[0 1 0; 0 0 0; 0 1 0],
                [0 1 0; 0 0 1; 0 0 0],
                [0 1 1; 0 0 0; 0 0 0],
                [0 1 0; 1 0 0; 1 0 0],
                [0 1 1; 0 0 0; 0 1 0],
                [0 1 1; 1 0 0; 0 0 0],
                [0 1 0; 0 0 1; 1 0 0],
                [0 1 0; 1 0 0; 1 1 0],
                [0 1 1; 1 0 0; 1 0 0],
                [0 1 1; 1 0 0; 0 1 0],
                [0 1 1; 1 0 1; 0 0 0],
                [0 1 1; 1 0 0; 1 1 0],
                [0 1 1; 1 0 1; 1 1 0]};
    result = 0;
    for i=1:length(triplets)
        H = digraph(triplets{i});
        if isisomorphic(G, H)
            result = i;
        end
    end

end 