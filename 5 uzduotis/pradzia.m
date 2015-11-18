%Dominykas Litvaitis INF5 19 variantas

%Failo atidarymas
fID = fopen('duomenys.dat','r');

%Nuskaitome matrica
matrica = fscanf(fID,'%f', [6 , 4]);

%Transponuojam matrica
matrica = matrica';

%Nuskaitome vektoriu
vektorius = fscanf(fID, '%f');

%Vektoriu transponuojame
vektorius = vektorius';

%Uzdarome faila
fclose(fID);

%Suskaiciuojame, kiek ivarciu imusta per kiekvienas rungtynes
ivarciuKiekis = ivarciuKiekisFunk(matrica);

%Suskaiciuojame, kiek rungtyniu baigesi lygiosiomis
lygRungKiekis = lygiuRungtyniuFunk(matrica);

%Suskaiciuojame, kokiu didziausiu ivarciu skirtumu baigesi rungtynes
didSkirtumas = didSkirtumasFunk(matrica);

%Spausdinimas
fID = fopen('rezultatas.dat', 'w');

%Spausdiname matrica
spausdinimasMatricos(fID, matrica);

%Spasudiname ivarciu kieki per kiekvienas rungtynes
spausdinimasIvarciu(fID, matrica, ivarciuKiekis);

%Spausdiname, kiek lygiu rungtyniu buvo
fprintf(fID, 'Rungtyniu kiekis, kurios baigesi lygiosiomis: %d\n\n', lygRungKiekis);

%Spausdiname, koks didziausias skirtumas tasku buvo
fprintf(fID, 'Didziausias ivarciu skirtumas: %d\n\n', didSkirtumas);

%Spausdiname praleistu ivarciu kieki, kiekvienose rungtynese
fprintf(fID, 'Praleistu ivarciu kiekis: ');
fprintf(fID, '%d ', vektorius);
fprintf(fID, '\n');

%Uzdarome faila
fclose(fID);