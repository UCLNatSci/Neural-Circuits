edges = [1 2; 2 3; 3 1; 3 4; 3 5; 4 5; 5 4; 1 6; 3 6; 6 8; 5 7; 7 8; 8 7]

G1 = digraph(edges(:,1), edges(:,2));
plot(G);

fig1 = figure();
ax1 = axes('Parent',fig1);
plot(ax1, G1, '-ok');
ax1.Visible = 'off';
set(fig1,'position',[0,0,300,200]);

fig1.PaperPositionMode = 'auto';
fig_pos = fig1.PaperPosition;
fig1.PaperSize = [fig_pos(3) fig_pos(4)];
saveas(fig1, 'question_condensation.pdf');

