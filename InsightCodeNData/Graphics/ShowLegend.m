% Script File: ShowLegend
% How to position a legend.

loc = { 'North' , 'South' , 'East' , 'West' ,...             
        'NorthEast' , 'NorthWest' , 'SouthEast' , 'SouthWest'  ,...       
        'NorthOutside' , 'SouthOutside' , 'EastOutside' , 'WestOutside' ,...       
        'NorthEastOutside' , 'NorthWestOutside' , 'SouthEastOutside' ,...  
        'SouthWestOutside' , 'Best' , 'BestOutside'  };

close all
t = linspace(0,2);
axis([0 2 -1.5 1.5])
y1 = sin(t*pi);
y2 = cos(t*pi);
plot(t,y1,t,y2,'--',[0 .5 1 1.5 2],[0 0 0 0 0],'o')
set(gca,'XTick',[])
set(gca,'YTick',[0])
grid on
for k=1:length(loc)
    legend('sin(\pi t)','cos(\pi t)','roots','location',loc{k})
    title('                            ')
    title(loc{k},'FontSize',14)
    pause
end
