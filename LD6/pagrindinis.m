
clc;
clear;
close all;

%% 1 UZDUOTIS
disp('1 UZDUOTIS');

A = [1 2 3; 4 5 6];

eilute = eilstulp(A, 1);
stulpelis = eilstulp(A, 2);

disp('Eilutes vektorius:');
disp(eilute);

disp('Stulpelio vektorius:');
disp(stulpelis);

help eilstulp

%% 2 UZDUOTIS
disp('2 UZDUOTIS');

global x y z

x = 0:0.1:20;

pirma;
antra;

figure;
plot(x, z, 'b-.o');
grid on;
xlabel('x');
ylabel('y / 2');
title('y = x^2 / 2');

%% 3 UZDUOTIS
disp('3 UZDUOTIS');

a = vienasdu(0);
disp('Vienas rezultatas:');
disp(a);

[a, b] = vienasdu(0);
disp('Du rezultatai:');
disp(a);
disp(b);
