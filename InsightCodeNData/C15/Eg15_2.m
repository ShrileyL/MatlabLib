% Script Eg15_2
% Find the best bike.

% Initial guess for w(2:6)...
wTilde(2:6) = [ 22 16 15 14 13];
B = BestBike(wTilde);
its = 1;
clc
while its==1 || (diff>0 && its<=10)
    % Display the current best bike...
    fprintf('\n\n\nPedal Sprockets = [ %2d  %2d  %2d ]\n',B.p)
    fprintf('Wheel Sprockets = [ %2d  %2d  %2d  %2d  %2d  %2d  %2d ]\n',B.w)
    fprintf('wTilde(2:6)     =       %2d  %2d  %2d  %2d  %2d \n\n',wTilde(2:6))
    disp(' pedal  wheel     ratio')
    disp('-----------------------')
    for k=1:21
        fprintf('  %2d     %2d      %6.3f\n',B.G(k).i,B.G(k).j,B.G(k).r)
    end
    fprintf('\nphi = %6.3f\n',B.phiVal)

    % Revise the search space and try again...
    wTildeNew(2:6) = [B.w(2) B.w(3) B.w(4) B.w(5) B.w(6)];
    diff = max(abs(wTildeNew(2:6) - wTilde(2:6)));
    wTilde = wTildeNew;
    B = BestBike(wTilde);
    phiOld = B.phiVal;
    its = its + 1;
end
