function cycle = cycle_graph(M)
    cycle = false;
    for i = 1:length(M)
        if cycle_exists(M, i)
            cycle = true;
        end
    end
end