fig1 = figure();
ax1 = axes('Parent',fig1);
edges1 = [1 2; 2 1; 1 3; 3 2];
G1 = digraph(edges1(:,1), edges1(:,2));
plot(ax1, G1, '-ok')

ax2 = axes('Parent',fig1);
edges2 = [2 3; 3 2; 2 1; 1 3];
G2 = digraph(edges2(:,1), edges2(:,2));
G2.Nodes.Name = {'A','C','B'}';
plot(ax2, G2, '-xk')

subplot(1,2,1, ax1);
subplot(1,2,2, ax2);

ax1.Visible = 'off';
ax2.Visible = 'off';

set(fig1,'position',[0,0,400,200]);
fig1.PaperPositionMode = 'auto';
fig_pos = fig1.PaperPosition;
fig1.PaperSize = [fig_pos(3) fig_pos(4)];

saveas(fig1, 'isomorphic_graphs.pdf');

fig2 = figure();
ax3 = axes('Parent',fig2);
edges3 = [1 5; 2 6; 3 7; 4 8; 1 2; 2 4; 4 3; 3 1; 5 6; 6 8; 8 7; 7 5];
G3 = graph(edges3(:,1), edges3(:,2));
plot(ax3, G3, '-ok')
ax4 = axes('Parent',fig2);
G4 = graph(edges3(:,1), edges3(:,2));
G4.Nodes.Name = {'2','7','1','3','4','8','5','6'}';
plot(ax4, G4, '-ok', 'XData', [0, 0, 1, 1, 2, 2, 3, 3], 'YData', [0, 1, 1, 0, 1, 0, 0, 1])

subplot(1,2,1, ax3);
subplot(1,2,2, ax4);

ax3.Visible = 'off';
ax4.Visible = 'off';

set(fig2,'position',[0,0,400,200]);
fig2.PaperPositionMode = 'auto';
fig_pos = fig2.PaperPosition;
fig2.PaperSize = [fig_pos(3) fig_pos(4)];

saveas(fig2, 'isomorphic_graphs_3.pdf');

