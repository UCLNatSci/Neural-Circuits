% a)
% b)
trc = tracedroiconnections;
idx = (trc{:,3} == 'aL(R)' & trc{:,4}>=10);

source = trc{idx,1};
target = trc{idx,2};

G = digraph(cellstr(source), cellstr(target));

G = G.simplify();

[bin, binsize] = conncomp(G);
[m, i] = max(binsize);
idx = (bin == i);
G = subgraph(G, idx);

% c)
n = G.numnodes;
e = G.numedges;

p = e/(n^2-n);

% d)

M = binornd(1, p, n);
G_null = digraph(M);
G_null = G_null.simplify();
disp(G.numedges);
disp(G_null.numedges);

% e)

apl = average_path_length(G);
gcc = global_cc(G);
apl_null = average_path_length(G_null);
gcc_null = global_cc(G_null);

% f)
norm_apl = apl/apl_null;
norm_gcc = gcc/gcc_null;

