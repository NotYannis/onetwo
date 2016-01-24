///getEnemyStat(0 = Horizontal speed, 1 = hp, 2 = gun resistance, 3 = damage)
//Lesser gun resistance = lesser gun damage. 1 = normal, 0.5 = half...
switch(object_index) {
    case obj_zombie :
    case obj_zombie_tentacle :
        stat[0] = 2; stat[1] = 20; stat[2] = 0.5; stat[3] = 10;
            break;
    case obj_zombie_strong :
        stat[0] = 4; stat[1] = 50; stat[2] = 0.5; stat[3] = 20;
            break;
    case obj_tentacle :
        stat[0] = 0; stat[1] = 20; stat[2] = 0; stat[3] = 10;
            break;
    case obj_ennemy_shadow :
        stat[0] = -10; stat[1] = 10; stat[2] = 0.5; stat[3] = 100;
            break;
    case obj_wizard :
        stat[0] = 0; stat[1] = 10; stat[2] = 1; stat[3] = 30;
            break;
    //Flying ennemies
    case obj_flying_eye :
        stat[0] = -10; stat[1] = 30; stat[2] = 1; stat[3] = 10;
            break;
    case obj_imp :
        stat[0] = -8; stat[1] = 10; stat[2] = 1; stat[3] = 20;
            break;
    //Projectiles
    case obj_boss_orb :
        stat[0] = 15; stat[1] = 0; stat[2] = 0; stat[3] = 10; stat[4] = 0;
            break;
    case obj_orb :
        stat[0] = 10; stat[1] = 0; stat[2] = 0; stat[3] = 10; stat[4] = 0;
            break;
    case obj_arrow :
        stat[0] = -10; stat[1] = 0; stat[2] = 0; stat[3] = 10; stat[4] = 0;
            break;
    case obj_tear :
        stat[0] = 0.3; stat[1] = 0; stat[2] = 0; stat[3] = 20; stat[4] = 7;
            break;
    case obj_boss_ball :
        stat[0] = 0; stat[1] = 0; stat[2] = 0; stat[3] = 10; stat[4] = 10;
            break;
    default : return noone;
}

return stat;
