///getEnnemyHspeed
switch(object_index) {
    case obj_zombie_tentacle :
    case obj_zombie : return 2;
        break;
    case obj_zombie_strong : return 5;
        break;
    case obj_ennemy_shadow : return - 10;
        break;
    case obj_arrow : return -15;
        break;
    case obj_tentacle : return 0;
        break;
    default : return 1;
}
