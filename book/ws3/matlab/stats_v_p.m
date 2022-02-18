n = 50; % graph size
p = 0:.02:1; % array of p values
N = length(p);
cc = zeros(N, 1);
apl = zeros(N, 1);
% loop through p values and calculate
% average path length and clustering
for i=1:N
    G = random_graph(n, p(i));
    cc(i) = global_cc(G);
    apl(i) = average_path_length(G);
end

% Plot clustering and path length
figure();
plot(p, cc);
hold on;
plot(p, apl);

function result = global_cc(G)
    % Returns global clustering
    % coefficient of simple directed graph G
    cc = zeros(G.numnodes, 1);
    for i=1:G.numnodes
        succ = successors(G, i);
        pre = predecessors(G, i);
        neighbours = unique([succ; pre]);
        H = subgraph(G, neighbours);
        n = H.numnodes;
        m = H.numedges;
        cc(i) = m/(n^2-n);
    end
    result = nanmean(cc);
end