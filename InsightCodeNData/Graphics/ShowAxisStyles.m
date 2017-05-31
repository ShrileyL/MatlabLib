% Script File: ShowAxisStyles
% How to scale the axes.

theta = linspace(0,2*pi);
x = cos(theta);
y = sin(theta);
close all

figure
plot(x,y)
title('Autoscaling','Fontsize',14)

figure
plot(x,y)
axis equal
title('axis equal','Fontsize',14)

figure
plot(x,y)
axis equal square
title('axis equal square','Fontsize',14)

figure
plot(x,y)
axis([-1.2 1.2 -1.2 1.2])
title('axis([-1.2 1.2 -1.2 1.2])','Fontsize',14)

figure
plot(x,y)
axis([-1.2 1.2 -1.2 1.2])
axis equal
title('axis([-1.2 1.2 -1.2 1.2]); axis equal','Fontsize',14)

figure
plot(x,y)
axis([-1.2 1.2 -1.2 1.2])
axis equal square
title('axis([-1.2 1.2 -1.2 1.2]); axis square','Fontsize',14)


