function ShowRect(R,s)
% R is rectangle
% s is one of the characters 'k', 'w', 'r', 'g', 'b', 'm', 'c', 'y'
% Displays R in the current figure window using the color specified by s.
% Assumes hold is on.
fill([R.a R.b R.b R.a],[R.c R.c R.d R.d],s)
plot([R.a R.b R.b R.a],[R.c R.c R.d R.d],'k','Linewidth',2)