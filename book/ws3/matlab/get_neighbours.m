function result = get_neighbours(G, v)
    result = [];
    for i=v   
        result = [result; successors(G, i); predecessors(G, i)];
    end
    for i=v
        result = result(result~=i);
    end
    result = unique(result);
end
