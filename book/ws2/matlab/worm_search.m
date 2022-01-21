i = G.findnode('SMDDL');
downstream = bfsearch(G, i);
J = subgraph(G, downstream);
plot(J);