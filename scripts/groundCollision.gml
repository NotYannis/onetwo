///groundCollision(hspeed, vspeed)
platform = instance_place(id.x,id.y + id.vsp + 1,obj_platform);

hColl = place_meeting(id.x+id.hsp,id.y,obj_ground01) || place_meeting(obj_yellow.x+id.hsp,obj_yellow.y,obj_ground01);
grounded = (place_meeting(id.x,id.y + id.vsp + 1,obj_ground01)
            || ((place_meeting(id.x,id.y + id.vsp + 1,obj_platform) && id.vsp >=0)
            && (platform != noone  && !place_meeting(id.x + id.hsp, id.y, obj_platform))));

if(place_meeting(obj_yellow.x,obj_yellow.y,obj_ground01)) vsp = 5;

//Collision test for yellow head
// Horizontal
if (hColl){
    id.hsp = 0;
}

// Vertical
if(grounded){
    canDoubleJump = true;
    if(!hColl){ //Shouldn't move vertically only if its grounded
        id.vsp = 0;
    }
}
