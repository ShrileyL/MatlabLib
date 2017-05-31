function B = MakeBike(p,w)
% p is a length-3 vector of pedal sprocket values
% w is a length-7 vector of wheel sprocket values.
% B is a structure with 4 fields:
%    p is the vector of pedal sprocket values
%    w is the vector of wheel sprocket values
%    G is a length-21 structure array with three fields...
%      G(k).r  is the kth gear ratio
%      G(k).i  is the index of the associated pedal sprocket
%      G(k).j  is the index of the associated wheel sprocket
%    phiVal is the value of the phi for B

% Compute the gear ratios...
k = 0;
for i=1:3
    for j=1:7
        k = k+1;
        r(k) = p(i)/w(j);
        G(k) = struct('i',i,'j',j,'r',r(k));
    end
end

% Sort...
[r,idx] = sort(r);
G = G(idx);

% Evaluate the objective function...
phiVal = 0;
for k=1:21
    phiVal = phiVal + abs(r(k) - (1+.15*(k-1)));
end

% Create B...
B = struct('p',p,'w',w,'G',G,'phiVal',phiVal);