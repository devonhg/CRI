/*
This just simply draws the stat graph, specify the values for each stat. 
Usage: drawStatGraph(x,y,Genr,Armr,Dmag,Stor,Scale)

Must be put in the draw event!
*/


var xx, yy, length, width, textadj,top,statSubtract,Genr,Armr,Dmag,Stor,scale, numadj;//,Stor,Genr,top,statSubtract;
xx = argument0;
yy = argument1;
Genr = argument2;
Armr = argument3;
Dmag = argument4; 
Stor = argument5; 
Scale = argument6;
length = 100*Scale;
width = 2;
top = max(Genr,Armr,Dmag,Stor);
textadj = -20;
numadj = -30
statSubtract = 20;
//Background
draw_set_color(c_green);
draw_primitive_begin(pr_trianglefan);
    draw_vertex_color(xx+(cos(degtorad(90))*length),yy-(sin(degtorad(90))*length),c_green,1);
    draw_vertex_color(xx+(cos(degtorad(180))*length),yy-(sin(degtorad(180))*length),c_green,1);
    draw_vertex_color(xx+(cos(degtorad(270))*length),yy-(sin(degtorad(270))*length),c_green,1);
    draw_vertex_color(xx+(cos(degtorad(360))*length),yy-(sin(degtorad(360))*length),c_green,1);
draw_primitive_end();
draw_set_color(c_black);
//Center Lines
/*
draw_set_colour(c_white);
    draw_line_width(xx,yy,xx+(cos(degtorad(90))*length),yy-(sin(degtorad(90))*length),width/2)
    draw_line_width(xx,yy,xx+(cos(degtorad(180))*length),yy-(sin(degtorad(180))*length),width/2)
    draw_line_width(xx,yy,xx+(cos(degtorad(270))*length),yy-(sin(degtorad(270))*length),width/2)
    draw_line_width(xx,yy,xx+(cos(degtorad(360))*length),yy-(sin(degtorad(360))*length),width/2)
draw_set_color(c_black);*/
//Border
/*draw_set_color(c_lime);
draw_line_width(xx+(cos(degtorad(90))*length),yy-(sin(degtorad(90))*length),xx+(cos(degtorad(180))*length),yy-(sin(degtorad(180))*length),width)
draw_line_width(xx+(cos(degtorad(180))*length),yy-(sin(degtorad(180))*length),xx+(cos(degtorad(270))*length),yy-(sin(degtorad(270))*length),width)
draw_line_width(xx+(cos(degtorad(270))*length),yy-(sin(degtorad(270))*length),xx+(cos(degtorad(360))*length),yy-(sin(degtorad(360))*length),width)
draw_line_width(xx+(cos(degtorad(360))*length),yy-(sin(degtorad(360))*length),xx+(cos(degtorad(90))*length),yy-(sin(degtorad(90))*length),width)
draw_set_color(c_black)*/
//The actual stat portion
draw_primitive_begin(pr_trianglefan);
    draw_vertex_color(xx+(cos(degtorad(90))*((length*.8)*(Genr/top))),yy-(sin(degtorad(90))*((length*.8)*(Genr/top))),c_red,.5);    
    draw_vertex_color(xx+(cos(degtorad(180))*((length*.8)*(Armr/top))),yy-(sin(degtorad(180))*((length*.8)*(Armr/top))),c_red,.5);
    draw_vertex_color(xx+(cos(degtorad(270))*((length*.8)*(Dmag/top))),yy-(sin(degtorad(270))*((length*.8)*(Dmag/top))),c_red,.5);
    draw_vertex_color(xx+(cos(degtorad(360))*((length*.8)*(Stor/top))),yy-(sin(degtorad(360))*((length*.8)*(Stor/top))),c_red,.5);
draw_primitive_end();
//Text
draw_set_font(foMain_MenusS)
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_lime);
    //Stat Names
    draw_text(xx+(cos(degtorad(90))*(length+textadj)),yy-(sin(degtorad(90))*(length+textadj)),"Genr");
    draw_text(xx+(cos(degtorad(180))*(length+textadj)),yy-(sin(degtorad(180))*(length+textadj)),"Armr");
    draw_text(xx+(cos(degtorad(270))*(length+textadj)),yy-(sin(degtorad(270))*(length+textadj)),"Dmag");
    draw_text(xx+(cos(degtorad(360))*(length+textadj)),yy-(sin(degtorad(360))*(length+textadj)),"Stor");
    //Stat Levels
    draw_text(xx+(cos(degtorad(90))*(length+(abs(numadj)-statSubtract))),yy-(sin(degtorad(90))*(length+(abs(numadj)-statSubtract))),string(Genr));
    draw_text(xx+(cos(degtorad(180))*(length+(abs(numadj)-statSubtract))),yy-(sin(degtorad(180))*(length+(abs(numadj)-statSubtract))),string(Armr));
    draw_text(xx+(cos(degtorad(270))*(length+(abs(numadj)-statSubtract))),yy-(sin(degtorad(270))*(length+(abs(numadj)-statSubtract))),string(Dmag));
    draw_text(xx+(cos(degtorad(360))*(length+(abs(numadj)-statSubtract))),yy-(sin(degtorad(360))*(length+(abs(numadj)-statSubtract))),string(Stor));
draw_set_halign(fa_left);
draw_set_valign(fa_top)
draw_set_font(-1);
draw_set_color(c_black);