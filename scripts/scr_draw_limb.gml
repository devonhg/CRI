///scr_draw_limb(location angle, location distance, limb angle, sprite, sprite_index, xscale, yscale)
/*
    Use in the draw event!
    
    This script is the core behind the ragdoll system. It accepts multiple arguments
    for setting exactly what to draw. 
*/

var loc_angl, loc_dist, lim_angl, spr, spr_in, ap_xx, ap_yy, ang_di, xsca, ysca;

loc_angle = argument[0];
loc_dist = argument[1];
lim_angl = argument[2]; 
spr = argument[3];
spr_in = argument[4]; 
xsca = argument[5];
ysca = argument[6]; 

ap_xx = phy_position_x + lengthdir_x(loc_dist, image_angle + loc_angle);
ap_yy = phy_position_y + lengthdir_y(loc_dist, image_angle + loc_angle);
//ang_di = angle_difference(lim_angl, 30);

draw_sprite_ext(spr, spr_in, ap_xx, ap_yy, xsca, ysca, lim_angl, c_white, 1);