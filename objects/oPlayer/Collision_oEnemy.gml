with(oGun){
	instance_destroy();
}

instance_change(oPlayerDied, true);

direction = point_direction(other.x, other.y, x, y);
hsp = lengthdir_x(6, direction);
vsp = lengthdir_y(6, direction) -2 ;


if(sign(hsp) != 0){
	// image_xscale = sign(hsp);
}
