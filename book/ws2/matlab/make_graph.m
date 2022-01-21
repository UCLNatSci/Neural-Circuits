
G = digraph();
% Creates two named nodes and edge between them
G = addedge(G, 'Tokyo', 'Osaka'); 
G = addedge(G, 'Osaka', 'Nagoya');
G = addedge(G, 'Tokyo', 'Kyoto');
G = addedge(G, 3,1);
plot(G);

    