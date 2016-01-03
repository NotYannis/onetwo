///getEnnemySprite
switch(object_index) {
    case obj_zombie_tentacle :
    case obj_zombie : return spr_zombie;
        break;
    case obj_zombie_strong : return spr_zombie_strong;
        break;
    case obj_ennemy_shadow : return spr_shadow;
        break;
    case obj_arrow : return spr_arrow;
        break;
    case obj_tentacle : return spr_tentacle;
        break;
    case obj_wizard : return spr_wizard;
    default : return noone;
}
