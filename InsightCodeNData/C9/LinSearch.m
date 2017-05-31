function i = LinSearch(x,S)
% S is an n-by-1 cell array of strings.
% x is a string.
% If x occurs in S then i is the index of the match. Otherwise i = 0;

n = length(S);
k = 1;
while k<=n && ~strcmp(x,S{k})
    k = k+1;
end
if k<=n
    i = k;
else
    i = 0;
end
