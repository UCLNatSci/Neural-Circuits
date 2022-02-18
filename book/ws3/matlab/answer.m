
source = IBhub{:,1};
target = IBhub{:,2};

G = digraph(cellstr(source), cellstr(target));

N = 100;

motifs = motif_spectrum(G, N);

p = G.numedges / (G.numnodes^2 - G.numnodes);
M = binornd(1, p, G.numnodes);
G_rand = digraph(M);
G_rand = G_rand.simplify();
motifs_rand = motif_spectrum(G_rand, N);

fig1 = figure();
ax1 = axes('Parent',fig1);
ax1.Visible = 'off';
histogram(ax1, motifs, 'BinMethod', 'integers', 'FaceColor', [0.8 0.8 0.8], 'Normalization', 'probability');
histogram(ax1, motifs_rand, 'BinMethod', 'integers', 'FaceColor', [0.8 0.8 0.8], 'Normalization', 'probability');
xticks(1:13);
%set(ax2, 'ytick',[1, 2, 3]);
ax1.XAxis.TickLength = [0,0];
xlim([0.5, 13.5]);
ylabel(ax1, 'Relative frequency');
xlabel(ax1, 'Motif number');
set(ax1, 'box' , 'off');
set(fig1,'position',[0,0,400,150]);
fig1.PaperPositionMode = 'auto';
fig_pos = fig1.PaperPosition;
fig1.PaperSize = [fig_pos(3) fig_pos(4)];
saveas(fig1, 'motif_distribution.pdf');