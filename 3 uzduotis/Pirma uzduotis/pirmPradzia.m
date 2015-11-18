%Pradzia programos, pagrindinis ciklas, 19 variantas

%gauname informacija
y0 = input('y0, skaicius, nuo kurio prades skaiciuoti: ');
hy = input('hy, skaicius, kuris nurodo skaiciaus didejima: ');
yn = input('yn, skaicius, nurodantis galutini didejimo skaiciu: ');
a = input('a, venkite 0 skaiciaus: ');

%nuo y0 iki yn didejant hy
for y = y0:hy:yn
    %apskaiciuoja w ir isaugoja i vektoriu, y vietoje
    w(y) = wFunc(a, y);
    
    %apskaiciuoja q, naudoja w vektoriaus, y vieta
    q = qFunc(y, w(y));
    
    %apskaiciuoja z
    z = zFunc(q, y);
    
    %issaugoja y reiksme i tempY vektoriu, trumpam
    tempY(y) = y;
    
    %nubrezia grafika
    plot(w, tempY)
end
