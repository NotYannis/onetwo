///getEnnemyDeathSpriteIndex
switch(object_index) {
    case obj_zombie_tentacle :
    case obj_zombie : return 13;
        break;
    case obj_ennemy_shadow : return 9;
        break;
    case obj_tentacle : return 6;
        break;
    default : return 0;
}
