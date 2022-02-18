motifs = {
                [0 1 0; 0 0 0; 0 1 0],
                [0 1 0; 0 0 1; 0 0 0],
                [0 0 0; 1 0 1; 0 0 0],
                [0 1 0; 1 0 0; 0 0 0]};
n = length(motifs);
fig1 = figure();
for i=1:n
    M = motifs{i};
    G = digraph(M);
    ax1 = axes('Parent',fig1);
    plot(ax1, G, '-ok', 'Layout', 'circle', 'NodeLabel',{});
    subplot(1,n,i, ax1);
    ax1.Visible = 'off';
end

set(fig1,'position',[0,0,300,100]);
fig1.PaperPositionMode = 'auto';
fig_pos = fig1.PaperPosition;
fig1.PaperSize = [fig_pos(3) fig_pos(4)];

saveas(fig1, 'triplet_motifs_2.pdf');
