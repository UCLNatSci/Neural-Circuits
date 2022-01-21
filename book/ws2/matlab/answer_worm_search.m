% a) Find nodes downstream of SMDDL
i = G.findnode('SMDDL');
downstream = bfsearch(G, i);
J = subgraph(G, downstream);
plot(J);

% b) Reverse graph to find upstream nodes of SMDDL
G_rev = flipedge(G);
upstream = bfsearch(G_rev, i);
J = subgraph(G, upstream);
plot(J);
    


