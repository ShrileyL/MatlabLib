function ShowTriangle(T,s)
% T is a triangle.
% s is one of the characters 'k','w','r','g','b','m','c','y'.
% Displays T in the current figure window using color s.
% Assumes hold is on.
fill([T.A.x T.B.x T.C.x T.A.x],[T.A.y T.B.y T.C.y T.A.y],s)
