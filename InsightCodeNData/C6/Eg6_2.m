% Script Eg6_2
% Estimates the average number of hops required for the robot to
% reach the boundary.

clc
disp('   n    Average to Boundary')
disp('---------------------------')
nTrials = 100;
for n = 5:5:50
    s = 0;
    for k=1:nTrials
        [x,y] = RandomWalk2D(n);
        s = s+ length(x);
    end
    ave = s/nTrials;
    fprintf(' %3d         %8.3f\n',n,ave)
end
fprintf('\n\n(Results based on %d trials)\n',nTrials)