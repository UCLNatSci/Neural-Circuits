function motifs = motif_spectrum(G, N)
    motifs = zeros(N,1);
    for i=1:N
        H = sample_graph(G, 3);
        motifs(i) = motif_number(H);
    end
    motifs = motifs(motifs~=0);
end