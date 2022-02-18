clear;
M = [0, 1, 1, 1, 0, 0, 0;
     1, 0, 0, 1, 0, 0, 0;
     0, 0, 0, 1, 1, 0, 1;
     0, 0, 0, 0, 0, 0, 0;
     0, 0, 0, 1, 0, 0, 0;
     0, 0, 0, 1, 0, 0, 1;
     0, 0, 1, 1, 0, 1, 0];
 
G = digraph(M);
H = subgraph(G, [1,3,4,5]);

fig1 = figure();
ax1 = axes('Parent',fig1);
plot(ax1, H, '-ok');
ax1.Visible = 'off';
set(fig1,'position',[0,0,200,200]);

fig1.PaperPositionMode = 'auto';
fig_pos = fig1.PaperPosition;
fig1.PaperSize = [fig_pos(3) fig_pos(4)];
saveas(fig1, 'question1.pdf');
