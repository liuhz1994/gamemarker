vsp = vsp + grty;


// horizontal collision
if(place_meeting(x+hsp, y, oWall)){
	// show_debug_message("enemy step meeting")
	while(!place_meeting(x+sign(hsp), y, oWall)) {
		x = x + sign(hsp);
	}
	hsp = -hsp;
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

	
if(hsp != 0){
	sprite_index = sEnemyMove;
} else {
	sprite_index = sEnemyIdle;
}
image_speed = 1;


if(hsp != 0){
	image_xscale = sign(hsp) * size;
	image_yscale = size;
}






