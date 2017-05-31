function D = CityDistTable(City)
% City is a length n structure array where the name, latitude, and
% longitude of the kth city is housed in City(k).Name, City(k).Lat,
% and City(k).Long.
% D is an n-by-n matrix with D(i,j) being the great circle distance
% from City(i) to City(j).

% Set up the city-to-city distance matrix...
n = length(City);
D = zeros(n,n);
for i=1:n
    for j=i+1:n
        D(i,j) = Dist(City(i),City(j));
        D(j,i) = D(i,j);
    end
end


function d = Dist(C1,C2)
% Great circle distance between city C1 and city C2.
theta1 = C1.Lat*pi/180; phi1 = C1.Long*pi/180;
theta2 = C2.Lat*pi/180; phi2 = C2.Long*pi/180;
xDiff = cos(theta1)*cos(phi1) - cos(theta2)*cos(phi2);
yDiff = cos(theta1)*sin(phi1) - cos(theta2)*sin(phi2);
zDiff = sin(theta1) - sin(theta2);
d = 7926*asin(sqrt(xDiff^2 + yDiff^2 + zDiff^2)/2);