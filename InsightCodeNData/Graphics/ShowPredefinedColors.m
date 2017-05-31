% Script File: ShowPredefinedColors
% How reference the eight predefined colors.

  close all
  plot([-1 13 13 -1 -1],[-3 -3 18 18 -3],'k','Linewidth',3)
  axis off
  text(2.6,16.5,'Pre-defined Colors','FontSize',14)


% The predefined colors.
  x = [0 3 3 0 0];
  y = [-.5 -.5 .5 .5 -.5];
  FN = 'FontName';
  FS = 'FontSize';
  hold on
  fill(x,y,'c')
  text(4,0,'cyan      ''c''    [0 1 1]',FN,'Courier',FS,12)
  fill(x,y+2,'m')
  text(4,2,'magenta   ''m''    [1 0 1]',FN,'Courier',FS,12)
  fill(x,y+4,'y')
  text(4,4,'yellow    ''y''    [1 1 0]',FN,'Courier',FS,12)
  fill(x,y+6,'r')
  text(4,6,'red       ''r''    [1 0 0]',FN','Courier',FS,12)
  fill(x,y+8,'g')
  text(4,8,'green     ''g''    [0 1 0]',FN,'Courier',FS,12)
  fill(x,y+10,'b')
  text(4,10,'blue      ''b''    [0 0 1]',FN,'Courier',FS,12)
  fill(x,y+12,'k')
  text(4,12,'black     ''k''    [0 0 0]',FN,'Courier',FS,12)
  fill(x,y+14,'w')
  text(4,14,'white     ''w''    [1 1 1]',FN,'Courier',FS,12)

  hold off