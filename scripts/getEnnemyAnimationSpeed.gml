///getEnnemyAnimationSpeed : return the animation speed for each ennemy

switch(object_index) {
    case obj_tentacle : return 0.4;
        break;
    case obj_zombie : return 0.5;
        break;
    case obj_ennemy_mimic :
    case obj_ennemy_shadow : return 0.2;
        break;
    default : return 0.1;
}

// Si il y a un ennemi à ajouter, rajouter ligne "case" dans le switch avec le nom de l'objet et la vitesse en return. 
