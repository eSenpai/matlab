function [ ivarciuKiekis ] = ivarciuKiekisFunk(matrica)
    %Suskaiciuoja kiek yra ivarciu kiekvienose rungtynese
    %pavyzdziui: ivarciuKiekis(1) = 2;
    %reiskia, kad per pirmas rungtynes, buvo 2 ivarciai

    %n = eiluciu kiekis, zaideju kiekis
    %m = stulpeliu kiekis, rungtyniu kiekis
    [n, m] = size(matrica);
    suma = 0;
    %Ciklas, kuris praeina pro kiekvienas rungtynes ir randa ivarciu kieki
    for i = 1:m
        for z = 1:n
            suma = suma + matrica(z, i);
        end
        ivarciuKiekis(i) = suma;
        suma = 0;
    end
end

