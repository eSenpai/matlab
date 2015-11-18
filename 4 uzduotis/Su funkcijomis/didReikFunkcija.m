function [vid, kiekDidReik, didReik, x] = didReikFunkcija(x)
    %Randa didziausia reiksme ir ja pakeicia skaiciu, kuris nurodo, kiek
    %yra reiksmiu, kurios didesnes uz vidurki
    
    %vidurkio suma
    suma = sum(x);

    %vidurkis
    vid = suma / length(x);
    
    %kiek didesniu reiksmiu uz vidurki yra
    kiekDidReik = find(x > vid);
    kiekDidReik = length(kiekDidReik);
    
    %didziausia reiksme
    didReik = max(x);
    
    %irasymas i dydziausios reiksmes vieta
    vietaVek = find(x == didReik);
    x(vietaVek) = kiekDidReik;
end

