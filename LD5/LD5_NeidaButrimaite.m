%% 1.
clc
clear
close all
format compact


disp('1 UZDUOTIS')

x = 0:0.01:2;
y = sin(2*pi*x);

s.duomenys = y;
s.x = x;
s.pavadinimas = 'Sinuso grafikas';

figure
plot(s.x, s.duomenys)
title(s.pavadinimas)
grid on


%% 2. Srauto valdymas

disp('2 UZDUOTIS')

x = input('Iveskite x: ');
y = input('Iveskite y: ');

while x ~= 0 && y ~= 0

    b = atan(y/x);

    disp('Kaire       Desine       Skirtumas')

    for n = 1:10
        kaire = n*(cos(b)+1i*sin(b))^n;
        desine = cos(n*b)+1i*sin(n*b);
        skirtumas = kaire-desine;

        disp([kaire desine skirtumas])
    end

    x = input('Iveskite x (0 - baigti): ');

    if x == 0
        break
    end

    y = input('Iveskite y (0 - baigti): ');
end

disp('2 uzduotis baigta')

%% 3.
disp('3 UZDUOTIS')

sakinys = input('Iveskite sakini: ', 's');

k = 0;
i = 1;

while i < length(sakinys)

    if sakinys(i) == ' ' && sakinys(i+1) == ' '
        sakinys(i) = [];
        k = k + 1;
    else
        i = i + 1;
    end

end

disp('Sutvarkytas sakinys:')
disp(sakinys)

disp(['Pasalinta tarpu: ', num2str(k)])