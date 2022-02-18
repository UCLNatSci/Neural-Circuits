function result = random_graph(n, p)
    % Generate a random simple digraph
    % of order n and edge probability p.
    M = binornd(1, p, n);
    G = digraph(M);
    result = simplify(G); 