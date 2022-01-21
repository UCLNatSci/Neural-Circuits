function result = get_lattice(N, d)

    edges = [];

    for i=1:N
        x = [1:d*2]'-d;
        x = x - (x <= 0);
        x = mod(i + x - 1, N) + 1;
        edges = [edges ; [x ones(d*2,1)*i]];
    end

    result = digraph(edges(:,1), edges(:,2));
end
    