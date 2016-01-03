///getEnnemyHp
switch(object_index) {
    case obj_tentacle :
    case obj_zombie_tentacle :
    case obj_zombie : return 1;
        break;
    case obj_ennemy_shadow : return 10;
        break;
    case obj_zombie_strong : return 50;
    default : return 10;
}
