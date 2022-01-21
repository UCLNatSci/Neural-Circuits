edges = [1 5;
         5 9;
         9 7;
         7 1;
         7 2;
         5 4;
         2 4;
         4 2;
         3 4;
         8 4;
         6 3;
         3 8;
         8 6;
         6 9];
G = digraph(edges(:,1), edges(:,2));

fig1 = figure();
ax1 = axes('Parent',fig1);
plot(ax1, G, '-ok');

ax1.Visible = 'off';
set(fig1,'position',[0,0,200,200]);
fig1.PaperPositionMode = 'auto';
fig_pos = fig1.PaperPosition;
fig1.PaperSize = [fig_pos(3) fig_pos(4)];

saveas(fig1, 'question_scc.pdf');