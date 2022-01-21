% Plot three digraphs 

fig1 = figure();
ax1 = axes('Parent',fig1);

edges1 = [1 2; 2 3; 3 1; 1 4];
G1 = graph(edges1(:,1), edges1(:,2));
plot(ax1, G1, '-ok')

ax2 = axes('Parent',fig1);
edges2 = [1 2; 2 3; 3 1; 1 3];
G2 = digraph(edges2(:,1), edges2(:,2));
G2.Nodes.Name = {'A','C','B'}';
plot(ax2, G2, '-ok')

ax3 = axes('Parent',fig1);
edges3 = [1 2; 1 2; 2 3; 3 1; 1 3; 2 2];
G3 = digraph(edges3(:,1), edges3(:,2));
plot(ax3, G3, '-ok')

subplot(1,3,1, ax1);
subplot(1,3,2, ax2);
subplot(1,3,3, ax3);

ax1.Visible = 'off';
ax2.Visible = 'off';
ax3.Visible = 'off';

text(ax1, 0.5, -0.1, 'Simple graph',...
    'Units', 'normalized',...
    'HorizontalAlignment', 'center',...
    'VerticalAlignment', 'bottom');
text(ax2, 0.5, -0.1, 'Simple directed graph',...
    'Units', 'normalized',...
    'HorizontalAlignment', 'center',...
    'VerticalAlignment', 'bottom');
text(ax3, 0.5, -0.1, 'Multigraph',...
    'Units', 'normalized',...
    'HorizontalAlignment', 'center',...
    'VerticalAlignment', 'bottom');

set(fig1,'position',[0,0,600,200]);
fig1.PaperPositionMode = 'auto';
fig_pos = fig1.PaperPosition;
fig1.PaperSize = [fig_pos(3) fig_pos(4)];

saveas(fig1, 'graphs.pdf');