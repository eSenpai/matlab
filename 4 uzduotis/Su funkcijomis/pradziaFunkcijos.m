%Dominykas Litvaitis INF5 4 Darbas
%19 variantas

%naudojame funkcijas ir indeksavima

%atidarome faila
fID = fopen('duomenys.dat', 'r');

%issaugojame duomenu eilute i x masyva
x = fscanf(fID, '%f');

%uzdarome faila
fclose(fID);

%paverciame kintamuosius i eilute
x = x';

%radimas kintamuju
[vid, kiekDidReik, didReik, x] = didReikFunkcija(x);

%atidarome faila
fID = fopen('gauta.dat', 'w');

%spausdinimas
fprintf(fID, 'Vidurkis: %.2f \n', vid);

fprintf(fID, 'Kiek yra reiksmiu, didesniu uz vidurki: %d \n', kiekDidReik);

fprintf(fID, 'X vektorius: ');
fprintf(fID, '%d ', x);
fprintf(fID, '\n');