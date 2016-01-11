///groundCollision(hspeed, vspeed)
platform = instance_place(id.x,id.y + id.vsp + 1,obj_platform)

hColl = place_meeting(id.x+id.hsp,id.y,obj_ground01) ;
grounded = place_meeting(id.x,id.y + id.vsp + 1,obj_ground01)
         || ((place_meeting(id.x,id.y+ id.vsp + 1,obj_platform) && id.vsp >=0)
                && (platform != noone  && !place_meeting(id.x + id.hsp, id.y, obj_platform)));
// Horizontal
if (hColl) {
    if(!place_meeting(id.x+sign(id.hsp),id.y,obj_ground01)){
        id.x += sign(id.hsp);
    }
    id.hsp = 0;
}

// Vertical
if(grounded){
    canDoubleJump = true;
    if(!hColl){ //Shouldn't move vertically only if its grounded
        id.vsp = 0;
    }
}
