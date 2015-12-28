///Glowing(sizeMin, sizeMax, smoothing, centerColour, edgeColour, obj)


//Checks if the light ellipse is at size max or not
if(object_index.glowSize >= argument1) object_index.lightDown = true;
else if(object_index.glowSize <= argument0) object_index.lightDown = false;

//Increment or decrement the ellipse
if(!lightDown) object_index.glowSize += argument2;
else object_index.glowSize -= argument2;

//Draw the ellipse
draw_set_blend_mode(bm_subtract);
surface_set_target(obj_lighting.light);
draw_set_circle_precision(16);
draw_ellipse_colour(x-object_index.glowSize/2-view_xview,y-object_index.glowSize/2-view_yview,x+object_index.glowSize/2-view_xview,y+object_index.glowSize/2-view_yview, argument3, argument4, false);

surface_reset_target();
draw_set_blend_mode(bm_normal);
