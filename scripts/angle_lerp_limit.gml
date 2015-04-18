/// angle_lerp_limit( a, b, amount, limit )
// Return a turned toward b by amount 0-1.  Turn is limited to limit degrees.


return argument0 + median( (argument2 * (((((argument1 - argument0) mod 360) + 540) mod 360) - 180)), -argument3, argument3 );
