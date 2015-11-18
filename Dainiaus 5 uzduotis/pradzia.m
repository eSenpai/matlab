%Dainius Bautrenas INF5 3 variantas

%Atsidarome faila
fID = fopen('duomenys.dat', 'r');

%Gauname matrica su taskais [stulpeliai, eilutes]
taskai = fscanf(fID, '%f', [5, 6]);

%Tranponuojame, kad atitiktu faila
taskai = taskai';

%Issisaugojame dydi matricos
[n, m] = size(taskai);

%Uzdarome faila
fclose(fID);

%Randame, kiek vidutiniskai tasku per rungtynes pelne komanda
vidKomTaskai = vidKomTaskaiFunk(taskai);

%Randame, vieno zaidejo rungtynese pelnytu tasku vidurki
vidZaidTaskai = vidZaidTaskaiFunk(taskai);

%Randame, zaidejus, kurie per sezona nepelne ne vieno tasko
zaidNepelne = zaidNepelneFunk(taskai);

%Atidarome spausdinimo faila
fID = fopen('rezultatai.rez', 'w');

%Isspausdiname lentele tasku
fprintf(fID, 'Rungtynes\n');
for i = 1:n
    for z = 1:m
        fprintf(fID, '%d ', taskai(i, z));
    end
    fprintf(fID, '\n');
end
fprintf(fID, '\n');

%Isspausdiname kiek vidutiniskai tasku per rungtynes pelne komanda
fprintf(fID, 'Vidutiniskai tasku per rungtynes pelne komanda:\n');
for i = 1:m
    fprintf(fID, '%d komanda: %.2f\n', i, vidKomTaskai(i));
end
fprintf(fID, '\n');

%Isspausdiname vieno zaidejo rungtynese pelnytu tasku vidurki
fprintf(fID, 'Vieno zaidejo, per rungtynes pelnytu tasku vidurkis:\n');
for i = 1:n
    fprintf(fID, '%d rungtynes: %.2f\n', i, vidZaidTaskai(i));
end
fprintf(fID, '\n');

%Isspausdiname zaidejus, kurie per sezona nepelne ne vieno tasko
fprintf(fID, 'Zaidejai, kurie per sezona nepelne ne vieno tasko: ');
fprintf(fID, '%d ', zaidNepelne); 
fprintf(fID, '\n');

%Uzdarome rezultatu faila
fclose(fID);