///getEnemySound(0 = spawnSound, 1 = attackingSound, 2 = touchPlayerSound, 3 = hitedSound, 4 = deathSound)
//Return an array with all the sounds of the enemy type calling the script

switch(object_index) {
    case obj_zombie :
    case obj_zombie_tentacle :
        sound[0] = noone; sound[1] = noone; sound[2] = snd_hit;
        sound[3] = snd_hit; sound[4] = noone;
            break;
    case obj_zombie_strong : 
        sound[0] = noone; sound[1] = noone; sound[2] = snd_hit;
        sound[3] = snd_hit; sound[4] = noone;
            break;
    case obj_ennemy_shadow : 
        sound[0] = snd_shadowcry; sound[1] = snd_shadowteeth; sound[2] = snd_hit;
        sound[3] = snd_hit; sound[4] = noone;
            break;
    case obj_tentacle :
        sound[0] = noone; sound[1] = noone; sound[2] = snd_hit;
        sound[3] = snd_hit; sound[4] = noone;
            break;
    case obj_wizard :
        sound[0] = noone; sound[1] = noone; sound[2] = snd_hit;
        sound[3] = snd_hit; sound[4] = noone;
            break;
    case obj_flying_eye :
        sound[0] = noone; sound[1] = noone; sound[2] = snd_hit;
        sound[3] = snd_hit; sound[4] = noone;
            break;
    default : return noone;
}
return sound;
