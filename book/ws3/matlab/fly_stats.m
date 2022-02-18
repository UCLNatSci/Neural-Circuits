ttc = tracedtotalconnections;
idx = (ttc{:,3} > 500);

h_source = ttc{idx,1};
h_target = ttc{idx,2};

G_fly = digraph(cellstr(h_source), cellstr(h_target));
G_fly = simplify(G_fly);

N = G_fly.numnodes;
e = G_fly.numedges;

p = e / (N^2-N);
M = binornd(1, ones(N)*p);
G_rand = digraph(M, 'OmitSelfLoops');

classes_rand = motif_spectrum_random_full(G_rand, K);

figure();
bar(classes_fly);

figure();
bar(classes_rand);
