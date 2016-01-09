if(isSpawning){
    attack = false;
    sprite_index = spawnSprite;
    image_speed = 0.2;
    if (image_index >= sprite_get_number(spawnSprite) - image_speed){
        isSpawning = false;
        attack = true;
        sprite_index = sprite;
        mask_index = sprite;
        image_speed = animationSpeed;
    }
}
if (attack){
    // Se tourne et va vers le joueur.
    if(followPlayer) {
        if(x < obj_character.x - 150 || x > obj_character.x + 150){
            move_towards_point(obj_character.x, obj_character.y, hsp);
            id.image_xscale = behindPlayer();
        }
    }
    else{
        hspeed = hsp;
    }

    // -------- Gravity -------
    //-------------------------
    if(applyGravity){
        if (place_meeting(x, y + 2, obj_ground01)){
            vspeed = 0;
        }
        else{
            vspeed = 5;
        }
        //if it's on the border of precipice, stop moving
        if(place_meeting(x - (10 * behindPlayer()), y + 100, obj_water))
            hspeed = 0;
    }

    //If touched by a bullet
    if(place_meeting(x,y, obj_bullet)){
        bullet = instance_place(x, y, obj_bullet);
        with(bullet) instance_destroy();
        audio_play_sound(snd_ennemy1_hit,10,false)
        invulnerability = 5;
        if(hp > obj_character.gunDamage * gunRes && gunRes != 0){
            sprite_index = hitSprite;
            if(!place_meeting(x + behindPlayer() * 15, y - 1, obj_ground01)){
                x += behindPlayer() * 15;
            }
            y -= 5
        }
        hp -= obj_character.gunDamage * gunRes;
    }
    
    //If touched by the chainsaw
    if(collision_rectangle(obj_character.x + (36 * obj_character.image_xscale),
                           obj_character.y,
                           obj_character.x + (78 * obj_character.image_xscale),
                           obj_character.y + 20,
                           id, true, false)
        && obj_character.strike
        && invulnerability == 0)
    {    
        audio_play_sound(snd_ennemy1_hit,10,false)
        invulnerability = 8;
        if(hp > obj_character.damage){
        sprite_index = hitSprite;
            if(!place_meeting(x + behindPlayer() * 35, y - 1, obj_ground01)){
                x += behindPlayer() * 35;
            }
            y -= 25
        }
        hp -= obj_character.damage;
        hspeed = 0;
    }
    else if(place_meeting(x,y,obj_character) //If hit the character while not attacking
             || place_meeting(x,y,obj_yellow) 
            && (!obj_character.redprotect
                || !collision_rectangle(obj_character.x + (26 * obj_character.image_xscale),
                                        obj_character.y - 81,
                                        obj_character.x + (40 * obj_character.image_xscale),
                                        obj_character.y - 30, id, true, false))){
        obj_character.hit = true;
        obj_character.ennemy = id;
        obj_character.damage = damage;
        obj_character.enemyBehind = behindPlayer();
    }
    
    //Short invulnerability after being striked
    if(invulnerability > 0){
        invulnerability--;
        hspeed = 0;
    }
    else if(object_index != obj_tentacle && object_index != obj_wizard && object_index != obj_flying_eye){
        sprite_index = sprite;
    }
    if (place_meeting(x,y,obj_water)){
        hspeed = 0;
        audio_play_sound(snd_plouf, 10, false);
        instance_destroy();
    }
   if (place_meeting(x,y, obj_magicshield)){
        if(!place_meeting(x + image_xscale * 100,y, obj_ground01)){
            x += image_xscale * 100;
        }
        y -= 20;
    }
    
    if(hp <= 0) {
        death = true;
        attack = false;
        image_index = 0;
    }
}

// Death animation 
if(death){
    sprite_index = deathSprite;
    image_speed = 0.5;
    hspeed = 0;
    if(flying){
        hspeed = 0.5;
        vspeed += 0.5;
        if(image_index == sprite_get_number(deathSprite) - 1){
            image_speed = 0;
        }
        if(place_meeting(x,y, obj_ground01)){
            instance_destroy();
        }
    }
    else if(image_index == sprite_get_number(deathSprite) - image_speed){
        instance_destroy();
    }
}
