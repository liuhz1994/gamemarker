if(mode != TRANS_MODE.OFF)
{
	draw_set_color(c_black);
	draw_rectangle(0,0,w,percent*h_half, false);
	draw_rectangle(0,h,w,h - percent*h_half, false);
}

/*
draw_set_color(c_black);
draw_text(50,100,mode);
draw_text(50,50,string(percent));

*/
