% Egg-laying graph
M1 = [0, 1, 1, 1, 0, 0, 0;
     1, 0, 0, 1, 0, 0, 0;
     0, 0, 0, 1, 1, 0, 1;
     0, 0, 0, 0, 0, 0, 0;
     0, 0, 0, 1, 0, 0, 0;
     0, 0, 0, 1, 0, 0, 1;
     0, 0, 1, 1, 0, 1, 0];
 G1 = digraph(M1);
 
 % Graph from question
 M2 = [0, 1, 1, 0;
       0, 0, 1, 1;
       0, 0, 0, 0;
       0, 0, 1, 0];
 G2 = digraph(M2);
 
 % Get subgraph of egg-laying graph
 H = subgraph(G1, [1,3,4,5]);
 
 % Check if it is isomorphic
 disp(isisomorphic(H, G2));