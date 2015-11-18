function [vidZaidTaskai] = vidZaidTaskaiFunk(taskai)
    %Randame, vieno zaidejo rungtynese pelnytu tasku vidurki
    
    %Suzinome dydi matricos
    [n, m] = size(taskai);
    
    %Saugosime suma tasku, kiekvieno zaidejo
    suma = 0;
    
    for i = 1:n
        for z = 1:m
            suma = suma + taskai(i, z);
        end
        
        %Issaugojam vidurki kiekvieno zaidejo
        vidZaidTaskai(i) = suma / m;
        
        %Anuliuojam suma
        suma = 0;
    end
    
end

