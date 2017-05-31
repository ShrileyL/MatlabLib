% Script File: ShowTicks
% How to set and label axis ticks.

close all
x = linspace(0,4*pi);
y = sin(x);
plot(x,y)
axis([0 4*pi -1.2 1.2])

% Define x-ticks and their labels..
set(gca,'xTick',0:pi/2:4*pi)
set(gca,'xTickLabel',{'0', ' ', 'pi', ' ', '2pi', ' ', '3pi', ' ', '4pi'},'Fontsize',14)

% Define y-ticks and let them be auto-labelled...
set(gca,'yTick',-1:.5:1)

grid on
shg