///getEnnemySpawnSprite
switch(object_index) {
    case obj_zombie_tentacle :
    case obj_zombie :
    case obj_ennemy_shadow : return 11;
        break;
    case obj_tentacle : return 10;
        break;
    default : return noone;
}
