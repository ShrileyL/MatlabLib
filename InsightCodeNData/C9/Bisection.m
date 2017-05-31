function [L,R,fEvals] = Bisection(f,L0,R0,delta,fEvalsMax)
% f is a handle to a continuous function of a single variable.
% L0 and R0 define an interval [L0,R0] and f(L0)f(R0) <= 0.
% delta is the length of an acceptable final interval.
% fEvalsMax is a positive integer >= 2 that indicates the maximum
%    number of f-evaluations allowed.
%
% Bisection is applied to obtain a new bracketing interval [L,R]
% that usually satisfies R-L <= delta. If this is not possible, then
% R-L is as small as possible given the fEvalsMax constraint.

L = L0; fL = f(L); 
R = R0; fR = f(R); 
fEvals = 2;
while (R-L > delta) && (fEvals < fEvalsMax)
    m = (L+R)/2; fm = f(m); 
    fEvals = fEvals+1;
    if fL*fm<=0
        % There is a root in [L,m].
        R  = m; fR = fm;
    else
        % There is a root in [m,R].
        L  = m; fL = fm;
    end
end