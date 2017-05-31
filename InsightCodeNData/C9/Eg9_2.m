% Script Eg9_2
% Checks whether or not a string is a valid Roman Numeral.

clc
% Compute and sort the Roman Numerals...
[RNsort,idx] = RomanPhoneBook();

% Get the input string and see if it occurs in RNsort..
s = input('Enter a Possible Roman Numeral (in single quotes): ');
i = BinSearch(upper(s),RNsort);

% Display the appropriate message...
if i==0
    disp([s ' is not a valid Roman Numeral'])
else
    disp([s sprintf(' is the Roman Numeral for %d',idx(i))])
end