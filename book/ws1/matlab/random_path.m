
function result = random_path(M, i)
    visited = zeros(length(M),1);
    visited(i) = 1;
    result = [i];
    while true
        succ = get_successors(M, i);
        % select successors which have not been visited
        succ = succ(visited(succ)==0);
        disp(succ)
        if length(succ) == 0
            break
        end
        n = randsample(length(succ), 1);
        i = succ(n)
        result = [result i];
        visited(i) = 1;
    end
end