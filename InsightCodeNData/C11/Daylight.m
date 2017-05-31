function  H = Daylight(Lat)
% Lat specifes a latitude in degrees. (-90<=Lat<=90)
% H is a 365-by-1 vector where H(k) is the simple model prediction
% of daylight hours received at latititude Lat on day k. Days are indexed
%    sequentialy from Jan 1 (k=1) to Dec 31 (k=365).

% Initializations...
Tilt = 23.45;  % Axis tilt in degrees
V = 80;        % Day of the vernal equinox
Y = 365;       % Length of year.
Tau   = Tilt*(pi/180); cTau   = cos(Tau);     sTau = sin(Tau);
Theta = Lat*(pi/180);  cTheta = cos(Theta); sTheta = sin(Theta);
alpha = 2*pi/24;
H = zeros(365,1);
for k=1:365
    d = (k-V)*(2*pi/Y);  cd = cos(d); sd = sin(d);
    % Solve cd*cTheta*cos(alpha*t) + sd*cTau*cTheta*sin(alpha*t) + sd*sTau*sTheta = 0
    lambda = cd*cTheta; mu = sd*cTheta*cTau; gamma = sd*sTau*sTheta;
    s1  = (-mu*gamma + lambda*sqrt(lambda^2+mu^2-gamma^2))/(lambda^2+mu^2);
    c1  = (-mu*s1 - gamma)/lambda;
    s2  = (-mu*gamma - lambda*sqrt(lambda^2+mu^2-gamma^2))/(lambda^2+mu^2);
    c2  = (-mu*s2 - gamma)/lambda;
    H(k) = (atan2(s1,c1)-atan2(s2,c2))/alpha;
    if H(k) < 0
        H(k) = H(k) + 24;
    end
end