function i = BinSearch(x,S)
% S is an n-by-1 cell array of strings that are in ASCII 
%   dictionary order.
% x is a string.
% If x occurs in S then i is position in S where x if found.
% If x does not occur in S, then i = 0.

n = length(S);
if compare1(S{1},x) &&  compare1(x,S{n})
    % S{1} <= x  <= S{n}
    L = 1; R = n;
    while (L < R)
        % S{L} <= x <= S{R}
        m = floor((L+R)/2);
        if compare1(x,S{m})
            % S{L} <= x <= S{m}
            R = m;
        else
            % S{m} < x <= S{R}
            L = m+1;
        end
    end
    % L = R
    if strcmp(x,S{L})
        % S{L} = S{R} matches x.
        i = L;
    else
        % S{L} = S{R} does not match x.
        i = 0;
    end
else
    % Either x < S{1} or S{n} < x
    i = 0;
end


function a = compare1(s1,s2)
% If string s1 comes before string s2 or is equal to s2 in ASCII  
% dictionary order then a is 1. Otherwise a is 0. Case is ignored.

C0= {upper(s1), upper(s2)};
[C,idx] = sort(C0);
a = (idx(1)==1);
