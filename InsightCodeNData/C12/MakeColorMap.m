function A = MakeColorMap(B,q)
% B is a p-by-3 color map
% q is a length p-1 vector of nonnegative integers
% A is a colormap obtained by stacking the colormaps
%     InterpColors(B(k,:),B(k+1,:),q(k))
% for k=1:p-1

p = size(B,1);
A = [];
for k=1:p-1
    D = InterpColors(B(k,:),B(k+1,:),q(k));
    if k==1
        A = [A ; D];
    else
        A = [A; D(2:size(D,1),:)];
    end
end


