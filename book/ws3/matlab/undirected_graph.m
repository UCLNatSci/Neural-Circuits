N_list = 10:50;
n = length(N_list);
gcc = zeros(n, 1);
for i=1:n
    N = N_list(i);
    G = undirected_graph(N, k);
    gcc(i) = global_cc
end
