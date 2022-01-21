% a)
% Determine the (weakly-connected)
% components of CE-10
[bin,binsize] = conncomp(G,'Type','weak');
[m, i_max] = max(binsize);
idx = (bin == i_max);
H = subgraph(G, idx);
plot(H);

% b)
% Number of components in CE-10
disp(length(binsize));

% c)
% Number of neurons in second biggest component
[B, I] = sort(binsize);
disp(B(end-1));

% d)
% Get indices of nodes in 2nd largest component
idx = (bin == I(end-1));
J = subgraph(G, idx);
plot(J);

