function [v] = turisNupjKugio(d, D, l)
%Suranda nupjautinio kugio turi v, naudoja virsutinio pagrindo skermeni d,
%apatinio pagrindo skersmeni D, bei kugio sudaramaja krastine l

d = input('d, virsutinis skersmuo: ');
D = input('D, pagrindo skersmuo: ');
l = input('l, kugio sudaramoji: ');

%konvertuoja
r = d / 2;
R = D / 2;

%randa susidarusio trikampio apacia
triApacia = (D - d) / 2;

%randa h, pitagoro pagalba
h = sqrt((triApacia.^2 * (-1)) + l.^2);

%randa v
v = (1/3) * pi * h * (R.^2 + r.^2 + R * r);

end

