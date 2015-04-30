///scr_set_gravity( Direction )
/*
    This script accepts a direction between 0 and 360 and applies gravity in that direciton
    Physics based. 
*/

var dir, dirx, diry, force;

dir = scr_convert_angle(argument[0]);
force = argument[1];

dirx = lengthdir_x( force, dir );
diry = lengthdir_y( force, dir );

//if !place_meeting(dirx, diry, par_physics ){
    physics_apply_force( x, y, dirx, diry ); 
//}
