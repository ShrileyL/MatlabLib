% Script File: ShowWindowColor
% How to color the plot and figure windows.

close all
figure

% Plot the sine function...
hold on
x = linspace(0,1);
plot(x,sin(2*pi*x),'k','linewidth',2)
hold on
plot([0  1],[0 0],'k')
axis([0 1,-1.2 1.2])
grid on

% Set the plot window color to be magenta...
set(gca,'color',[1 0 1])
% Set the figure color to be black...
set(gcf,'color',[0 0 0])
% Draw the axis labelings in white...
set(gca,'xcolor',[1 1 1], 'ycolor',[1 1 1],'fontsize',14)