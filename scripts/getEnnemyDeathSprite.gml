///getEnnemyDeathSprite

switch(object_index) {
    case obj_ennemy1 : return spr_ennemy_death;
        break;
    case obj_ennemy_shadow : return spr_shadow_death;
        break;
    default : return spr_ennemy_death;
}
