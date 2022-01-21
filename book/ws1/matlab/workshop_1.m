clear
G = digraph([0 0 0 0 1 0;
             0 0 0 0 0 0;
             1 0 0 1 0 0;
             0 1 0 0 0 1;
             0 0 0 0 0 1;
             0 0 0 1 0 0])
plot(G, '-ok')
set(gcf,'position',[0,0,200,200])
set(gca, 'Visible', 'off')
gca.Position = [0,0,200,200];


fig = gcf;
fig.PaperPositionMode = 'auto'
fig_pos = fig.PaperPosition;
fig.PaperSize = [fig_pos(3) fig_pos(4)];



clear
G = digraph([0 0 0 0 0 1;
             0 0 0 0 1 0;
             1 1 0 1 0 0;
             0 1 0 1 1 0;
             0 0 0 0 0 0;
             1 0 0 1 0 0])
plot(G, '-ok')
set(gcf,'position',[0,0,200,200])
set(gca, 'Visible', 'off')
gca.Position = [0,0,200,200];

fig = gcf;
fig.PaperPositionMode = 'auto'
fig_pos = fig.PaperPosition;
fig.PaperSize = [fig_pos(3) fig_pos(4)];
saveas(gcf,     'graph2.pdf');


