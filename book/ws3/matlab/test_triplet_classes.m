classes = zeros(16,1);
perms = permn([0 1], 6);
for p = perms'
    M = zeros(3);
    M(1,2) = p(1);
    M(1,3) = p(2);
    M(2,1) = p(3);
    M(2,3) = p(4);
    M(3,1) = p(5);
    M(3,2) = p(6);
    G = digraph(M);
    i=triplet_class(G);
    classes(i) = 1;
end

