function L = MakeLine(P,del_x,del_y)
% P is a point.
% del_x and del_y are real numbers.
% L is the line through L.P with slope L.del_y/L.del_x.
% (Note that if del_x = 0 then L is vertical.)
L = struct('P',P,'del_x',del_x,'del_y',del_y);