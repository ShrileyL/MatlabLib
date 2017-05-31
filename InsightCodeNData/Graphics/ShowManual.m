% Script File: ShowManual
% How to freeze axes.

theta = linspace(0,2*pi);
c = cos(theta);
s = sin(theta);

close all

figure
plot(c,s)
axis([-1.2 1.2 -1.2 1.2])
axis equal square
x = -2 + 4*rand(500,1);
y = -2 + 4*rand(500,1);
hold on
plot(x,y,'.')
title('axes not frozen at [-1.2 1.2 -1.2 1.2]')

figure
plot(c,s)
axis([-1.2 1.2 -1.2 1.2])
axis equal square manual
x = -2 + 4*rand(500,1);
y = -2 + 4*rand(500,1);
hold on
plot(x,y,'.')
title('axes frozen at [-1.2 1.2 -1.2 1.2]')

shg

