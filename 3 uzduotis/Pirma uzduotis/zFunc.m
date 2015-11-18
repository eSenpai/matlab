function [z] = zFunc(q, y)
%Suskaiciuoja z

if (q < 0 && y > 0)
    z = pow(q,3) - abs(q + 2);
else
    z = (2 * sin(q * q) - 1) / (q + 1);

end

