h = tracedtotalconnections;

minimum_weight = 0:5:100;
n = length(minimum_weight);
max_component_size = zeros(n,1);

% start timer
tic;

for i=1:n
    idx = (h{:,3}>minimum_weight(i));

    % Extract the corresponding rows
    % and the first and second columns
    h_source = h{idx,1};
    h_target = h{idx,2};

    % Create a graph from the lists of
    % source and target edges
    G = digraph(cellstr(h_source),...
        cellstr(h_target));
    G = G.simplify();

    [bin, binsize] = conncomp(G, 'Type', 'weak');

    max_component_size(i) = max(binsize);
    
end

% stop timer and displayed elapsed time
toc;

proportion = max_component_size / max_component_size(1);

    plot(minimum_weight, proportion, 'LineWidth', 2, 'Color', 'black');
    ylabel('Proportion of neurons in largest component');
    xlabel('Minimum connection weight');


