%% Neida Butrimaite EIRf-25

clc
clear
close all




x = -pi:0.1:pi;
y = sin(x);

figure

plot(x, y)
grid on

xlabel('x')
ylabel('f(x)')
title('f(x) = sin(x)')

axis([min(x) max(x) min(y) max(y)])

xticks(-pi:pi/4:pi)
xticklabels({'-\pi','-3\pi/4','-\pi/2','-\pi/4','0', ...
             '\pi/4','\pi/2','3\pi/4','\pi'})




x = -pi:0.1:pi;

y1 = 2*sin(x).*cos(x);
y2 = 3*sin(x).*cos(x);

figure

plot(x, y1, 'LineWidth', 5)
hold on
plot(x, y2, 'LineWidth', 5)

grid on

xlabel('x')
ylabel('f(x)')
title('Dvieju funkciju grafikai')

legend('2sin(x)cos(x)', '3sin(x)cos(x)')

axis([min(x) max(x) min([y1 y2]) max([y1 y2])])



t = 0:pi/20:4*pi;

x = sin(t);
y = cos(t);
z = tan(t);

figure

plot3(x, y, z, 'o')

grid on

xlabel('x(t)')
ylabel('y(t)')
zlabel('z(t)')

title('Trimatis grafikas')




t = 0:0.001:1.5;

A = 6;
f = 4;
sigma = 1.2;
U1 = 3.5;
U2 = 2.5;

s = A*sin(2*pi*f*t) + 0.5*A*cos(4*pi*f*t);

n = sigma*randn(size(t));

x = s + n;

filtruotas = x;
filtruotas(abs(filtruotas) < U2) = 0;




figure

subplot(2,1,1)

plot(t, x, '-.', 'Color', 'b')
hold on

plot(t, filtruotas, '-', 'Color', 'k')

yline(U1, 'y', 'LineWidth', 1.5)
yline(U2, 'y', 'LineWidth', 1.5)

grid on

xlabel('Laikas, s')
ylabel('Itampa, V')

title('Pradinis ir filtruotas signalai', ...
      'Color', 'm', 'FontSize', 12)

legend('Pradinis signalas', ...
       'Filtruotas signalas', ...
       'U1', 'U2')

axis([min(t) max(t) min(x)-1 max(x)+1])




subplot(2,1,2)

indeksai = find(x > U1);

stem(t(indeksai), x(indeksai))
hold on

[max_reiksme, max_indeksas] = max(x);

plot(t(max_indeksas), max_reiksme, ...
     'ko', 'MarkerFaceColor', 'k')

[min_reiksme, min_indeksas] = min(x);

plot(t(min_indeksas), min_reiksme, ...
     'ko')

yline(U1, 'y', 'LineWidth', 1.5)

grid on

xlabel('Laikas, s')
ylabel('Itampa, V')

title('Pradinio signalo reiksmes virs U1', ...
      'Color', 'm', 'FontSize', 12)

legend('Reiksmes virs U1', ...
       'Maksimali reiksme', ...
       'Minimali reiksme', ...
       'U1')

axis([min(t) max(t) min(x)-1 max(x)+1])