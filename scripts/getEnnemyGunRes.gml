///getEnnemyGunRes
//The less the number is, the less the enemy will take dmg
//1 = normal dmg, 0.5 = half dmg, ...
switch(object_index) {
    case obj_zombie_tentacle :
    case obj_zombie :
    case obj_ennemy_shadow :
    case obj_zombie_strong : return 0.5;
    case obj_tentacle : return 0;
    default : return 10;
}
