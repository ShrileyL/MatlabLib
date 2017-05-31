% Script Eg10_2
% Displays a random set of rectangles and hightlights those
%   rectangles that are isolated from all the others

% Generate n random rectangles...
n = 50;
%colors = 'rgbycm';
for i=1:n
    xc = randn(1); yc = randn(1); 
    L = .5+.5*rand(1); W = .5+.5*rand(1);
    R(i) = MakeRect(xc-L/3,xc+L/3,yc-W/3,yc+W/3);
end

% Display all the rectangles...
close all
figure
axis equal off
hold on
for i = 1:n
    ShowRect(R(i),'y')
end

% Determine and highlight the isolated rectangles..
i = ListOfDisjoints(R);
for k = 1:length(i)
    j = i(k);
    % Rectangle j is isolated...
    ShowRect(R(j),'r')
end
hold off
title(sprintf('Number of Isolated Rectangles = %1d', ...
      length(i)),'Fontsize',14)

