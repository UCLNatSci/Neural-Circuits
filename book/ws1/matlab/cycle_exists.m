function cycle = cycle_exists(M, i)
    visited = zeros(length(M),1);
    frontier = [i];
    visited(i) = 1;
    result = [i];
    cycle = false;
    while length(frontier) > 0
        next = [];
        for j=frontier
            for k=get_successors(M, j)
                if k == i
                    cycle = true;
                end
                if visited(k) == 0
                    next = [next k];
                    result = [result k];
                    visited(k) = 1;
                end
            end
        end
        frontier = next;
    end
end