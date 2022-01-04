clear
M = [0, 1, 1, 1, 0, 0, 0;
     1, 0, 0, 1, 0, 0, 0;
     0, 0, 0, 1, 1, 0, 1;
     0, 0, 0, 0, 0, 0, 0;
     0, 0, 0, 1, 0, 0, 0;
     0, 0, 0, 1, 0, 0, 1;
     0, 0, 1, 1, 0, 1, 0];
 
G = digraph(M);
H = subgraph(G, [3,4,7]);
H.Nodes.Name = {'3','4','7'}';

fig1 = figure();
ax1 = axes('Parent',fig1);
plot(ax1, G, '-ok');
ax1.Visible = 'off';
set(fig1,'position',[0,0,200,200]);

fig1.PaperPositionMode = 'auto';
fig_pos = fig1.PaperPosition;
fig1.PaperSize = [fig_pos(3) fig_pos(4)];
saveas(fig1, 'egg_laying_circuit.pdf');

fig2 = figure();
ax2 = axes('Parent',fig2);
plot(ax2, H, '-ok');
ax2.Visible = 'off';
set(fig2,'position',[0,0,200,200]);

fig2.PaperPositionMode = 'auto';
fig_pos = fig2.PaperPosition;
fig2.PaperSize = [fig_pos(3) fig_pos(4)];
saveas(fig2, 'egg_laying_circuit_subgraph.pdf');

