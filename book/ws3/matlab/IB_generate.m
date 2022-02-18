trc = tracedroiconnections;

idx = (trc{:,3}=='IB');

source = trc{idx,1};
target = trc{idx,2};

G = digraph(cellstr(source), cellstr(target));

idx = G.outdegree + G.indegree > 100;

G_hub = subgraph(G, idx);

writetable(G_hub.Edges, 'IB_hub.txt');

%IB_hub  = trc(idx,{'bodyId_pre', 'bodyId_post'});

%writetable(IB_hub, 'IB_hub.txt')