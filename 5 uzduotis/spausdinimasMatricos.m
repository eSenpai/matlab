function [] = spausdinimasMatricos(fID, matrica)
%Spausdiname pirma zaideja, tada jo rezultata kiekvienose rungtynese

%Suzinome matricos apimtis
[n, m] = size(matrica);

fprintf(fID, '                      Rungtynes\n');

%Spausdiname lentele
for i = 1:n
    fprintf(fID, '%d-asis zaidejas: ', i);
    for z = 1:m
       fprintf(fID, '%2d ', matrica(i,z)); 
    end
    fprintf(fID, '\n');
end

fprintf(fID, '\n');

end

