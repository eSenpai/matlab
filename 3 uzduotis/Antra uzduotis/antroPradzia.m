%Patikrina ar skaiciai x1, x2, x3 lygus E, jei taip juos isspausdina
%19 variantas

%duomenu gavimas
x1 = input('x1: ');
x2 = input('x2: ');
x3 = input('x3: ');
E = input('E: ');

if (x1 == E && x2 == E && x3 == E)
    disp('x1: ');
    disp(x1);
    disp('x2: ');
    disp(x2);
    disp('x3: ');
    disp(x3);
elseif (x1 == E && x2 == E)
    disp('x1: ');
    disp(x1);
    disp('x2: ');
    disp(x2);
elseif (x1 == E && x3 == E)
    disp('x1: ');
    disp(x1);
    disp('x3: ');
    disp(x3);
elseif (x2 == E && x3 == E)
    disp('x2: ');
    disp(x2);
    disp('x3: ');
    disp(x3);
elseif (x1 == E)
    disp('x1: ');
    disp(x1);
elseif (x2 == E)
    disp('x2: ');
    disp(x2);
elseif (x3 == E)
    disp('x3: ');
    disp(x3);
else
    disp('skaiciu nera');
end

