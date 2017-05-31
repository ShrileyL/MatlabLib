function ShowPointSet(P,s)
% P is a structure array of points.
% s is a string that specifies color, marker type, and line type,
%   e.g., 'k', '*b', 'cx--'
% Displays P in the current figure window according to s.
% Assumes hold is on.

for i=1:length(P)
    plot(P(i).x,P(i).y,s)
end