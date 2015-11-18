function [vidKomTaskai] = vidKomTaskaiFunk(taskai)
    %Randame, kiek vidutiniskai tasku per rungtynes pelne komanda

    %Suzinome matmenis matricos
    [n, m] = size(taskai);

    %Saugosime suma kiekvienu rungtyniu
    suma = 0;
    
    for i = 1:m
        for z = 1:n
            suma = suma + taskai(z, i); 
        end
        
        %Issaugos kiekvienu rungtyniu vidurki, n zaideju kiekis
        vidKomTaskai(i) = suma / n;
        
        %Anuliuojame suma
        suma = 0;
    end

end

