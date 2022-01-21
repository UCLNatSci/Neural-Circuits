
% Create digraph
edges = [1 2; 1 3; 4 1; 2 3; 3 2; 3 4; 4 3; 4 2; 2 4]
G = digraph(edges(:,1), edges(:,2));

% Create figure and axes 
fig1 = figure();
ax1 = axes('Parent',fig1);
% Plot 
p = plot(ax1, G, '-ok');
highlight(p, 'Edges', [4 5 6] ,'LineStyle', ':');
ax1.Visible = 'off';

set(fig1,'position',[0,0,300,300]);
fig1.PaperPositionMode = 'auto';
fig_pos = fig1.PaperPosition;
fig1.PaperSize = [fig_pos(3) fig_pos(4)];

saveas(fig1, 'clustering_example.png');


