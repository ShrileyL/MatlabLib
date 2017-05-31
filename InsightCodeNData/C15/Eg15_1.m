% Script Eg15_1
% Heuristic solution of the traveling salesperson problem.

% Get the data and set up the distance matrix...
City = Capitals;
D = CityDistTable(City);

Shortest = inf;
% Examine the route obtained for each possible starting city...
for StartCity = 1:48
    [S,Odom] = Route(StartCity,D);
    if Odom(49) < Shortest
        % A new best route discovered. Display...
        Shortest = Odom(49);
        clc
        disp('       Stop              Odometer')
        disp('---------------------------------')
        for k=1:49
            disp([City(S(k)).Name  sprintf(' %6.0f',Odom(k)) ])
        end
        pause
    end
end













