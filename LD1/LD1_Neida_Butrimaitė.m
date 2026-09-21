% Neida Butrimaitė, EIRf-25, 2026-09-14

x=1:32;
y=x.^2;

plot(x, y, 'o-r', x, y/3, 'xb')
title('Dvi funkcijos')
xlabel('X-ai')
ylabel('F_1 [-o-] | F_2 [-x-]')

% Papildoma uzduotis

N = 2

v = N+1 : 0.5 : N+4

A = reshape(N:N+8, 3, 3)'

a = A(3,2)

b = A(2:3,1:2)

c = A([1 3],[1 3])

B = [A; v(1:3)]


