#define Aura_Shadow_Caster_Poly_Init
/// Aura_Shadow_Caster_Poly_Init();

// Initialise the shadow caster points variable
// You must then call the sub-script "Aura_Shadow_Caster_Poly_Add_Point"
// to add the points of the poligon in CLOCKWISE order.

aura_shadow_points = 0;


#define Aura_Shadow_Caster_Poly_Add_Point
/// Aura_Shadow_Caster_Poly_Add_Point(x, y);

// Add a point to the shadow caster polygon in CLOCKWISE order
aura_shadow_x[aura_shadow_points] = argument0;
aura_shadow_y[aura_shadow_points] = argument1;

aura_shadow_points++;