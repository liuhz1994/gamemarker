cam = view_camera[0];
follow = oPlayer;
camera_view_width_half = camera_get_view_width(cam) * 0.5;
camera_view_height_half = camera_get_view_height(cam) * 0.5;
xTo = xstart;
yTo = ystart;

// shake params
shake_magnitude = 0;
shake_remain = 0;
shake_time = 0;
buff = 36;