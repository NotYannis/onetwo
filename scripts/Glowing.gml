///Glowing(sizeMin, sizeMax, smoothing, centerColour, edgeColour, obj)


//Checks if the light ellipse is at size max or not
if(argument5.glowSize >= argument1) argument5.lightDown = true;
else if(argument5.glowSize <= argument0) argument5.lightDown = false;

//Increment or decrement the ellipse
if(!lightDown) argument5.glowSize += argument2;
else argument5.glowSize -= argument2;

//Draw the ellipse
draw_set_blend_mode(bm_subtract);
surface_set_target(obj_lighting.light);
draw_set_circle_precision(8);
draw_ellipse_colour(x-argument5.glowSize/2-view_xview,y-argument5.glowSize/2-view_yview,x+argument5.glowSize/2-view_xview,y+argument5.glowSize/2-view_yview, argument3, argument4, false);

surface_reset_target();
draw_set_blend_mode(bm_normal);
