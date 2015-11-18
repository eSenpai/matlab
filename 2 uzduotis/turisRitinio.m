function [v] = turisRitinio()
%Suranda ritinio turi v, naudoja skersmeni d ir aukstine h 

d = input('d, skersmuo: ');
h = input('h, aukstine: ');

%konvertuoja
r = d / 2;

v = pi * r.^2 * h

end

