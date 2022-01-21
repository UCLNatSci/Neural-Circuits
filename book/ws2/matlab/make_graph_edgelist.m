edges = [3, 4;
         3, 2;
         2, 3]

G = graph();
G = G.addedge(edges(:,1), edges(:,2));
plot(G);