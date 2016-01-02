///getEnnemyDeathSprite

switch(object_index) {
    case obj_zombie_tentacle :
    case obj_zombie : return spr_zombie_death;
        break;
    case obj_ennemy_shadow : return spr_shadow_death;
        break;
    case obj_tentacle : return spr_tentacle_death;
        break;
    default : return noone;
}
