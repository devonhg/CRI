///scr_rotate_to(current angle, goal angle, speed);
/*
    This script takes a value and slowly moves rotates it to the desired angle
    at whatever speed is needed. 
    
    Best used in this fashion
    
    value += scr_rotate_to(value, goto, 5);
*/

var angle, goal_angle, spd, dif;

angle = argument[0];
goal_angle = argument[1];
spd = argument[2];

dif = angle_difference(goal_angle, angle);

return median(-spd, dif, spd); 