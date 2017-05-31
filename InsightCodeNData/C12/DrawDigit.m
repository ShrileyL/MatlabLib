function DrawDigit(a,b,width,M,ShowGrid)
% Adds the digit encoded by the m-by-n dot matrix M to the current
%   figure window.
% Assumes that m = (7/5)n.
% The digit is centered in a black rectangle with horizontal
%   equal to width and verical dimension equal to (9/7)*width;
% The lower left corner of the rectangle is at (a,b).
% The lower left corner of the digit grid is (a+d,b+d) where
%   d = width/7. The edgelength of the squares in the grid is
%   width - 2*d)/n.
% If ShowGrid == 1, then the digit grid is displayed. Otherwise, it is not.
% Assumes that the hold toggle is on.

% Draw background rectangle...
d = width/7;
[m,n] = size(M);
height = 9*d;
fill([a a+width a+width a], [b b b+height b+height],'k')

% The Dot radius...
r = (5*d)/(2*n);

% Draw the dots using the rule that dot (i,j) is
% centered at (x,y)...
x = a + d;
for j=1:n
    y = b + height - d - 2*r;
    for i=1:m
        if M(i,j)==1
            DrawDot(x,y,r)
        end
        y = y - 2*r;
    end
    x = x + 2*r;
end
% If ShowGrid is true, then add in the grid lines...
if ShowGrid
    for k=0:n
        plot([a+d+2*r*k  a+d+2*r*k],[b+d b+height-d],'w')
    end
    for k=0:m
        plot([a+d a+6*d],[b+d+2*r*k b+d+2*r*k],'w')
    end
end

function DrawDot(a,b,r)
% Adds a circular yellow dot to the current window.
% Assumes hold is on.
% The dot has radius r, center(a+r,b+r)
theta = linspace(0,2*pi);
fill(a+r+r*cos(theta),b+r+r*sin(theta),'y');
