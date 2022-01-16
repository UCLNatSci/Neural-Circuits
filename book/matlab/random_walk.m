
function result = random_walk(M, i, n)
    result = [i];
    while length(result) < n + 1
        succ = get_successors(M, i);
        if length(succ) == 0
            break
        end
        % select random element from succ
        k = randsample(length(succ), 1);
        i = succ(k)
        % append element to result
        result = [result i]
    end
end