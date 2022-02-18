fig1 = figure();
ax1 = axes('Parent',fig1);
edges1 = [1 2; 2 3; 3 4; 4 1];
G1 = graph(edges1(:,1), edges1(:,2));
plot(ax1, G1, '-ok', 'Layout', 'circle');

ax2 = axes('Parent',fig1);
G1.Nodes.Name = {'1','4','2', '3'}';
plot(ax2, G1, '-ok', 'Layout', 'circle');

ax3 = axes('Parent',fig1);
edges1 = [1 3; 3 2; 2 4; 4 1];
G3 = graph(edges1(:,1), edges1(:,2));
plot(ax3, G3, '-ok', 'Layout', 'circle');


subplot(1,3,1, ax1);
subplot(1,3,2, ax2);
subplot(1,3,3, ax3);

ax1.Visible = 'off';
ax2.Visible = 'off';
ax3.Visible = 'off';

set(fig1,'position',[0,0,400,100]);
fig1.PaperPositionMode = 'auto';
fig_pos = fig1.PaperPosition;
fig1.PaperSize = [fig_pos(3) fig_pos(4)];

saveas(fig1, 'isomorphism_example.pdf');