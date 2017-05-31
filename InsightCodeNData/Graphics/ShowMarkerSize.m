% Script File: ShowMarkerSize
% How to draw markers with specified size.

close all
figure
axis off
hold on
fill([0 10 10 0 0],[-77 -77 42 42 -77],'w')
plot([0 10 10 0 0],[-77 -77 42 42 -77],'k','Linewidth',3)
text(5,30,'Markersize','color','r','FontSize',18,'HorizontalAlign','center')
del = 6;
for mSize=0:15
    if mSize>0
        plot(4,22-del*mSize,'.k','Markersize',mSize);
        plot(5,22-del*mSize,'*k','Markersize',mSize);
        plot(6,22-del*mSize,'ok','Markersize',mSize);
        plot(7,22-del*mSize,'xk','Markersize',mSize);
        plot(8,22-del*mSize,'hk','Markersize',mSize);
        text(1,22-del*mSize,sprintf('%3d',mSize),'FontSize',14)
    else
        plot(4,22,'.k');
        plot(5,22,'*k');
        plot(6,22,'ok');
        plot(7,22,'xk');
        plot(8,22,'hk');
        text(1,22,'default')
    end
end
hold off
set(gcf,'position',[50 50 800 800])

