function result = sub_iso(G1, G2)
    n = G1.numnodes;
    k = G2.numnodes;
    result = [];
    
    % nchoosek([1:n], k) returns a matrix
    % whose rows are every combination of
    % length k of integers 1 ... n.
    combinations = nchoosek([1:n], k);
    % iterate through rows of v 
    % (need to transpose using ')
    for v=combinations'
        % extract the subgraph from G1
        H = subgraph(G1, v);
        % check if the subgraph is
        % isomorphic to G2
        if isisomorphic(G2, H)
            % if it is isomorphic,
            % append v to the result
            result = [result; v'];
        end
    end
end