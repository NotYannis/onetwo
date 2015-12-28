///Glowing(sizeMin, sizeMax, smoothing, centerColour, edgeColour, obj)


//Checks if the light ellipse is at size max or not
if(id.glowSize >= argument1) id.lightDown = true;
else if(id.glowSize <= argument0) id.lightDown = false;

//Increment or decrement the ellipse
if(!lightDown) id.glowSize += argument2;
else id.glowSize -= argument2;

//Draw the ellipse
draw_set_blend_mode(bm_subtract);
surface_set_target(obj_lighting.light);
draw_set_circle_precision(16);
draw_ellipse_colour(x-id.glowSize/2-view_xview,
                    y-id.glowSize/2-view_yview,
                    x+id.glowSize/2-view_xview,
                    y+id.glowSize/2-view_yview, argument3, argument4, false);

surface_reset_target();
draw_set_blend_mode(bm_normal);
