function i = FindIndex(s)
% s is a 3-letter mnemonic that names an amino acid.
% i is the index of the amino acid named by s.

% A is a 20-by-3 character array where A(i,:) names 
% the ith amino acid..
A = [ 'Ala' ; 'Arg' ; 'Asn' ; 'Asp' ; 'Cys';... 
      'Glu' ; 'Gln' ; 'Gly' ; 'His' ; 'Ile';...
      'Leu' ; 'Lys' ; 'Met' ; 'Phe' ; 'Pro';...
      'Ser' ; 'Thr' ; 'Trp' ; 'Tyr' ; 'Val'];
i = 1;
while strcmp(s,A(i,:))==0
    i=i+1;
end
  
 

  