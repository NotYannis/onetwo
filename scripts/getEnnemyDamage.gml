///getEnnemyDamage
switch(object_index) {
    case obj_zombie_tentacle :
    case obj_arrow :
    case obj_tentacle :
    case obj_zombie : return 10;
        break;
    case obj_ennemy_shadow : return 100;
        break;
    default : return 100;
}
