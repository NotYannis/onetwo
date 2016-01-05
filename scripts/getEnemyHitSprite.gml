///getEnemyHitSprite

switch(object_index) {
    case obj_zombie_strong : return spr_zombie_strong_hit;
        break;
    case obj_zombie_tentacle :
    case obj_zombie : return spr_zombie_hit;
        break;
    case obj_tentacle : return spr_tentacle_hit;
        break;
    default : return noone;
}
