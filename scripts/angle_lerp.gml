/// angle_lerp( a, b, amount )
// Return a turned toward b by amount 0-1.


return (argument0 + ((((((argument1 - argument0) mod 360) + 540) mod 360) - 180)*argument2));
