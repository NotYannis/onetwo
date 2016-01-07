///activateEnemyTrigger(object to create)

if(id.activation == 0){
    id.activation --;
    instance = instance_create(x, y, argument0);
}
else if(id.activation < 0){
    if(!instance_exists(instance)){
        with (id)
            instance_destroy();
            show_debug_message("yo");
    }
}
