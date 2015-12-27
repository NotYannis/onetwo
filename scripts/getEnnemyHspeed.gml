///getEnnemyHspeed
switch(object_index) {
    case obj_ennemy1 : return 2;
        break;
    case obj_ennemy_shadow : return - 10;
        break;
    case obj_arrow : return -15;
    default : return 1;
}
