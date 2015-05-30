/*
    This script tests the grid created for menus by drawing horizontal lines
    to represent the grid. Must be put in the draw event! 
*/

//Horizontal Lines
    for(i=0; i*24 < view_wview; i++){
        draw_line(scr_mgWidth(i), view_yview, scr_mgWidth(i), view_yview + view_hview)  
    }
    
//Vertical Lines
    for(i=0; i*24 < view_wview; i++){
        draw_line(view_xview , scr_mgHeight(i), view_xview + view_wview, scr_mgHeight(i));  
    }
