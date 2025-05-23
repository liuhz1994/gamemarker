
key_left = 0;
key_right = 0;
key_jump = 0;

// get player input
if(hasControl){
	key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
	key_right = keyboard_check(vk_right)|| keyboard_check(ord("D"));
	key_jump = keyboard_check_pressed(vk_space) || keyboard_check(ord("W"));
}


// calculate movement
var move = key_right - key_left;
hsp = move * wallSpeed;

vsp = vsp + grty;

if(place_meeting(x, y+1, oWall) && key_jump) {
	vsp = -8;
}

// horizontal collision
if(place_meeting(x+hsp, y, oWall)){
	while(!place_meeting(x+sign(hsp), y, oWall)) {
		x = x + sign(hsp);
	}
	hsp = 0;
}

// vertical collision
if(place_meeting(x, y+vsp, oWall)){
	while(!place_meeting(x, y+sign(vsp), oWall)){
		y = y + sign(vsp);
	}
	vsp = 0;
}
	

x = x + hsp;

y = y + vsp;

// Animation

var isPlayerOnWall = place_meeting(x, y+1, oWall);


if(!isPlayerOnWall){
	sprite_index = sPlayerAir;
	image_speed = 0;
	if(sign(vsp) > 0){
		image_index = 1;
	} else {
		image_index = 0;
	}
} else {
	
	if(hsp != 0){
		sprite_index = sPlayerMove;
	} else {
		sprite_index = sPlayerIdle;
	}
	image_speed = 1;
}

if(hsp != 0){
	image_xscale = sign(hsp);
}




