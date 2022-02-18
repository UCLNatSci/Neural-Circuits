motifs = {
                [0 1 0; 0 0 0; 0 1 0],
                [0 1 0; 0 0 1; 0 0 0],
                [0 1 1; 0 0 0; 0 0 0],
                [0 1 0; 1 0 0; 1 0 0],
                [0 1 1; 0 0 0; 0 1 0],
                [0 1 1; 1 0 0; 0 0 0],
                [0 1 0; 0 0 1; 1 0 0],
                [0 1 0; 1 0 0; 1 1 0],
                [0 1 1; 1 0 0; 1 0 0],
                [0 1 1; 1 0 0; 0 1 0],
                [0 1 1; 1 0 1; 0 0 0],
                [0 1 1; 1 0 0; 1 1 0],
                [0 1 1; 1 0 1; 1 1 0]};
labels = {'m_1^3', 'm_2^3', 'm_3^3', 'm_4^3', 'm_5^3', 'm_6^3',...
    'm_7^3', 'm_8^3', 'm_9^3', 'm_{10}^3', 'm_{11}^3', 'm_{12}^3',...
    'm_{13}^3'}
n = length(motifs);
fig1 = figure();
for i=1:n
    M = motifs{i};
    G = digraph(M);
    ax1 = axes('Parent',fig1);
    plot(ax1, G, '-ok', 'Layout', 'circle', 'NodeLabel',{});
    subplot(3,ceil(n/3),i, ax1);
    ax1.Visible = 'off';
    text(ax1, 0, -1.3, labels(i));
end

set(fig1,'position',[0,0,400,300]);
fig1.PaperPositionMode = 'auto';
fig_pos = fig1.PaperPosition;
fig1.PaperSize = [fig_pos(3) fig_pos(4)];

saveas(fig1, 'triplet_motifs.pdf');
