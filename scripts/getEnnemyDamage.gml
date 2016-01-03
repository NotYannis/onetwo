///getEnnemyDamage
switch(object_index) {
    case obj_orb :
    case obj_zombie_tentacle :
    case obj_arrow :
    case obj_tentacle :
    case obj_zombie : return 10;
        break;
    case obj_ennemy_shadow : return 100;
        break;
    case obj_wizard :
    case obj_zombie_strong : return 50;
    default : return 10;
}
