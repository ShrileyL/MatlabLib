function [RNsort,idx] = RomanPhoneBook()
% RNsort is a 3999-by-1 cell array of alphabetized Roman numerals.
% idx is a 3999-by-1 integer array with the property that idx(k)
%   is the numerical value of the Roman numeral RNsort{k}.

% Cell arrays for the 1's, 10's, 100's, and 1000's place...
C1 = {'', 'I', 'II', 'III', 'IV', 'V', 'VI', 'VII', 'VIII', 'IX'};
C2 = {'', 'X', 'XX', 'XXX', 'XL', 'L', 'LX', 'LXX', 'LXXX', 'XC'};
C3 = {'', 'C', 'CC', 'CCC', 'CD', 'D', 'DC', 'DCC', 'DCCC', 'CM'};
C4 = {'', 'M', 'MM', 'MMM'};

% Generate the unsorted cell array of Roman numeral strings...
RN = cell(3999,1);
k = 0;
for i4=1:4
    Thousands = C4{i4};         % Choose a thousands "digit"
    for i3 = 1:10
        Hundreds = C3{i3};      % Choose a hundreds "digit"
        for i2 = 1:10
            Tens = C2{i2};      % Choose a tens "digit"
            for i1 = 1:10
                Ones = C1{i1};  % Choose a ones "digit"
                if k > 0
                    RN{k} = [Thousands Hundreds Tens Ones];
                end
                k = k+1;
            end
        end
    end
end
% Now alphabetize...
[RNsort,idx] = sort(RN);