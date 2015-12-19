///Lighting(size, centerColour, edgeColour)

var size = argument0;

draw_set_blend_mode(bm_subtract);
surface_set_target(obj_lighting.light);
draw_ellipse_colour(x-size/2-view_xview,y-size/2-view_yview,x+size/2-view_xview,y+size/2-view_yview, argument1, argument2, false);

surface_reset_target();
draw_set_blend_mode(bm_normal);
