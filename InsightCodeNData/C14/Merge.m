function w = Merge(u,v)
% u and v are sorted column vectors and w is their merge.

n = length(u); m = length(v); w = zeros(n+m,1);
i = 1;   % The index of the next u-value to select.
j = 1;   % The index of the next v-value to select.
k = 1;   % The index of the next w-component to fill.
while i<=n && j<=m
    %    u and v have not been exhausted...
    if u(i) <= v(j)
        w(k) = u(i); i = i+1; k = k+1;
    else
        w(k) = v(j); j = j+1; k = k+1;
    end
end
% If any elements in u remain, then copy them into w...
while i<=n
    w(k) = u(i); i = i+1; k = k+1;
end
% If any elements in v remain, then copy them into w...
while j<=m
    w(k) = v(j); j = j+1; k = k+1;
end