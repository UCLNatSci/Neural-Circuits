function result = get_successors(M, i) 
    a = M(i,:);
    result = find(a==1);     
end


