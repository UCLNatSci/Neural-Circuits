N = 300;
p_list = 0:0.1:1;
n = length(p_list);
gcc = zeros(n, 1);
apl = zeros(n, 1);
for i=1:n
    p = p_list(i);
    G = get_lattice(N, 2);
    G = rewire_graph(G, p);
    gcc(i) = global_cc(G);
    apl(i) = average_path_length(G);
end

% Plot the gcc and apl on the same axes,
% Scaling so that both are visible
figure();
plot(p_list, gcc/max(gcc));
hold on;
plot(p_list, apl/max(apl));
