fig1 = figure();
ax1 = axes('Parent',fig1);
edges1 = [1 2; 2 3; 3 1; 1 4; 4 5; 5 3];
G1 = digraph(edges1(:,1), edges1(:,2));
plot(ax1, G1, '-ok')

ax2 = axes('Parent',fig1);
edges2 = [3 2; 2 1; 1 3; 3 4; 4 5; 5 1];
G2 = digraph(edges2(:,1), edges2(:,2));
G2.Nodes.Name = {'A','C','B', 'E', 'D'}';
plot(ax2, G2, '-xk', 'Layout', 'layered')

subplot(1,2,1, ax1);
subplot(1,2,2, ax2);

ax1.Visible = 'off';
ax2.Visible = 'off';

set(fig1,'position',[0,0,400,200]);
fig1.PaperPositionMode = 'auto';
fig_pos = fig1.PaperPosition;
fig1.PaperSize = [fig_pos(3) fig_pos(4)];

saveas(fig1, 'isomorphic_graphs_2.pdf');