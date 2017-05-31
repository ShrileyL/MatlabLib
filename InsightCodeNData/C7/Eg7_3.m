% Script Eg7_3
% Simulates the cooling of a plate whose boundary temperature
% is fixed at zero.

% Establish the Initial Temperature Distribution...
a = 0; b = 6; n = 61; x = linspace(a,b,n);
c = 0; d = 4; m = 41; y = linspace(c,d,m);
TVals = fOnGrid(x,y,@T_plate);
TVals(1,:) = zeros(1,n); TVals(m,:) = zeros(1,n);
TVals(:,1) = zeros(m,1); TVals(:,n) = zeros(m,1);
nSteps = 200;
close all
figure
colormap('hot')
for tau=0:nSteps
    % Display the current temperature distribution...
    pcolor(TVals)
    shading interp
    caxis('manual')
    title(sprintf('tau = %1d',tau),'Fontsize',14)
    axis equal off
    pause(.1)
    shg
    % Update the temperature distribution...
    TVals = Average(TVals);
end

