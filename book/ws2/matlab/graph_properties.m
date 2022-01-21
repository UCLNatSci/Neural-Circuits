h = tracedtotalconnections;
idx = (h{:,3}>=3);
h_source = h{idx,1};
h_target = h{idx,2};
G = digraph(cellstr(h_source),...
    cellstr(h_target));
G = G.simplify();

figure();
histogram(G.outdegree, 'BinMethod', 'integers', 'facealpha', 0.5,...
    'facecolor', 'red', 'edgecolor', 'none');
hold on;
histogram(G.indegree, 'BinMethod', 'integers', 'facealpha', 0.5,...
    'facecolor', 'blue', 'edgecolor', 'none');
xlim([0, 200]);
tic;
M = G.adjacency;
toc;
disp(average_path_length(M));
toc;


