% Script File: ShowMathSymbols
% How to produce math symbols.

close all
figure
axis off
hold on
fill([0 12 12 0 0],[0 0 12 12 0],'w')
plot([0 12 12 0 0],[0 0 12 12 0],'k','Linewidth',3)
hold off
text(6,10.5,'Math Symbols','color','r','FontSize',18,'HorizontalAlign','center')
x = 1; x1 = x+.7;
y = 4.6; y1 = y+.7;
z = 9; z1 = z+.7;
n = 12;

text(y,9,'\leftarrow :');       text(y1,9,'\\leftarrow') 
text(y,8,'\rightarrow :');      text(y1,8,'\\rightarrow')
text(y,7,'\uparrow :');         text(y1,7,'\\uparrow')
text(y,6,'\downarrow :');       text(y1,6,'\\downarrow')
text(y,5,'\Leftarrow :');       text(y1,5,'\\Leftarrow')
text(y,4,'\Rightarrow :');      text(y1,4,'\\Rightarrow')
text(y,3,'\Leftrightarrow :');  text(y1,3,'\\Leftrightarrow')
text(y,2,'\partial :');         text(y1,2,'\\partial')

text(x,9,'\neq :');             text(x1,9,'\\neq')
text(x,8,'\geq :');             text(x1,8,'\\geq')
text(x,7,'\approx : ');         text(x1,7,'\\approx')
text(x,6,'\equiv :');           text(x1,6,'\\equiv')
text(x,5,'\cong :');            text(x1,5,'\\cong')
text(x,4,'\pm :');              text(x1,4,'\\pm')
text(x,3,'\nabla :');           text(x1,3,'\\nabla')
text(x,2,'\angle :');           text(x1,2,'\\angle')

text(z,9,'\in :');              text(z1,9,'\\in')
text(z,8,'\subset :');          text(z1,8,'\\subset')
text(z,7,'\cup :');             text(z1,7,'\\cup')
text(z,6,'\cap :');             text(z1,6,'\\cap')
text(z,5,'\perp :');            text(z1,5,'\\perp')
text(z,4,'\infty :');           text(z1,4,'\\infty')
text(z,3,'\int :');             text(z1,3,'\\int')
text(z,2,'\times :');           text(z1,2,'\\times')

shg








