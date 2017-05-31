function [Lat,Long] = USAClick()
% Assumes that InsightData is a subdirectory of the working directory.
% Displays a map of the continental United States and solicits
% a mouseclick. The latitude and longitude (in degrees) corresponding
% to the click point are returned in Lat and Long. The click point
% is displayed on the map.

imshow([pwd '\InsightData\11_2\USA.gif']);
title('Enter Location','Fontsize',14)
[x,y] = ginput(1);
hold on
fill(x+7*cos(linspace(0,2*pi)),y+7*sin(linspace(0,2*pi)),'k');
Long = -(66 + ((x-982)/(41.5-982))*62);
Lat = 24 + ((y-545.25)/(25.25-545.25))*26;
hold off


