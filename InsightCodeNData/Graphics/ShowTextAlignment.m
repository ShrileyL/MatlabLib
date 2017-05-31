% Script File: ShowTextAlignment
% How to place text relative to a coordinate point.

close all
HA = 'HorizontalAlignment';
HV = 'VerticalAlignment';

figure
plot(0,0,'*')
axis([-1 1 -1 1])
axis equal square
set(gca,'xTick',[-1 0 1],'yTick',[-1 0 1])
grid on
text(0,0,'  (0,0)  ','FontSize',14,HA,'left','color','r', 'Fontweight','bold')
title('Left edge of text aligned.','Fontsize',14)

figure
plot(0,0,'*')
axis([-1 1 -1 1])
axis equal square
set(gca,'xTick',[-1 0 1],'yTick',[-1 0 1])
grid on
text(0,0,'  (0,0)  ','FontSize',14,HA,'right','color','r','Fontweight','bold')
title('Right edge of text aligned.','Fontsize',14)

figure
plot(0,0,'*')
axis([-1 1 -1 1])
axis equal square
set(gca,'xTick',[-1 0 1],'yTick',[-1 0 1])
grid on
text(0,0,'  (0,0)  ','FontSize',14,HA,'center','color','r','Fontweight','bold')
title('Center of text aligned.','Fontsize',14)

figure
plot(0,0,'*')
axis([-1 1 -1 1])
axis equal square
set(gca,'xTick',[-1 0 1],'yTick',[-1 0 1])
grid on
text(0,0,'  (0,0)  ','FontSize',14,HA,'left',HV,'top','color','r','Fontweight','bold')
title('Left top edge of text aligned.','Fontsize',14)

figure
plot(0,0,'*')
axis([-1 1 -1 1])
axis equal square
set(gca,'xTick',[-1 0 1],'yTick',[-1 0 1])
grid on
text(0,0,'  (0,0)  ','FontSize',14,HA,'right',HV,'bottom','color','r','Fontweight','bold')
title('Right bottom edge of text aligned.','Fontsize',14)

shg