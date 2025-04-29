if(instance_exists(follow)){
	xTo = follow.x;
	yTo = follow.y;
	
	if((follow).object_index == oPlayerDied)
	{
		x = xTo;
		y = yTo;
	}
}



x += (xTo - x) / 25;
y += (yTo - y) / 25;

x = clamp(x, camera_view_width_half, room_width-camera_view_width_half);
y = clamp(y, camera_view_height_half, room_height-camera_view_height_half);


// shake
x += random_range(-shake_remain, shake_remain);
y += random_range(-shake_remain, shake_remain);
shake_remain = max(0, shake_remain - (1/shake_time) * shake_magnitude);

camera_set_view_pos(cam, x-camera_view_width_half, y-camera_view_height_half);

if(layer_exists("BG_Mountain")) 
{
	layer_x("BG_Mountain", x*0.5)
}

if(layer_exists("BG_Tree")) 
{
	layer_x("BG_Tree", x*0.25)
}

