h = tracedtotalconnections;
idx = (h{:,3}>=50);
h_source = h{idx,1};
h_target = h{idx,2};
G = digraph(cellstr(h_source),...
    cellstr(h_target));
G = G.simplify();

fprintf('Average path length: %f\r', average_path_length(G));

n = G.numnodes;
clus = zeros(n,1);
for i=1:n
    clus(i) = clustering_coefficient(G, i);
end

clus = clus(~isnan(clus));
fprintf('Clustering coefficient: %f\r', mean(clus));

