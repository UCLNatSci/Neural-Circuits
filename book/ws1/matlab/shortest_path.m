function result = shortest_path(M, i)
    visited = zeros(length(M),1);
    frontier = [i];
    visited(i) = 1;
    result = zeros(length(M),1);
    result(i) = 0;
    d = 0;
    while length(frontier) > 0
        next = [];
        d = d + 1;
        for j=frontier
            for k=get_successors(M, j)
                if visited(k) == 0
                    next = [next k];
                    result(k) = d;
                    visited(k) = 1;
                end
            end
        end
        frontier = next;
    end
end