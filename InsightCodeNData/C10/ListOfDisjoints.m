function i = ListOfDisjoints(R)
% R is a structure array of rectangles.
% i is a vector of indices that identify the isolated rectangles.

n = length(R);
i = [];
for k=1:n
    if IsIsolated(R(k),[R(1:k-1) R(k+1:n)])
        % R(i) is disjoint from all the other rectangles
        i = [i k];
    end
end

function beta = IsIsolated(S,T)
% S is a rectangle and T is a structure array of rectangles.
% beta is true if S is isolated from T.
% Otherwise beta is false.

n = length(T);
k = 1;
while k<=n && Disjoint(S,T(k))
    % S is disjoint from T(1),...,T(k)
    k = k+1;
end
beta = k==n+1;

function alfa = Disjoint(R1,R2)
% R1 and R2 are rectangles.
% alfa is true if R1 and R2 are disjoint.
% Otherwise alfa is false.

R1_Is_Above = R1.bot > R2.top;
R1_Is_Below = R2.bot > R1.top;
R1_Is_Right = R1.left > R2.right;
R1_Is_Left  = R2.left > R1.right;
alfa = R1_Is_Above || R1_Is_Below || R1_Is_Left || R1_Is_Right;