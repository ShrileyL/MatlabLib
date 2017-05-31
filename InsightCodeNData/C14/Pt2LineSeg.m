function d_min = Pt2LineSeg(a,b,x1,y1,x2,y2)
% d_min is the minimum distance between (a,b) and a 
% point that is on the line segment that connects 
% the points (x1,y1) and (x2,y2).

t_min = ((x2-x1)*(a-x1) + (y2-y1)*(b-y1))/...
                  ((x1-x2)^2 + (y1-y2)^2);
if 0<=t_min && t_min<=1
    tStar = t_min;
elseif t_min<0
    tStar = 0;
else
    tStar = 1;
end
xStar = x1 + tStar*(x2-x1);
yStar = y1 + tStar*(y2-y1);
d_min = sqrt((a-xStar)^2+(b-yStar)^2);