function [x,y,z] = EarthCartesian(Lat,Long)
% Lat and Long specify the latitude and longitude (degrees) of a point
%    on the Earth's surface.
% x, y, and z are scalars that specify the normalized Cartesian coordinates
%    of the point.

kappa = pi/180;
cLat = cos(Lat*kappa);
x = cLat*cos(Long*kappa);
y = cLat*sin(Long*kappa);
z = sin(Lat*kappa);