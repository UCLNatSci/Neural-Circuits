
edges = [1 2; 1 3; 1 4; 5 4; 5 3; 5 2]
G1 = digraph(edges(:,1), edges(:,2));
fig1 = figure();
ax1 = axes('Parent',fig1);
plot(ax1, G1, '-ok', 'Layout', 'force');
ax1.Visible = 'off';

edges = [1 2; 1 3; 1 4; 5 4; 2 3; 5 2]
G2 = digraph(edges(:,1), edges(:,2));
ax2 = axes('Parent',fig1);
plot(ax2, G2, '-ok', 'Layout', 'force');ax2.Visible = 'off';

subplot(1,2,1, ax1);
subplot(1,2,2, ax2);

set(fig1,'position',[0,0,400,150]);
fig1.PaperPositionMode = 'auto';
fig_pos = fig1.PaperPosition;
fig1.PaperSize = [fig_pos(3) fig_pos(4)];

saveas(fig1, 'question_invariant_1.pdf');

edges = [1 2; 1 3; 1 4; 1 5; 1 6; 1 7; 2 3; 3 4; 4 5; 5 6; 6 7; 7 2]
G3 = graph(edges(:,1), edges(:,2));
fig1 = figure();
ax3 = axes('Parent',fig1);
plot(ax3, G3, '-ok', 'Layout', 'force');
ax3.Visible = 'off';

edges = [1 2; 1 3; 2 3; 2 4; 3 4; 3 5; 4 5; 4 6; 5 6; 5 7; 6 7]
G4 = graph(edges(:,1), edges(:,2));
ax4 = axes('Parent',fig1);
plot(ax4, G4, '-ok', 'Layout', 'force');
ax4.Visible = 'off';

set(fig1,'position',[0,0,400,150]);
fig1.PaperPositionMode = 'auto';
fig_pos = fig1.PaperPosition;
fig1.PaperSize = [fig_pos(3) fig_pos(4)];

subplot(1,2,1, ax3);
subplot(1,2,2, ax4);

set(fig1,'position',[0,0,400,150]);
fig1.PaperPositionMode = 'auto';
fig_pos = fig1.PaperPosition;
fig1.PaperSize = [fig_pos(3) fig_pos(4)];

saveas(fig1, 'question_invariant_2.pdf');


