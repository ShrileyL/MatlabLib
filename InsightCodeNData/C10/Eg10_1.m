% Script Eg10_1
% Generates and displays a random point set and its diameter

% Set up the figure window...
close all
figure
axis([-.2 1.2 -.2 1.2])
hold on

% Generate a random point set...
n = 100; x = rand(n,1); y = rand(n,1);
for i=1:n
    P(i) = MakePoint(x(i),y(i));
end

% Compute the diameter and display...
[Q1,Q2] = DiameterPoints(P);
plot([Q1.x Q2.x],[Q1.y Q2.y],'r')
d = GetDist(Q1,Q2);
ShowPointSet(P,'*k')
ShowPointSet([Q1 Q2],'or')
title(sprintf('Diameter = %5.3f',d),'Fontsize',14)
hold off
