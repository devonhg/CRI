///scr_within_angle_range(baseAngle, value, range)
/*
    This scripts returns true or false on whether the given
    value is within the range of the base angle. 
*/

var baseAngle, value, range, a

baseAngle = argument[0]; 
value = argument[1]; 
range = argument[2]; 

a = angle_difference(baseAngle, value); 

if a < range and a > -range return true;
else return false; 
