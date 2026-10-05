%%Neida Butrimaite EIRf-25, 2026-09-28

clc
clear

%% 1. Vienmaciai masyvai

a = (200:-10:10)';

b = log10(a);

c = 10.^b;

d = c - a;

disp(' a =')
disp(a)

disp(' b =')
disp(b)

disp(' c =')
disp(c)

disp(' d =')
disp(d)


%% 2. Dvimaciai masyvai

A = [pi/2, 3i, exp(pi);
     log2(2), 2*pi, log10(1);
     log(exp(1)), pi^pi, cos(pi)];

disp(' A =')
disp(A)

A(:,2) = rand(3,1);

disp(' Pakeista A =')
disp(A)

suma = sum(A);

disp(' Stulpeliu sumos =')
disp(suma)


%% 3. Praktinis veiksmu su masyvais taikymas

t = 0:0.001:1.5;

A = 6;
f = 4;
sigma = 1.2;
U1 = 3.5;
U2 = 2.5;

s = A*sin(2*pi*f*t) + 0.5*A*cos(4*pi*f*t);

n = sigma*randn(size(t));

x = s + n;

virs_U1 = x(x > U1);

filtruotas = x;
filtruotas(abs(filtruotas) < U2) = 0;

dydis_x = length(x);

dydis_U1 = length(virs_U1);

didziausia = max(filtruotas);
maziausia = min(filtruotas);

disp('3c) Nefiltruoto signalo dydis:')
disp(dydis_x)

disp('3d) Reiksmiu virs U1 kiekis:')
disp(dydis_U1)

disp('3e) Didziausia filtruoto signalo reiksme:')
disp(didziausia)

disp('3e) Maziausia filtruoto signalo reiksme:')
disp(maziausia)


%% P1. Masyvo elementu indeksavimas

A = input('Iveskite 10 elementu vektoriu A: ');

B = [A(end:-1:6), A(1:5)];

disp('Vektorius B yra:')
disp(B)