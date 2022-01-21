d = b(H);
% Change inf to -1
d(isinf(d)) = -1;
% Find the maximum distance in d
m = max(max(d));
% Find the indices corresponding 
% to the maximum distance
[i,j] = find(d==m);
% There may be more than one,  
% so let's take the first one.
i1 = i(1);
j1 = j(1);

% Find the shortest path between
% these nodes
path = shortestpath(H, i1, j1)
H_plot = plot(H);
highlight(H_plot, path, 'NodeColor',...
    'k','EdgeColor','k')
