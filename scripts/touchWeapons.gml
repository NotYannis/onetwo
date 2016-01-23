///TouchWeapon : return true if the calling object touch the chainsaw
return collision_rectangle(obj_character.x + (36 * obj_character.image_xscale),
                                    obj_character.y,
                                    obj_character.x + (78 * obj_character.image_xscale),
                                    obj_character.y + 20,
                                    id, true, false);
