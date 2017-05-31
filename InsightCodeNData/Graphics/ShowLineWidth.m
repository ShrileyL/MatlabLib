% Script File: ShowLineWidth
% How to draw lines with specified width.

close all
figure
axis off
hold on
fill([0 14 14 0 0],[0 0 14 14 0],'w')
plot([0 14 14 0 0],[0 0 14 14 0],'k','Linewidth',3)
text(7,13,'LineWidth','color','r','FontSize',18,'HorizontalAlign','center')
for width=0:10
    if width>0
        plot([3 12],[11-width 11-width],'k','Linewidth',width);
        text(1,11-width,sprintf('%3d',width),'FontSize',14)
    else
        plot([3 12],[11-width 11-width],'k');
        text(1,11-width,'default','FontSize',14)
    end
end
hold off

