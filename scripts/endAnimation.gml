///endAnimation : test if the current sprite is on its last step
if(id.image_index >= sprite_get_number(id.sprite_index) - id.image_speed){
    return true;
}
else{
    return false;
}
