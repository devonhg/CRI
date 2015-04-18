///drawRectangle(x1, y1, x2, y2, width)
/*
This is a draw rectangle function, it works JUST like the original, but allows for 
width adjustment. Note that this is only an outline. 

Must be put in draw event! 

drawRectangle(x1, y1, x2, y2, width)
*/

var x1, y1, x2, y2, width;

x1 = argument0;
y1 = argument1;
x2 = argument2;
y2 = argument3;
width = argument4;


draw_line_width(x1-(width/2),y1,x2+(width/2),y1,width);//Top
draw_line_width(x1,y1,x1,y2,width);//Left
draw_line_width(x2,y2,x2,y1,width);//Right
draw_line_width(x2+(width/2),y2,x1-(width/2),y2,width);//Bottom