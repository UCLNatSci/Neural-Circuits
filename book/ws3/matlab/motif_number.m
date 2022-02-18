function result = motif_number(G)
    if isisomorphic(G, digraph([0 1 0; 0 0 0; 0 1 0]))
        result = 1;
    elseif isisomorphic(G, digraph([0 1 0; 0 0 1; 0 0 0]))
        result = 2;
    elseif isisomorphic(G, digraph([0 1 1; 0 0 0; 0 0 0]))
        result = 3;
    elseif isisomorphic(G, digraph([0 1 0; 1 0 0; 1 0 0]))
        result = 4;
    elseif isisomorphic(G, digraph([0 1 1; 0 0 0; 0 1 0]))
        result = 5;
    elseif isisomorphic(G, digraph([0 1 1; 1 0 0; 0 0 0]))
        result = 6;
    elseif isisomorphic(G, digraph([0 1 0; 0 0 1; 1 0 0]))
        result = 7;
    elseif isisomorphic(G, digraph([0 1 0; 1 0 0; 1 1 0]))
        result = 8;
    elseif isisomorphic(G, digraph([0 1 1; 1 0 0; 1 0 0]))
        result = 9;
    elseif isisomorphic(G, digraph([0 1 1; 1 0 0; 0 1 0]))
        result = 10;
    elseif isisomorphic(G, digraph([0 1 1; 1 0 1; 0 0 0]))
        result = 11;
    elseif isisomorphic(G, digraph([0 1 1; 1 0 0; 1 1 0]))
        result = 12;
    elseif isisomorphic(G, digraph([0 1 1; 1 0 1; 1 1 0]))
        result = 13;
    else
        result =0;
    end
end