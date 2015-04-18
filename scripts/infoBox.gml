/*
This script draws a box then when hovering over certain buttons it will display the 
specified information. Put in draw event!

Usage infoBox(x1,y1,x2,y2,Default Text,displayBorder)

Note, display border is for testing purposes, generally set to 0. You must also
add conditions using infoBoxAdd, which adds button and text in the form of a 2d array.
It can handle up to 50 buttons
*/


var x1,y1,x2,y2,text,btnName,dspBorder;
x1 = argument0;
y1 = argument1;
x2 = argument2;
y2 = argument3;
text = argument4;
dspBorder = argument5;


//draw_rectangle(x1,y1,x2,y2,1)
drawRectangle(x1,y1,x2,y2,1);

if position_meeting(mouse_x,mouse_y,oButton) 
    {
        btnName = instance_position(mouse_x,mouse_y,oButton);
        for(i=0;i<50;i+=1)
            {
                if infoBoxArr[i,1] = btnName.buttonName
                    {
                        text = infoBoxArr[i,2];
                        break;
                    }
            }
    }

//draw_set_font(foMain_Menus);
draw_text_ext(x1+5, y1+5, text, 15, abs(x1-x2)-(abs(x1-x2)/20));
//draw_set_font(-1);