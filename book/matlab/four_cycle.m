edges = [1 2; 2 3; 3 4; 4 1];

G1 = digraph(edges(:,1), edges(:,2));
plot(G1);

fig1 = figure();
ax1 = axes('Parent',fig1);
plot(ax1, G1, '-ok');
ax1.Visible = 'off';
set(fig1,'position',[0,0,100,100]);

fig1.PaperPositionMode = 'auto';
fig_pos = fig1.PaperPosition;
fig1.PaperSize = [fig_pos(3) fig_pos(4)];
saveas(fig1, 'four_cycle.pdf');

