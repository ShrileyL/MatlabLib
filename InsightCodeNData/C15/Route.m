function [S,Odom] = Route(StartCity,D)
% D is an n-by-n matrix whose (i,j) entry is the distance
%    between city i and city j.
% StartCity is an index with 1 <= StartCity <= n
% S and Odom are column vectors of length n+1.  S(k) is the index of
% the kth stop and Odom(k) is the accumulated mileage at that point.
% Note that S(1) = StartCity , Odom(1) = 0, S(n+1) = StartCity, and
% S(n+1) is the total distance of the journey.

[n,n] = size(D);
% Get set at the starting city...
S     = zeros(n+1,1);
Odom  = zeros(n+1,1);
Here  = StartCity;
S(1) = Here;
% Remember the distance to the starting city...
dStart = D(StartCity,:);
for j=1:n-1
    % Figure out where to go next, i.e., stop j+1...
    D(:,Here) = inf;
    [Leg,Next]  = min(D(Here,:));
    % Update the odometer and move on...
    Odom(j+1)  = Odom(j) + Leg;
    S(j+1) = Next;
    Here = Next;
end
% Return to the starting city...
S(n+1) = StartCity;
Odom(n+1) = Odom(n) + dStart(Here);








