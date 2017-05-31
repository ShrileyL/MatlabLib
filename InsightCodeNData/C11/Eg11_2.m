% Script Eg11_2
% Environment for examining the population density factor.

% Acquire the data. 
MakePXYZ();     
MakePXYZBmat() 
[P,x,y,z] = GetPXYZBmat();

close all
% The distance that defines "nearby":
Rho = 300;

% The number of trials...
nTries = 5;
for k=1:nTries
    figure

    % Enter the Q-point and compute its xyz values...
    [Lat0,Long0] = USAClick();
    [x0,y0,z0] = EarthCartesian(Lat0,Long0);

    % Compute the vector of great circle distances to the zipcode areas...
    d = 7926*asin(sqrt((x-x0).^2 + (y-y0).^2 + (z-z0).^2)/2);

    % Determine the indices associated with the ``nearby'' zipcodes...
    i_Rho = find(d<=Rho);

    % Sum the associated populations and display...
    NearbyPop = sum(P(i_Rho))/10^6;
    title(sprintf(...
      'Lat = %5.2f  Long = %5.2f  Rho = %3d  NearbyPop = %5.2f million',...
      Lat0,Long0,Rho,NearbyPop),'Fontsize',14)
    pause(1)
end



