edges = [1 7;
         1 3;
         7 4;
         3 4;
         3 5;
         5 6;
         6 7;
         3 6;
         4 2;
         5 2];
     
G = graph(edges(:,1), edges(:,2));

fig1 = figure();
ax1 = axes('Parent',fig1);
plot(ax1, G, '-ok');

ax1.Visible = 'off';

set(fig1,'position',[0,0,200,200]);
fig1.PaperPositionMode = 'auto';
fig_pos = fig1.PaperPosition;
fig1.PaperSize = [fig_pos(3) fig_pos(4)];

saveas(fig1, 'bfs.pdf');