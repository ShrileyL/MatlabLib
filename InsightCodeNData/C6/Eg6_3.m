% Script Eg6_3
% Polygon Smoothing

% Initializations...
close all
n = input('Enter the number of polygon edges: ');
nSmoothings = input('Enter the number of smoothings: ');

% Generate and display a random polygon
x = rand(n,1); y = rand(n,1);
figure
set(gcf,'position',[100 100 1000 500])
subplot(1,2,1)
plot([x;x(1)],[y;y(1)],'k',x,y,'or')
axis tight off
title('Original Polygon','FontWeight','bold','FontSize',14)

% Repeatedly smooth and display the polygon...
for k=1:nSmoothings
    subplot(1,2,2)
    [x,y] = Smooth(x,y);
    plot([x ; x(1)],[y ; y(1)],'k',x,y,'or')
    axis tight off
    title(sprintf('After %d Smoothings',k), ...
          'FontWeight','bold','FontSize',14)
    pause(.1)
end


