%b) c)
N = 1000; % choose N to be some large number
k = 4;
p = k/(N-1);

M = binornd(1, p, N);
G_rand = digraph(M);
G_rand = simplify(G_rand);
d = distances(G_rand);
d = d(~isinf(d));
max_path_length = max(d);

fprintf('Maximum path length (lattice): %d\n', ceil((N-1)/4));
fprintf('Maximum path length (random): %d\n',...
    max_path_length);

fprintf('Global clustering (lattice): %d\n', 0.5);
fprintf('Global clustering (random): %d\n',...
    global_cc(G_rand));


    