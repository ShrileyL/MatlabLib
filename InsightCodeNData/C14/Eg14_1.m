% Script Eg14_1
% Illustrates the function MeshTriangle

close all
x = [0  3  1];
y = [0  0  2];
for L = 0:4
   figure
   axis equal off
   hold on
   MeshTriangle(x,y,L)
end




