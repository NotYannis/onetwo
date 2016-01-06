///getEnemyAnim(0 = AnimationSpeed, 1 = spawn sprite, 2 = sprite, 3 = hit sprite, 4 = death sprite
switch(object_index) {
    case obj_zombie :
    case obj_zombie_tentacle :
        anim[0] = 0.5; anim[1] = spr_zombie_spawn; anim[2] = spr_zombie;
        anim[3] = spr_zombie_hit; anim[4] = spr_zombie_death;
            break;
    case obj_zombie_strong : 
        anim[0] = 0.3; anim[1] = spr_zombie_spawn; anim[2] = spr_zombie_strong;
        anim[3] = spr_zombie_strong_hit; anim[4] = spr_zombie_death;
            break;
    case obj_ennemy_shadow : 
        anim[0] = 0.2; anim[1] = spr_shadow_spawn; anim[2] = spr_shadow;
        anim[3] = spr_shadow_hit; anim[4] = spr_shadow_death;
            break;
    case obj_tentacle :
        anim[0] = 0.4; anim[1] = spr_tentacle_spawn; anim[2] = spr_tentacle;
        anim[3] = spr_tentacle_hit; anim[4] = spr_tentacle_death;
            break;
    case obj_wizard :
        anim[0] = 0.2; anim[1] = spr_wizard_spawn; anim[2] = spr_wizard;
        anim[3] = spr_wizard; anim[4] = spr_wizard_death;
            break;
    case obj_flying_eye :
        anim[0] = 0.5; anim[1] = spr_flying_eye; anim[2] = spr_flying_eye;
        anim[3] = spr_flying_eye; anim[4] = spr_flying_eye_death;
            break;
    default : return noone;
}
return anim;
