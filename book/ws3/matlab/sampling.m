N = 10;
p = .2;
M = binornd(1, ones(N)*p);
G_rand = digraph(M, 'OmitSelfLoops');
K = 1000;

tic 
classes_full = motif_spectrum_full(G_rand);
toc
classes_rand = motif_spectrum_random(G_rand, K);
toc
classes_neighbours = motif_spectrum_neighbours(G_rand, K);
toc

figure();
plot(G_rand);
figure();
bar([classes_full classes_rand classes_neighbours]);