///phy_calc_speed( val ); 
/*
    This script simply returns the actual speed of a physics object. 
*/

var spdx, spdy;
spdx = sqr(phy_speed_x);
spdy = sqr(phy_speed_y);
return sqrt(spdx * spdy);
