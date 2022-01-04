clear;
edges = [1 3; 3 5; 1 5; 2 4; 4 6; 6 2]
 
G = digraph(edges(:,1), edges(:,2));
 
plot(G, '-ok', 'Layout', 'circle');
set(gcf,'position',[0,0,200,200]);
set(gca, 'Visible', 'off');
gca.Position = [0,0,200,200];

fig = gcf;
fig.PaperPositionMode = 'auto';
fig_pos = fig.PaperPosition;
fig.PaperSize = [fig_pos(3) fig_pos(4)];
saveas(gcf, 'weakly_connected.png');
