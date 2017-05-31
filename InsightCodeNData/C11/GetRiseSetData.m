function [Name,Lat,Long,Hours] = GetRiseSetData(fname)
% fn is the complete address of a Sunrise/Sunset file.
% Name is a string that names the underlying city.
% Lat is its latitude in degrees.
% Long is its longitude in degrees.
% Hours is a 365-by-1 vector that contains the hours of daylight
%   for day 1 (Jan 1) through day 365 (Dec 31).

% Read the data into cell array C and compute Name, Lat, and Long...
C = File2Cell(fname);
Name = C{1};
[Long,Lat] = GetLocation(C{2});

% Set up a 32-by-12 matrix A with the property that A(i,j) houses
%    the daylight asscoiated with the ith  day of the jth month...
A = zeros(31,12);
for d=1:31
    % Compute the daylight values for day d...
    x = str2num(C{d+2});
    if d<=28
        % All months involved..
        A(d,:) = GetTime(x(3:2:25)) - GetTime(x(2:2:25));
    elseif d==29 || d==30
        % All months except Februrary...
        A(d,[1 3:12]) = GetTime(x(3:2:23)) - GetTime(x(2:2:23));
    else
        % Only the 31-day months...
        A(d,[1 3 5 7 8 10 12]) = GetTime(x(3:2:15)) - GetTime(x(2:2:15));;
    end
end
% Stack the relevant parts of each A-column...
Hours = [A(:,1); A(1:28,2); A(:,3); A(1:30,4); A(:,5); A(1:30,6);...
         A(:,7); A(:,8); A(1:30,9); A(:,10); A(1:30,11); A(:,12)];
  

function [Long,Lat] = GetLocation(s)
% s is a length-11 string that encodes longitude and latitude, e.g.,
%   W07536S0322 : 75 deg 36 minutes West, 3 degrees 22 minutes South.
% Returns the longitude and latitude as specified by s. 
Long = str2double(s(2:4)) + str2double(s(5:6))/60;
if s(1)=='E'
    Long = -Long;
end
Lat = str2double(s(8:9)) + str2double(s(10:11))/60;
if s(7)=='S'
    Lat = -Lat;
end
     
     
function t = GetTime(tau)
% tau is a vector of nonnegative integers
% Each component has the form hhmm and encodes the time 
% "hh hours and mm minutes." Thus, 1427 = 14 hours and 27 minutes.
% t has the same dimension and orientation as tau with t(i) equal to
% the exact time in hours that tau(i) represents.
t = floor(tau/100) + rem(tau,100)/60;
       
        
    
    
