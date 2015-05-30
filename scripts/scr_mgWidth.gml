///scr_mgWidth( GridPosition )
/*
    This scripts retreives the value of the menu grid at value. Note that this script
    requres the global.mg_* values! 
*/

var GridPosition;

GridPosition = argument[0]; 

return view_xview + GridPosition*global.mg_width; 
