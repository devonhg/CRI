///scr_phy_followObject(object, speed, drag speed);
/*
    This script makes the calling object follow the specificed instance at
    max set speed. 
*/

var s_obj, s_spd, s_col, s_dist, s_drag;

s_obj = argument[0];
s_spd = argument[1]; 
s_drag = argument[2];

s_dist = 10;

s_col = place_meeting(x+s_dist,y,s_obj) or 
        place_meeting(x-s_dist,y,s_obj) or
        place_meeting(x,y+s_dist,s_obj) or
        place_meeting(x,y-s_dist,s_obj);

if instance_exists(s_obj){
    if phy_speed_x > s_spd phy_speed_x = speed; 
    if phy_speed_y > s_spd phy_speed_y = speed; 

    if !s_col{
        if s_obj.x > x physics_apply_impulse(x,y,s_drag,0);
        else physics_apply_impulse(x,y,-s_drag,0);
        
        if s_obj.y > y physics_apply_impulse(x,y,0,s_drag);
        else physics_apply_impulse(x,y,0,-s_drag);
    }
    
}