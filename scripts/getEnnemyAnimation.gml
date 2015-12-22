///getEnnemyAnimation : return the animation speed for each ennemy

switch(object_index) {
    case obj_ennemy1 : return 0.5;
        break;
    case obj_ennemy_mimic :
    case obj_ennemy_shadow : return 0.2;
        break;
    default : return 0.1;
}
