/*
Use this script to add a tooltip to a button. There must be a new entry made for each button,
and put in the draw event of the appropiate control object that manages the button.

Usage:tooltipButton(ButtonName,"Tooltip",colorBack,font,fontColor)
*/

btnName = argument0;
toolTip = argument1; 
colorBack = argument2;
font = argument3;
fontColor = argument4;

adj = 30;

//button = getButtonid(btnName)

if position_meeting(mouse_x,mouse_y,button)
    {  
        draw_line_colour(mouse_x,mouse_y,mouse_x+adj,mouse_y+adj,colorBack,colorBack)
        draw_rectangle_colour(mouse_x+adj,mouse_y+adj,mouse_x+string_width(toolTip)+adj+(string_width(toolTip)/4),mouse_y+string_height(toolTip)+adj+(string_height(toolTip)/4),colorBack,colorBack,colorBack,colorBack,0)
        draw_text_colour(mouse_x+adj+(string_width(toolTip)/8), mouse_y+adj+(string_height(toolTip)/8), toolTip, fontColor, fontColor, fontColor, fontColor, 1);
    }