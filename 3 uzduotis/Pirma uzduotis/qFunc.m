function [q] = qFunc(y, w)
%Suskaiciuoja q reiksme

if (w > 2 && y >= 1 && y <= 3)
    q = log10(sin(y) + 2);
elseif (y > 3)
    q = (4 * y + 1) / 3;
else
    q = (1 / y) * (sqrt(y) + 4);
    
end

