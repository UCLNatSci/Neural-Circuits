G = get_lattice(10, 2);
fig1 = figure();
ax1 = axes('Parent',fig1);
plot(ax1, G, '-ok', 'layout', 'circle');
ax1.Visible = 'off';

set(fig1,'position',[0,0,300,300]);
fig1.PaperPositionMode = 'auto';
fig_pos = fig1.PaperPosition;
fig1.PaperSize = [fig_pos(3) fig_pos(4)];

saveas(fig1, 'ring_lattice.pdf');


