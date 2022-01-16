clear;
edges = [1 2; 1 4; 2 3; 3 1; 4 3; 3 6; 4 5; 5 6; 8 5; 6 7; 7 8; 6 4]
 
G = digraph(edges(:,1), edges(:,2));
 
plot(G, '-ok');
set(gcf,'position',[0,0,200,200]);
set(gca, 'Visible', 'off');
gca.Position = [0,0,200,200];

fig = gcf;
fig.PaperPositionMode = 'auto';
fig_pos = fig.PaperPosition;
fig.PaperSize = [fig_pos(3) fig_pos(4)];
saveas(gcf, 'shortest_path_example.png');
