function L = AngleBisector(B,A,C)
% B, A, and C are distinct points.
% L is a line through A with the property that it bisects
% angle BAC.

% The slope angles for the rays AB and AC...
thetaAB = atan2(B.y-A.y,B.x-A.x);
thetaAC = atan2(C.y-A.y,C.x-A.x);

% The tangent of the midway angle...
tau = tan((thetaAB+thetaAC)/2);
if tau == inf
    % The bisector is vertical. Slope = 1/0 = inf...
    L = MakeLine(A,0,1);
else
    % The slope of the bisctor is finite: tau/1
    L = MakeLine(A,1,tau);
end