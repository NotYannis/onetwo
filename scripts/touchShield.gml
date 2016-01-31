///touchShield : return true if the calling object touches the red shield 
return collision_rectangle(obj_character.x + (26 * obj_character.image_xscale),
                                  obj_character.y - 73,
                                  obj_character.x + (40 * obj_character.image_xscale),
                                  obj_character.y - 30, id, true, false);
