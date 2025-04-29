hsp = 0;
vsp = 0;
grty = 0.4;
isDead = 0;


image_speed = 0;

ScreenShake(6, 60);
audio_play_sound(snPlayerDied, 6, false);
game_set_speed(45, gamespeed_fps);

with(oCamera) oCamera.follow = other.id;