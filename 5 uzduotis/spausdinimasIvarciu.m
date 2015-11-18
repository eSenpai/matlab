function [] = spausdinimasIvarciu(fID, matrica, ivarciuKiekis)
    %Isspausdiname rungtynes ir tada kiek ivarciu buvo tuose rungtynese
    
    %Nustatome matricos dydi
    [n, m] = size(matrica);
    
    fprintf(fID, 'Kiek rungtynese buvo ivarciu\n');
    
    for i = 1:m
        fprintf(fID, '%d-osios rungtynes: %d\n', i, ivarciuKiekis(i)); 
    end
    fprintf(fID, '\n');
end

