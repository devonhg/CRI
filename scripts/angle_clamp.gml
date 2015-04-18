/// angle_clamp( angle, arcangle, arcwidth )
// Returns angle clamped within given arc.  Snaps to nearest side on the arc if outside.


var a2,ild,ret;
a2  = argument2 / 2;
ild = ((argument0 - argument1 + 180) mod 360) - 180;

if (ild < -180)
then { ild += 360; }

if      (ild < -a2) { return argument1 - a2;  }
else if (ild >  a2) { return argument1 + a2;  }
else                { return argument1 + ild; }