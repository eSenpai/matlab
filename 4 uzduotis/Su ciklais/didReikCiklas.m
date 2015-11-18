function [vid, kiekDidReik, didReik, x] = didReikCiklas(x)
    %Randa didziausia reiksme ir ja pakeicia skaiciu, kuris nurodo, kiek
    %yra reiksmiu, kurios didesnes uz vidurki
    
    %vidurkio suma
    suma = 0;

    for i = 1:1:length(x)
        suma = suma + x(i);
    end

    %vidurkis
    vid = suma / length(x);

    %kiek didesniu reiksmiu uz vidurki yra
    kiekDidReik = 0;

    for i = 1:1:length(x)
        if(x(i) > vid)
            kiekDidReik = kiekDidReik + 1;
        end
    end

    %didziausia reiksme
    didReik = 1;

    for i = 1:length(x)
        if(x(i) > x(didReik))
            didReik = i;
        end
    end

    %irasymas i dydziausios reiksmes vieta
    x(didReik) = kiekDidReik;

end

