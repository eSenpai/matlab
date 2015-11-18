function [didSkirtumas] = didSkirtumasFunk(matrica)
    %Suskaiciuojame, kokiu didziausiu ivarciu skirtumu baigesi rungtynes
    
    %Suzinome matricos dydi
    [n, m] = size(matrica);
    
    %Surandame didziausia kieki ivarciu ir maziausia kieki ivarciu
    for i = 1:m
        for z = 1:n
            %Nustatome pradines reiksmes, kad turetu su kuo lyginti
            if(z == 1)
                did = matrica(z, i);
                maz = matrica(z, i);
            else
                %Suzinome max ir min reiksmes
                if(did < matrica(z, i))
                    did = matrica(z, i);
                end
                if(maz > matrica(z, i))
                    maz = matrica(z, i);
                end
            end
        end
        %Suskaiciuojame kiekvienu rungtyniu skirtumus
        skirtumas(i) = did - maz;
        did = 0;
        maz = 0;
    end
    
    %Randame didziausia skirtuma
    didSkirtumas = max(skirtumas);
end