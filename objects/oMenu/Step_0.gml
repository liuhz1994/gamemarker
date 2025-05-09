// Item ease in 
menu_x += (menu_x_target - menu_x) / menu_speed;

// Keyboard Controls
if(menu_control)
{
	if(keyboard_check_pressed(vk_up)){
		menu_cursor++;
		if(menu_cursor >= menu_items) menu_cursor = 0;
	}
	
	if(keyboard_check_pressed(vk_down)){
		menu_cursor--;
		if(menu_cursor < 0) menu_cursor = menu_items -1;
	}
	
	if(keyboard_check_pressed(vk_enter)) {
		menu_x_target = gui_width + 200;
		menu_committed = menu_cursor;
		ScreenShake(4, 30);
		menu_control = false;
	}
}

if(menu_x > gui_width+150 && menu_committed != -1) 
{
	
	var next_room = room_next(room);
	
	switch(menu_committed)
	{
		case 2: default: SlideTransition(TRANS_MODE.GOTO, Room1); break;
		case 1: {
			if(!file_exists(SAVE_FILE))
			{
				SlideTransition(TRANS_MODE.GOTO, Room1);
			} else {
				
				var file = file_text_open_read(SAVE_FILE);
				var target = file_text_read_real(file);
				file_text_close(file);
				SlideTransition(TRANS_MODE.GOTO, target);
			}
			
			break;
		}
		case 0: game_end(); break;
	}
}