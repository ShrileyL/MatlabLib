function c = cos_xy(x,y)
% x and y are column n-vectors
% c is the cosine of the angle between them

c = abs(sum(x.*y))/(sqrt(sum(x.*x))*sqrt(sum(y.*y)));