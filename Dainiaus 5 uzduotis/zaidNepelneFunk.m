function [zaidNepelne] = zaidNepelneFunk(taskai)
    %Randame, zaidejus, kurie per sezona nepelne ne vieno tasko
    
    %Suzinome matricos dydi
    [n, m] = size(taskai);
    
    %Jei 'buvo' yra netiesa ( = 0), tada zinome, kad zmogus tasku negavo
    %Jei tiesa ( = 1), reiskiasi zmogus turi tasku, tad ji ignoruojame
    buvo = 0;
    
    %Saugosime kiek zmoniu neturi tasku, vektoriaus indeksas negali buti 0
    %Todel rasome kiek = 1
    kiek = 1;
    
    for i = 1:n
        for z = 1:m
            %Jei zmogus turi tasku, reiskiasi buvo = tiesa
            if taskai(i, z) ~= 0
                buvo = 1;
            end
        end
        
        if buvo == 0
            %Cia saugosime zmoniu eiles numerius, kurie neturi tasku
            zaidNepelne(kiek) = i;
            %Pridedame, nes vienu zmogumi padaugejo
            kiek = kiek + 1;
        end
        
        %Nustatome, kad 'buvo' bus netiesa, jeigu tasku neras
        buvo = 0;
    end
end

