function [lygRungKiekis] = lygiuRungtyniuFunk(matrica)
    %Suskaiciuoja, kiek yra rungtyniu, pasibaigusiu lygiosiomis
    
    %Suzinome matricos dydi
    [n, m] = size(matrica);
    
    %sk, tai skaicius, kuris turi buti lygus visiems zaideju rezultatams
    sk = 0;
    
    %temp, tai trumpalaikis skaicius, kuris issaugoja ar sitos rungtynes
    %yra lygios (+1) ar ne (+0)
    temp = 0;
    
    %Skaicius, kuris nurodo, kiek lygiu rungciu yra
    lygRungKiekis = 0;
    
    %Suzinome ar buvo rungtyniu, kurios baigesi lygiosiomis
    for i = 1:m
        for z = 1:n
            %Jei ziurime pirma karta, kai dar nezinome, kam sk turi buti
            %lygus, tai ji nustatome
            if(z == 1)
                sk = matrica(z, i);
            else
                %Jei sk yra lygus kitam skaiciui, tai temp paliekam 1
                %Kitu atveju nustatome, kad rungtynes nelygios, todel
                %temp = 0, kad neuzskaitytu kaip lygias rungtynes
                if(sk == matrica(z, i))
                    temp = 1;
                else
                    temp = 0;
                    break;
                end
            end
        end
        lygRungKiekis = lygRungKiekis + temp;
    end


end

