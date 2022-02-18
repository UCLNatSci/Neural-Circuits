function result = plot_graph(G)
    
    fig1 = figure();
    ax1 = axes('Parent',fig1);
    plot(ax1, G, '-ok');
    ax1.Visible = 'off';

    set(fig1,'position',[0,0,300,300]);
    fig1.PaperPositionMode = 'auto';
    fig_pos = fig1.PaperPosition;
    fig1.PaperSize = [fig_pos(3) fig_pos(4)];
    gcc = global_cc(G);
    apl = average_path_length(G);
    fprintf('nodes: %d\r', G.numnodes);
    fprintf('edges: %d\r', G.numedges);
    fprintf('global cc: %d\r', gcc);
    fprintf('average path length: %d\r', apl);

    result = fig1;
end