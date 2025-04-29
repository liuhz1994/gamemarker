x = oPlayer.x + 2;
y = oPlayer.y + 2;

//y = y+2;

image_angle = point_direction(x, y, mouse_x, mouse_y);

firingDelay = firingDelay - 1;
recoil = max(0, recoil-1);

if(mouse_check_button(mb_left) && firingDelay<0){
	firingDelay = 5;
	recoil = 4;
	ScreenShake(1, 30);
	audio_play_sound(snShoot, 2, false);
	// audio_sound_pitch(snShoot, choose(0.8, 1, 1.2));
	
	with(instance_create_layer(x,y,"Bullets",oBullets)) {
		speed = 20;
		direction = other.image_angle + random_range(-3, 3);
		image_angle = direction;
	}
}

x = x - lengthdir_x(recoil, image_angle);
y = y - lengthdir_y(recoil, image_angle);

if(image_angle > 90 && image_angle < 270){
	image_yscale = -1;
} else {
	image_yscale = 1;
}