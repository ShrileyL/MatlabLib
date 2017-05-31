  function m = lexcmp(s1,s2)
% s1 and s2 are strings
% If s1 is lexicographically before or equal to s2, then m is true.
% Otherwise, m is false. Case is ignored.

% Set all upper case letters to lower case...
  s1 = lower(s1); s2 = lower(s2); 
  
% Pad the shorter string with blanks...
  n1 = length(s1); n2 = length(s2); n  = max(n1,n2);
  s1 = [s1 blanks(n-n1)]; s2 = [s2 blanks(n-n2)];

% Find smallest k so s1(k) ~= s2(k)...
  k = 1;
  while k<=n && s1(k)==s2(k)
     k=k+1;
  end

% If k is n+1, then s1 and s2 are the same.
% Otherwise, s1 comes before s2 if and only if s1(k)<s2(k)
  m = k==n+1 || s1(k)<s2(k);