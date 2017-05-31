function [C_In,C_Out] = InAndOut(T)
% T is a triangle.
% C_In  is the associated inscribed circle.
% C_Out is the associated circumscribed circle.

% Extract the vertices...
A = T.A; B = T.B; C = T.C;

% Inscribed circle.
% Construct two angle bisectors, their intersection Q2,
% and the minimum distance from Q2 to side AB.
LA = AngleBisector(B,A,C);
LB = AngleBisector(A,B,C);
Q2  = Intersect(LA,LB);
r  = GetDist(Q2,Nearest(Q2,A,B));
C_In = MakeCircle(Q2,r);

% Circumscribed circle.
% Construct two perpendicular bisectors, their intersection Q1,
% and Q1's distance to vertex A
LAB = PerpBisector(A,B);
LAC = PerpBisector(A,C);
Q1 = Intersect(LAB,LAC);
R = GetDist(A,Q1);
C_Out = MakeCircle(Q1,R);

