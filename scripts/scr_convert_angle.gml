//scr_convert_angle(value);
/*
    This script converts any number passed to it into an angle-friendly format.
    For instance, no negatives, drops down to 360. 
    
    Best used like this:
    
    angle = scr_convert_angle(angle);
*/

var a = argument[0]; 

while(a < 0) a += 360;
a = a mod 360;

return a; 