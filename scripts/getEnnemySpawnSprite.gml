///getEnnemySpawnSprite
switch(object_index) {
    case obj_zombie_strong :
    case obj_zombie_tentacle :
    case obj_zombie : return spr_zombie_spawn;
        break;
    case obj_ennemy_shadow : return spr_shadow_spawn;
        break;
    case obj_tentacle : return spr_tentacle_spawn;
        break;
    default : return noone;
}
