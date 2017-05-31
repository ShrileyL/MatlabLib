% Script File: ShowRGB
% Draws three color grids that depict combinations
% of the primary colors. 
% A gray scale is also displayed.

  close all
  RGB = {[1 0 0],[0 1 0], [0 0 1]};
  Name = {'Red','Green','Blue'};

  for p = 1:3
     for q = p+1:3
        C1 = RGB{p};
        C2 = RGB{q};
        % Draw Color Grid with primary colors C1 and C2...   
        figure
        axis equal off
        hold on
        for i=0:10
           for j=0:10
              % Draw tile (i,j)
              c = C1*i/10 + C2*j/10;
              fill([i i+1 i+1 i i],[j j j+1 j+1 j],c)
           end
        end
        title([Name{p} ' and ' Name{q}],'FontSize',14)
        hold off
     end
  end

% Show Gray Scale ...

  figure
  axis equal off
  hold on
  title('Gray Scale','Fontsize',14)
  for k=0:10
     c = [k k k]/10;
     fill([0 1 1 0 0],k+[0 0 1 1 0],c)
     text(2,k+.5,sprintf('[ %3.1f , %3.1f , %3.1f ]',c))
  end
  hold off
  shg  