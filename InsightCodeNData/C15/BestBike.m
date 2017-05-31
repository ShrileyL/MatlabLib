function B = BestBike(wTilde)
% The entries in wTilde(2:6) are initial guesses for B.w(i), i=2:6.
% B is the best bike subject to constraints C1, C2, C3, and C4
% with the added stipulation that for i=2:6 we have
%                wTilde(i)-1 <= B.w(i) <= wTilde(i)+1

phiValBest = inf;
for p1 = [48 52]
    w7 = p1/4;
    for p2 = 33:p1-1
        for p3 = 32:min(42,p2-1)
            w1 = p3;
            for w2 = max(w7+5,wTilde(2)-1):min(wTilde(2)+1,w1-1)
                for w3 = max(w7+4,wTilde(3)-1):min(wTilde(3)+1,w2-1)
                    for w4 = max(w7+3,wTilde(4)-1):min(wTilde(4)+1,w3-1)
                        for w5 = max(w7+2,wTilde(5)-1):min(wTilde(5)+1,w4-1)
                            for w6 = max(w7+1,wTilde(6)-1):min(wTilde(6)+1,w5-1)
                                % Construct the bike defined by p and w...
                                p = [p1 p2 p3];
                                w = [w1 w2 w3 w4 w5 w6 w7];
                                % See if it is the best bike found so far...
                                B = MakeBike(p,w);
                                if B.phiVal<phiValBest
                                    B_best = B;
                                    phiValBest = B.phiVal;
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
B = B_best;