fig1 = figure();
ax1 = axes('Parent',fig1);

edges1 = [1 2; 1 3; 2 3];
G1 = digraph(edges1(:,1), edges1(:,2));

G1.Nodes.Name = {'H1','H2','H3'}';
plot(ax1, G1, '-ok', 'Layout', 'force')
ax1.Visible = 'off';

set(fig1,'position',[0,0,200,200]);
fig1.PaperPositionMode = 'auto';
fig_pos = fig1.PaperPosition;
fig1.PaperSize = [fig_pos(3) fig_pos(4)];

saveas(fig1, 'answer_condensation.pdf');