///activateEnemyTrigger(object to create)

if(id.activation == 0){
    id.activation --;
    if(argument0 == obj_zombie_tentacle) instance = instance_create(x, y - 14, argument0);
    else instance = instance_create(x, y, argument0);
}
else if(id.activation < 0){
    if(!instance_exists(instance)){
        with (id)
            instance_destroy();
            show_debug_message("yo");
    }
}
