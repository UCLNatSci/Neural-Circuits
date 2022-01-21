
edges = [1 2; 2 3; 3 1; 1 4; 4 1; 5 2; 5 3; 1 6; 6 5; 1 5; 4 6; 6 4]
G = digraph(edges(:,1), edges(:,2));

fig1 = figure();
ax1 = axes('Parent',fig1);
plot(ax1, G, '-ok');
ax1.Visible = 'off';

x = G.outdegree;
ax2 = axes('Parent',fig1);
histogram(ax2, x, 'BinMethod', 'integers', 'FaceColor', 'none');
set(ax2, 'ytick',[1, 2, 3]);
ax2.XAxis.TickLength = [0,0];
ylabel(ax2, 'Frequency');
xlabel(ax2, 'Outdegree');
set(ax2, 'box' , 'off');

acd = G.numedges/(G.numnodes^2-G.numnodes)

subplot(1,2,1, ax1);
subplot(1,2,2, ax2);

set(fig1,'position',[0,0,400,200]);
fig1.PaperPositionMode = 'auto';
fig_pos = fig1.PaperPosition;
fig1.PaperSize = [fig_pos(3) fig_pos(4)];

saveas(fig1, 'degree_distribution.pdf');


