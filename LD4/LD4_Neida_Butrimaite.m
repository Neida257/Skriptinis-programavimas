
%% EIRf-25, Neida Butrimaitė

clc
clear
close all

x = (2*rand(1,200)-1)*sqrt(pi/2);
y = (2*rand(1,200)-1)*sqrt(pi/2);

[X,Y] = meshgrid(x,y);

Z = sin(X.^2 + Y.^2);

figure
surf(X,Y,Z)
shading interp
colormap(jet)
view(15,15)
grid on


x = -1:0.05:1;
y = -1:0.05:1;

[X,Y] = meshgrid(x,y);

r = sqrt(X.^2 + Y.^2);
Z = exp(r.^2);

figure
surf(X,Y,Z)
shading interp
colormap(parula)
view(20,20)
grid on


x = -1:0.05:1;
y = -1:0.05:1;

[X,Y] = meshgrid(x,y);

Z = 1 - (X.^2 + Y.^2);


figure
surf(X,Y,Z)
shading interp
camlight
lighting gouraud
colormap(jet)
grid on

figure
surfc(X,Y,Z)
shading interp
colormap(jet)
grid on


figure
surf(X,Y,Z)
grid on