M = [0 1 1; 1 0 1; 1 1 0];
G = digraph(M);
fig1 = figure();
ax1 = axes('Parent',fig1);
plot(ax1, G, '-ok');
ax1.Visible = 'off';
set(fig1,'position',[0,0,100,100]);

fig1.PaperPositionMode = 'auto';
fig_pos = fig1.PaperPosition;
fig1.PaperSize = [fig_pos(3) fig_pos(4)];

saveas(gcf,     'K3.pdf');