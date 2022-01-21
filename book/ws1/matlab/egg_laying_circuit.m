clear
M = [0, 1, 1, 1, 0, 0, 0;
     1, 0, 0, 1, 0, 0, 0;
     0, 0, 0, 1, 1, 0, 1;
     0, 0, 0, 0, 0, 0, 0;
     0, 0, 0, 1, 0, 0, 0;
     0, 0, 0, 1, 0, 0, 1;
     0, 0, 1, 1, 0, 1, 0];
 
 
 G = digraph(M);
 edges = G.Edges{:,1};
 
 formatSpec = "[%d, %d]";
 edge_str = compose(formatSpec,edges);
 edge_txt = join(edge_str, ', ');
 disp(edge_txt);
 
 numnodes = G.numnodes;
 disp(numnodes);
 node_str = strings(1, numnodes);
 for i=1:numnodes
     succ = successors(G, i);
     if length(succ) == 0
         str = "[]";
     else
         str = '[' + join(string(successors(G, i)), ', ') + ']';
     end
     node_str(i) = str;
 end
 
 node_txt = join(node_str, ', ');
 disp(node_txt);
 
 
plot(G, '-ok');
set(gcf,'position',[0,0,200,200]);
set(gca, 'Visible', 'off');
gca.Position = [0,0,200,200];

fig = gcf;
fig.PaperPositionMode = 'auto';
fig_pos = fig.PaperPosition;
fig.PaperSize = [fig_pos(3) fig_pos(4)];
saveas(gcf,     'egg_laying_circuit.png');
